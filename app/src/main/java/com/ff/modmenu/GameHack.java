package com.ff.modmenu;

import android.util.Log;

public class GameHack {
    private static final String TAG = "FFModMenu";
    private ISuService service;
    private int gamePid = 0;
    private long il2cppBase = 0;
    private long unityBase = 0;

    public void setService(ISuService svc) { this.service = svc; }

    public void setPid(int pid) {
        this.gamePid = pid;
        il2cppBase = GameScanner.getLibBase(pid, "libil2cpp.so");
        unityBase = GameScanner.getLibBase(pid, "libunity.so");
        Log.d(TAG, "PID=" + pid + " il2cpp=0x" + Long.toHexString(il2cppBase));
    }

    public boolean isReady() { return service != null && gamePid > 0 && il2cppBase > 0; }
    public int getPid() { return gamePid; }

    private boolean w(long addr, byte[] bytes) {
        try { return service != null && service.writeMemory(gamePid, addr, bytes); }
        catch (Exception e) { return false; }
    }

    private byte[] f2b(float f) {
        int b = Float.floatToIntBits(f);
        return new byte[]{(byte)(b&0xFF),(byte)((b>>8)&0xFF),(byte)((b>>16)&0xFF),(byte)((b>>24)&0xFF)};
    }

    public void setAimSpot(int lv) { w(il2cppBase+0xB9A45C, f2b(0.5f+lv*0.5f)); }
    public void toggleAimTiro(boolean on) { w(il2cppBase+0xA7DFDC, on?new byte[]{1}:new byte[]{0}); }
    public void toggleAimMira(boolean on) { w(il2cppBase+0xA855FC, on?new byte[]{1}:new byte[]{0}); }
    public void toggleAimAgachado(boolean on) { w(il2cppBase+0xA7C730, on?new byte[]{(byte)0x81,0x0F,0x43,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}:new byte[8]); }
    public void setAimFov(int lv) { w(il2cppBase+0xB9A460, f2b(10+lv*5)); }
    public void setAimPuxada(int lv) { w(il2cppBase+0xA7C730, new byte[]{(byte)(0x80+lv),0x0F,0x43,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}); }
    public void setSensibilidade(int lv) { float[]v={1,2,5,10}; w(il2cppBase+0xB9A45C, f2b(v[lv])); }
    public void toggleEspFire(boolean on) { w(unityBase+0x2A3464, on?new byte[]{0x10,0x40,0x1C,0x46}:new byte[4]); }
    public void setChuvaDeBalas(int c) { if(c==0)return; w(il2cppBase+0xF4818C, new byte[]{0x12,0x00,(byte)0xA0,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}); w(il2cppBase+0xF39D80, new byte[]{(byte)c,0,0,0}); }
    public void setSpeed50x(int lv) { if(lv==0)return; w(il2cppBase+0xA7C730, new byte[]{(byte)(0x80+lv),0x0F,0x43,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}); }
    public void setSpeedHacker(int lv) { if(lv==0)return; w(il2cppBase+10755024, new byte[]{(byte)(0x80+lv),0x0F,0x43,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}); }
    public void toggleTelekil(boolean on) { w(il2cppBase+0xF29138, on?new byte[]{0,0,(byte)0xA0,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}:new byte[8]); }
    public void toggleGhost(boolean on) { w(il2cppBase+0x1C06E7C, on?new byte[]{0,0,(byte)0xA0,(byte)0xE3,0x1E,(byte)0xFF,0x2F,(byte)0xE1}:new byte[8]); }
    public void toggleFlyCarro(boolean on) { w(il2cppBase+0x2786DE0, on?new byte[]{0x58,0x10,0x1C,0x45}:new byte[4]); }
    public void toggleFlyPlayer(boolean on) { w(il2cppBase+0x2786DE0, on?new byte[]{0x48,0x10,0x1C,0x45}:new byte[4]); }
    public void setFlySpeed(int lv) { w(il2cppBase+0x2786DE4, f2b(lv*2f)); }
    public void toggleNightMode(boolean on) { w(unityBase+0x1A2290, on?new byte[]{0,0,(byte)0x80,(byte)0xBF}:new byte[4]); }
    public void toggleMedkitRun(boolean on) { byte[]p={1,0,0,0},o={0,0,0,0}; w(il2cppBase+0x23939FC,on?p:o); w(il2cppBase+0xA77988,on?p:o); }
    public void toggleWallPedra(boolean on) { w(unityBase+0xEF2B60, on?new byte[]{1,0,0,0}:new byte[4]); }
    public void toggleDesbanirImei(boolean on) { w(il2cppBase+0x1982BE8, on?new byte[]{0,0,(byte)0xBB,(byte)0xE3}:new byte[4]); }
}
