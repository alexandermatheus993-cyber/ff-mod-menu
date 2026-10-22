package com.ff.modmenu;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import rikka.shizuku.Shizuku;

public class SuService extends ISuService.Stub {

    private static final String TAG = "FFModMenu";

    private String execCmd(String... cmd) {
        try {
            Process p = Shizuku.newProcess(cmd, null, null);
            InputStream is = p.getInputStream();
            byte[] buf = new byte[4096];
            int totalRead = 0;
            while (totalRead < buf.length) {
                int n = is.read(buf, totalRead, buf.length - totalRead);
                if (n == -1) break;
                totalRead += n;
            }
            p.waitFor();
            if (totalRead > 0) return new String(buf, 0, totalRead).trim();
        } catch (Exception e) {
            Log.e(TAG, "execCmd error: " + e.getMessage());
        }
        return "";
    }

    @Override
    public int findPid(String packageName) {
        try {
            String result = execCmd("pidof", packageName);
            Log.d(TAG, "findPid result: " + result);
            if (!result.isEmpty()) {
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

            Process p = Shizuku.newProcess(new String[]{"sh"}, null, null);
            OutputStream os = p.getOutputStream();
            InputStream is = p.getInputStream();

            // Build hex escape string for printf
            StringBuilder hex = new StringBuilder();
            for (byte b : data) {
                hex.append(String.format("\\x%02x", b & 0xFF));
            }

            // Use printf + dd to write to /proc/pid/mem
            String cmd = String.format(
                "printf '%s' | dd of=/proc/%d/mem bs=1 seek=%d count=%d 2>/dev/null\n",
                hex.toString(), pid, address, data.length);

            os.write(cmd.getBytes());
            os.flush();
            os.write("echo EXIT_CODE:$?\n".getBytes());
            os.flush();
            os.write("exit\n".getBytes());
            os.flush();

            byte[] buf = new byte[256];
            int n = is.read(buf);
            p.waitFor();

            if (n > 0) {
                String result = new String(buf, 0, n);
                Log.d(TAG, "writeMemory result: " + result);
                return result.contains("EXIT_CODE:0");
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

            Process p = Shizuku.newProcess(new String[]{"sh"}, null, null);
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
