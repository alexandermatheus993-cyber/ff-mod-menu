package com.ff.modmenu;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import rikka.shizuku.Shizuku;

public class ServiceHolder {
    private static final String TAG = "FFModMenu";
    public static ISuService suService;
    public static boolean bound = false;
    private static boolean waitingBind = false;
    private static final Object lock = new Object();

    private static ServiceConnection connection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder binder) {
            synchronized (lock) {
                suService = ISuService.Stub.asInterface(binder);
                bound = true;
                waitingBind = false;
                lock.notifyAll();
                Log.d(TAG, "SuService conectado!");
            }
        }
        @Override
        public void onServiceDisconnected(ComponentName name) {
            synchronized (lock) {
                suService = null;
                bound = false;
                Log.d(TAG, "SuService desconnectado!");
            }
        }
    };

    public static void requestBind() {
        if (bound && suService != null) return;
        if (waitingBind) return;
        try {
            Shizuku.UserServiceArgs args = new Shizuku.UserServiceArgs(
                    new ComponentName("com.ff.modmenu", SuService.class.getName()))
                    .daemon(false)
                    .processNameSuffix("su")
                    .debuggable(false)
                    .version(1);
            waitingBind = true;
            Shizuku.bindUserService(args, connection);
            Log.d(TAG, "bindUserService solicitado");
        } catch (Exception e) {
            Log.e(TAG, "bindUserService falhou", e);
            waitingBind = false;
        }
    }

    public static void waitForBind(int timeoutMs) {
        synchronized (lock) {
            if (bound && suService != null) return;
            if (!waitingBind) requestBind();
            try { lock.wait(timeoutMs); } catch (InterruptedException ignored) {}
        }
    }

    public static ISuService get() {
        if (bound && suService != null) return suService;
        return null;
    }
}
