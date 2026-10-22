package com.ff.modmenu;

interface ISuService {
    String readMemory(int pid, long address, int size);
    boolean writeMemory(int pid, long address, String hexValue);
    int findPid(String packageName);
    long findBaseAddress(int pid, String libName);
    long[] scanPattern(int pid, long startAddr, long endAddr, String pattern);
    boolean pokeMemory(int pid, long address, int value);
    int peekMemory(int pid, long address);
}
