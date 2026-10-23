package com.ff.modmenu.service;

import android.os.IBinder;
import android.util.Log;
import com.ff.modmenu.SuService;

/**
 * Shizuku inicia essa classe num processo separado
 * e chama onBind() via reflexão pra pegar o binder.
 */
public class UserService {
    private static final String TAG = "FFModMenu";
    private final IBinder binder;

    public UserService() {
        binder = new SuService();
        Log.d(TAG, "UserService created, SuService binder ready");
    }

    public IBinder onBind() {
        Log.d(TAG, "UserService onBind called");
        return binder;
    }
}
