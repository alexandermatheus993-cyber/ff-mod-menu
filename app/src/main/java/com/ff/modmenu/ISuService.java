package com.ff.modmenu;
import android.os.Parcel;
public interface ISuService {
    boolean readMemory(int pid, long address, byte[] buffer, int length);
    boolean writeMemory(int pid, long address, byte[] buffer);
    String[] runCommand(String cmd);
}