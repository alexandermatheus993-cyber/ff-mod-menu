package com.freestyle;

import android.content.Context;
import android.content.Intent;
import com.github.megatronking.stringfog.xor.StringFogImpl;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes56.dex */
public class SketchLogger {
    private static volatile boolean isRunning = false;
    private static Thread loggerThread = new Thread() { // from class: com.freestyle.SketchLogger.1
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SketchLogger.isRunning = true;
            try {
                Runtime.getRuntime().exec(StringFogImpl.decrypt("OTshTlkhdGtO"));
                Throwable th = null;
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(StringFogImpl.decrypt("OTshTlkh")).getInputStream()));
                    try {
                        String line = bufferedReader.readLine();
                        do {
                            SketchLogger.broadcastLog(line);
                            if (!SketchLogger.isRunning) {
                                break;
                            } else {
                                line = bufferedReader.readLine();
                            }
                        } while (line != null);
                        if (SketchLogger.isRunning) {
                            SketchLogger.broadcastLog(StringFogImpl.decrypt("GTshSl0ndCFCTHU/L0FUMDBoDWowJzJMSiE9KEoW"));
                            SketchLogger.startLogging();
                        } else {
                            SketchLogger.broadcastLog(StringFogImpl.decrypt("GTshSl0ndDVZVyUkI0kW"));
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                    } catch (Throwable th2) {
                        if (bufferedReader == null) {
                            throw th2;
                        }
                        bufferedReader.close();
                        throw th2;
                    }
                } catch (Throwable th3) {
                    if (0 == 0) {
                        throw th3;
                    }
                    if (null != th3) {
                        th.addSuppressed(th3);
                    }
                }
            } catch (IOException e) {
                SketchLogger.broadcastLog(e.getMessage());
            }
        }
    };

    public static synchronized void startLogging() {
        if (!isRunning) {
            loggerThread.start();
        } else {
            broadcastLog(StringFogImpl.decrypt("GTshSl0ndCdBSjA1IlQYJyEoQ1E7Mw=="));
        }
    }

    public static synchronized void stopLogging() {
        if (isRunning) {
            isRunning = false;
            broadcastLog(StringFogImpl.decrypt("BiApXUg8OiENVDozIUhKdTY/DU0mMTQNSjAlM0hLIXo="));
        } else {
            broadcastLog(StringFogImpl.decrypt("GTshSl0ndChCTHUmM0NWPDoh"));
        }
    }

    public static void broadcastLog(String str) {
        Context context = SketchApplication.getContext();
        Intent intent = new Intent();
        intent.setAction(StringFogImpl.decrypt("JSYpA0s+MTJOUCI1NEgWFBcSZHcbCwhobwoQA29tEgsKYn8="));
        intent.putExtra(StringFogImpl.decrypt("OTsh"), str);
        intent.putExtra(StringFogImpl.decrypt("JTUlRlkyMQhMVTA="), context.getPackageName());
        context.sendBroadcast(intent);
    }
}
