package com.ff.modmenu.service;

import android.os.IBinder;
import android.util.Log;

import com.ff.modmenu.SuService;

/**
 * Classe registrada no AndroidManifest para o Shizuku.
 * O Shizuku inicia esse processo e retorna o binder do SuService.
 */
public class UserService extends rikka.shizuku.UserService.UserServiceStub {
    private static final String TAG = "FFModMenu";
    private SuService suService;

    public UserService() {
        suService = new SuService();
        Log.d(TAG, "UserService created");
    }

    @Override
    public IBinder onBind() {
        Log.d(TAG, "UserService onBind - returning SuService binder");
        return suService.asBinder();
    }
}
