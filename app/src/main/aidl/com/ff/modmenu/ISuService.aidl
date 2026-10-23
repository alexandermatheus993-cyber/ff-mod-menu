package com.ff.modmenu;

interface ISuService {
    String execCommand(String cmd);
    int findPid(String packageName);
    byte[] readMemory(int pid, long address, int size);
    boolean writeMemory(int pid, long address, byte[] data);
    long findBaseAddress(int pid, String libName);
    long[] scanPattern(int pid, long startAddr, long endAddr, String pattern);
    boolean pokeMemory(int pid, long address, int value);
    int peekMemory(int pid, long address);
    void destroy();
    void closeSu();
}
