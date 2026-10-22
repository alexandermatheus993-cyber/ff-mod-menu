package com.ff.modmenu;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import rikka.shizuku.Shizuku;

public class SuService extends ISuService.Stub {

    private static final String TAG = "FFModMenu";

    private Process newProcess(String[] cmd) throws Exception {
        Method m = Shizuku.class.getDeclaredMethod("newProcess", String[].class, String[].class, String.class);
        m.setAccessible(true);
        return (Process) m.invoke(null, (Object) cmd, null, null);
    }

    @Override
    public String execCommand(String cmd) {
        try {
            Log.d(TAG, "execCommand: " + cmd);
            Process p = newProcess(new String[]{"sh"});
            OutputStream os = p.getOutputStream();
            InputStream is = p.getInputStream();
            os.write((cmd + "\n").getBytes());
            os.flush();
            os.write("exit\n".getBytes());
            os.flush();
            StringBuilder sb = new StringBuilder();
            byte[] buf = new byte[8192];
            int n;
            while ((n = is.read(buf)) != -1) {
                sb.append(new String(buf, 0, n));
            }
            p.waitFor();
            String result = sb.toString().trim();
            Log.d(TAG, "execCommand result length: " + result.length());
            return result;
        } catch (Exception e) {
            Log.e(TAG, "execCommand error", e);
        }
        return "";
    }

    @Override
    public int findPid(String packageName) {
        try {
            String result = execCommand("pidof " + packageName);
            Log.d(TAG, "findPid result: " + result);
            if (result != null && !result.isEmpty()) {
                String[] parts = result.split("\\s+");
                return Integer.parseInt(parts[0].trim());
            }
        } catch (Exception e) {
            Log.e(TAG, "findPid error", e);
        }
        return -1;
    }

    @Override
    public boolean writeMemory(int pid, long address, byte[] data) {
        try {
            if (data == null || data.length == 0 || pid <= 0) return false;
            Process p = newProcess(new String[]{"sh"});
            OutputStream os = p.getOutputStream();
            InputStream is = p.getInputStream();
            StringBuilder hex = new StringBuilder();
            for (byte b : data) {
                hex.append(String.format("\\x%02x", b & 0xFF));
            }
            String cmd = String.format(
                "printf '%s' | dd of=/proc/%d/mem bs=1 seek=%d count=%d 2>/dev/null; echo EXIT:$?\n",
                hex.toString(), pid, address, data.length);
            os.write(cmd.getBytes());
            os.flush();
            os.write("exit\n".getBytes());
            os.flush();
            byte[] buf = new byte[256];
            int n = is.read(buf);
            p.waitFor();
            if (n > 0) {
                String result = new String(buf, 0, n);
                Log.d(TAG, "writeMemory: " + result);
                return result.contains("EXIT:0");
            }
        } catch (Exception e) {
            Log.e(TAG, "writeMemory error", e);
        }
        return false;
    }

    @Override
    public byte[] readMemory(int pid, long address, int size) {
        try {
            if (size <= 0 || pid <= 0) return null;
            Process p = newProcess(new String[]{"sh"});
            OutputStream os = p.getOutputStream();
            InputStream is = p.getInputStream();
            String cmd = String.format(
                "dd if=/proc/%d/mem bs=1 skip=%d count=%d 2>/dev/null\n",
                pid, address, size);
            os.write(cmd.getBytes());
            os.flush();
            os.write("exit\n".getBytes());
            os.flush();
            byte[] result = new byte[size];
            int totalRead = 0;
            while (totalRead < size) {
                int n = is.read(result, totalRead, size - totalRead);
                if (n == -1) break;
                totalRead += n;
            }
            p.waitFor();
            Log.d(TAG, String.format("readMemory pid=%d addr=0x%X size=%d read=%d",
                pid, address, size, totalRead));
            if (totalRead == size) return result;
        } catch (Exception e) {
            Log.e(TAG, "readMemory error", e);
        }
        return null;
    }

    @Override
    public void closeSu() {
        Log.d(TAG, "closeSu called");
    }
}
