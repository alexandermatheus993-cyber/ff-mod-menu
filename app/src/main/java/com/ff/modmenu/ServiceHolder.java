package com.ff.modmenu;

import android.util.Log;

public class ServiceHolder {
    private static final String TAG = "FFModMenu";
    public static ISuService suService;
    public static boolean bound = false;

    public static void init() {
        if (bound && suService != null) return;
        try {
            suService = new SuService();
            bound = true;
            Log.d(TAG, "SuService initialized locally (no UserService)");
        } catch (Exception e) {
            Log.e(TAG, "SuService init failed", e);
            bound = false;
        }
    }

    public static void waitForBind(int timeoutMs) {
        init();
    }

    public static ISuService get() {
        if (!bound) init();
        return suService;
    }
}
