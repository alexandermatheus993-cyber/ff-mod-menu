package com.freestyle;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.util.Log;
import com.github.megatronking.stringfog.xor.StringFogImpl;

/* JADX INFO: loaded from: classes56.dex */
public class SketchApplication extends Application {
    private static Context mApplicationContext;

    public static Context getContext() {
        return mApplicationContext;
    }

    @Override // android.app.Application
    public void onCreate() {
        mApplicationContext = getApplicationContext();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.freestyle.SketchApplication.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                Intent intent = new Intent(SketchApplication.this.getApplicationContext(), (Class<?>) DebugActivity.class);
                intent.setFlags(268468224);
                intent.putExtra(StringFogImpl.decrypt("MCY0Qko="), Log.getStackTraceString(th));
                SketchApplication.this.startActivity(intent);
                SketchLogger.broadcastLog(Log.getStackTraceString(th));
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        });
        SketchLogger.startLogging();
        super.onCreate();
    }
}
