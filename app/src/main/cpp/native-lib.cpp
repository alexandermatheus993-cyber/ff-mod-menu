#include <jni.h>
#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include <cstring>
#include <dirent.h>
#include <sys/uio.h>
#include <android/log.h>

#define LOG_TAG "FFMod"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)

static bool readMemory(pid_t pid, uint64_t addr, void* buffer, size_t size) {
    struct iovec local[1];
    struct iovec remote[1];
    local[0].iov_base = buffer;
    local[0].iov_len = size;
    remote[0].iov_base = (void*)addr;
    remote[0].iov_len = size;
    return process_vm_readv(pid, local, 1, remote, 1, 0) == (ssize_t)size;
}

static bool writeMemory(pid_t pid, uint64_t addr, const void* buffer, size_t size) {
    struct iovec local[1];
    struct iovec remote[1];
    local[0].iov_base = (void*)buffer;
    local[0].iov_len = size;
    remote[0].iov_base = (void*)addr;
    remote[0].iov_len = size;
    return process_vm_writev(pid, local, 1, remote, 1, 0) == (ssize_t)size;
}

extern "C" JNIEXPORT jlong JNICALL
Java_com_ff_modmenu_service_SuService_nativeFindBase(JNIEnv* env, jobject thiz, jint pid, jstring libName) {
    const char* lib = env->GetStringUTFChars(libName, nullptr);
    std::string path = "/proc/" + std::to_string(pid) + "/maps";
    std::ifstream maps(path);
    std::string line;
    jlong result = -1;

    while (std::getline(maps, line)) {
        if (line.find(lib) != std::string::npos) {
            auto dash = line.find('-');
            if (dash != std::string::npos) {
                std::string addr = line.substr(0, dash);
                result = (jlong)std::stoull(addr, nullptr, 16);
                break;
            }
        }
    }

    env->ReleaseStringUTFChars(libName, lib);
    LOGI("findBase pid=%d lib=%s base=0x%lx", pid, lib, (long)result);
    return result;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_ff_modmenu_service_SuService_nativeScanPattern(JNIEnv* env, jobject thiz, jint pid,
        jlong startAddr, jlong endAddr, jstring jPattern) {
    const char* pattern = env->GetStringUTFChars(jPattern, nullptr);
    std::vector<uint8_t> bytes;
    std::vector<bool> mask;
    std::istringstream iss(pattern);
    std::string token;

    while (iss >> token) {
        if (token == "XX" || token == "??") {
            bytes.push_back(0);
            mask.push_back(false);
        } else {
            bytes.push_back((uint8_t)std::stoul(token, nullptr, 16));
            mask.push_back(true);
        }
    }

    env->ReleaseStringUTFChars(jPattern, pattern);

    std::vector<jlong> results;
    size_t len = bytes.size();
    uint8_t buf[4096];

    for (uint64_t addr = (uint64_t)startAddr; addr < (uint64_t)endAddr; addr += 4096) {
        size_t toRead = (size_t)(std::min((uint64_t)4096, (uint64_t)endAddr - addr));
        if (!readMemory(pid, addr, buf, toRead)) continue;

        for (size_t i = 0; i + len <= toRead; i++) {
            bool found = true;
            for (size_t j = 0; j < len; j++) {
                if (mask[j] && buf[i + j] != bytes[j]) {
                    found = false;
                    break;
                }
            }
            if (found) {
                results.push_back((jlong)(addr + i));
                if (results.size() >= 200) break;
            }
        }
        if (results.size() >= 200) break;
    }

    LOGI("scanPattern found %d results", (int)results.size());
    jlongArray arr = env->NewLongArray((jsize)results.size());
    if (!results.empty()) {
        env->SetLongArrayRegion(arr, 0, (jsize)results.size(), results.data());
    }
    return arr;
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_ff_modmenu_service_SuService_nativeReadBytes(JNIEnv* env, jobject thiz, jint pid, jlong addr, jint size) {
    std::vector<uint8_t> buf(size);
    if (!readMemory(pid, (uint64_t)addr, buf.data(), size)) return nullptr;
    jbyteArray arr = env->NewByteArray(size);
    env->SetByteArrayRegion(arr, 0, size, (jbyte*)buf.data());
    return arr;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_ff_modmenu_service_SuService_nativeWriteBytes(JNIEnv* env, jobject thiz, jint pid, jlong addr, jbyteArray data) {
    jsize len = env->GetArrayLength(data);
    jbyte* bytes = env->GetByteArrayElements(data, nullptr);
    bool ok = writeMemory(pid, (uint64_t)addr, bytes, len);
    env->ReleaseByteArrayElements(data, bytes, JNI_ABORT);
    return ok;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_ff_modmenu_service_SuService_nativePoke(JNIEnv* env, jobject thiz, jint pid, jlong addr, jint value) {
    int v = value;
    return writeMemory(pid, (uint64_t)addr, &v, 4);
}

extern "C" JNIEXPORT jint JNICALL
Java_com_ff_modmenu_service_SuService_nativePeek(JNIEnv* env, jobject thiz, jint pid, jlong addr) {
    int v = 0;
    readMemory(pid, (uint64_t)addr, &v, 4);
    return v;
}
