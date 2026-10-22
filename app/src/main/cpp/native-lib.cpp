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
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

// Read memory via process_vm_readv
static bool readMemory(pid_t pid, uint64_t addr, void* buffer, size_t size) {
    struct iovec local[1];
    struct iovec remote[1];
    local[0].iov_base = buffer;
    local[0].iov_len = size;
    remote[0].iov_base = (void*)addr;
    remote[0].iov_len = size;
    ssize_t result = process_vm_readv(pid, local, 1, remote, 1, 0);
    return result == (ssize_t)size;
}

// Write memory via process_vm_writev
static bool writeMemory(pid_t pid, uint64_t addr, const void* buffer, size_t size) {
    struct iove std::stoull(addrStr, nullptr, 16);
                break;
            }
        }
    }

    env->ReleaseStringUTFChars(libName, lib);
    LOGI("findBase: lib=%s base=0x%lx", lib, (long)baseAddr);
    return baseAddr;
}

// Scan for byte pattern (supports XX wildcard)
extern "C" JNIEXPORT jlongArray JNICALL
Java_com_ff_modmenu_service_SuService_nativeScanPattern(JNIEnv* env, jobject, jint pid,
        jlong startAddr, jlong endAddr, jstring jPattern) {
    const char* pattern = env->GetStringUTFChars(jPattern, nullptr);

    // Parse pattern: "FF 44 XX 00" -> bytes + mask
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
    size_t patternLen = bytes.size();
    size_t chunkSize = 4096;
    uint8_t buffer[4096];

    for (uint64_t addr = startAddr; addr < endAddr; addr += chunkSize) {
        size_t readLen = std::min(chunkSize, (size_t)(endAddr - addr));
        if (!readMemory(pid, addr, buffer, readLen)) continue;

        for (size_t i = 0; i <= readLen - patternLen; i++) {
            bool found = true;
            for (size_t j = 0; j < patternLen; j++) {
                if (mask[j] && buffer[i + j] != bytes[j]) {
                    found = false;
                    break;
                }
            }
            if (found) {
                results.push_back(addr + i);
                if (results.size() >= 200) break;
            }
        }
        if (results.size() >= 200) break;
    }

    LOGI("scanPattern: found %zu results", results.size());
    jlongArray jResults = env->NewLongArray(results.size());
    if (!results.empty()) {
        env->SetLongArrayRegion(jResults, 0, results.size(), results.data());
    }
    return jResults;
}

// Read raw bytes
extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_ff_modmenu_service_SuService_nativeReadBytes(JNIEnv* env, jobject, jint pid, jlong addr, jint size) {
    std::vector<uint8_t> buffer(size);
    if (!readMemory(pid, (uint64_t)addr, buffer.data(), size)) return nullptr;
    jbyteArray result = env->NewByteArray(size);
    env->SetByteArrayRegion(result, 0, size, (jbyte*)buffer.data());
    return result;
}

// Write raw bytes
extern "C" JNIEXPORT jboolean JNICALL
Java_com_ff_modmenu_service_SuService_nativeWriteBytes(JNIEnv* env, jobject, jint pid, jlong addr, jbyteArray data) {
    jsize len = env->GetArrayLength(data);
    jbyte* bytes = env->GetByteArrayElements(data, nullptr);
    bool ok = writeMemory(pid, (uint64_t)addr, bytes, len);
    env->ReleaseByteArrayElements(data, bytes, JNI_ABORT);
    return ok;
}

// Poke 4 bytes
extern "C" JNIEXPORT jboolean JNICALL
Java_com_ff_modmenu_service_SuService_nativePoke(JNIEnv* env, jobject, jint pid, jlong addr, jint value) {
    return writeMemory(pid, (uint64_t)addr, &value, 4);
}

// Peek 4 bytes
extern "C" JNIEXPORT jint JNICALL
Java_com_ff_modmenu_service_SuService_nativePeek(JNIEnv* env, jobject, jint pid, jlong addr) {
    int value = 0;
    readMemory(pid, (uint64_t)addr, &value, 4);
    return value;
}
