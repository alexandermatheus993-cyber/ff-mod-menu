package androidx.browser.trusted;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes53.dex */
@SynthesizedClassMap({$$Lambda$TrustedWebActivityServiceConnectionPool$0rIunx8HODWjNmKa0LJLcrkAQfY.class})
public final class TrustedWebActivityServiceConnectionPool {
    private static final String TAG = "TWAConnectionPool";
    private final Map<Uri, ConnectionHolder> mConnections = new HashMap();
    private final Context mContext;

    private TrustedWebActivityServiceConnectionPool(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    @NonNull
    public static TrustedWebActivityServiceConnectionPool create(@NonNull Context context) {
        return new TrustedWebActivityServiceConnectionPool(context);
    }

    @NonNull
    @MainThread
    public ListenableFuture<TrustedWebActivityServiceConnection> connect(@NonNull final Uri scope, @NonNull Set<Token> possiblePackages, @NonNull Executor executor) {
        ConnectionHolder connection = this.mConnections.get(scope);
        if (connection != null) {
            return connection.getServiceWrapper();
        }
        Intent bindServiceIntent = createServiceIntent(this.mContext, scope, possiblePackages, true);
        if (bindServiceIntent == null) {
            return FutureUtils.immediateFailedFuture(new IllegalArgumentException("No service exists for scope"));
        }
        ConnectionHolder newConnection = new ConnectionHolder(new Runnable() { // from class: androidx.browser.trusted.-$$Lambda$TrustedWebActivityServiceConnectionPool$0rIunx8HODWjNmKa0LJLcrkAQfY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$connect$0$TrustedWebActivityServiceConnectionPool(scope);
            }
        });
        this.mConnections.put(scope, newConnection);
        new BindToServiceAsyncTask(this.mContext, bindServiceIntent, newConnection).executeOnExecutor(executor, new Void[0]);
        return newConnection.getServiceWrapper();
    }

    public /* synthetic */ void lambda$connect$0$TrustedWebActivityServiceConnectionPool(Uri scope) {
        this.mConnections.remove(scope);
    }

    static class BindToServiceAsyncTask extends AsyncTask<Void, Void, Exception> {
        private final Context mAppContext;
        private final ConnectionHolder mConnection;
        private final Intent mIntent;

        BindToServiceAsyncTask(Context context, Intent intent, ConnectionHolder connection) {
            this.mAppContext = context.getApplicationContext();
            this.mIntent = intent;
            this.mConnection = connection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @Nullable
        public Exception doInBackground(Void... voids) {
            try {
                if (this.mAppContext.bindService(this.mIntent, this.mConnection, 4097)) {
                    return null;
                }
                this.mAppContext.unbindService(this.mConnection);
                return new IllegalStateException("Could not bind to the service");
            } catch (SecurityException e) {
                Log.w(TrustedWebActivityServiceConnectionPool.TAG, "SecurityException while binding.", e);
                return e;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Exception bindingException) {
            if (bindingException != null) {
                this.mConnection.cancel(bindingException);
            }
        }
    }

    @MainThread
    public boolean serviceExistsForScope(@NonNull Uri scope, @NonNull Set<Token> possiblePackages) {
        return (this.mConnections.get(scope) == null && createServiceIntent(this.mContext, scope, possiblePackages, false) == null) ? false : true;
    }

    void unbindAllConnections() {
        for (ConnectionHolder connection : this.mConnections.values()) {
            this.mContext.unbindService(connection);
        }
        this.mConnections.clear();
    }

    @Nullable
    private Intent createServiceIntent(Context appContext, Uri scope, Set<Token> possiblePackages, boolean shouldLog) {
        if (possiblePackages == null || possiblePackages.size() == 0) {
            return null;
        }
        Intent scopeResolutionIntent = new Intent();
        scopeResolutionIntent.setData(scope);
        scopeResolutionIntent.setAction("android.intent.action.VIEW");
        List<ResolveInfo> candidateActivities = appContext.getPackageManager().queryIntentActivities(scopeResolutionIntent, 65536);
        String resolvedPackage = null;
        Iterator<ResolveInfo> it = candidateActivities.iterator();
        while (it.hasNext()) {
            String packageName = it.next().activityInfo.packageName;
            for (Token possiblePackage : possiblePackages) {
                if (possiblePackage.matches(packageName, appContext.getPackageManager())) {
                    resolvedPackage = packageName;
                    break;
                }
            }
        }
        if (resolvedPackage == null) {
            if (shouldLog) {
                Log.w(TAG, "No TWA candidates for " + scope + " have been registered.");
            }
            return null;
        }
        Intent serviceResolutionIntent = new Intent();
        serviceResolutionIntent.setPackage(resolvedPackage);
        serviceResolutionIntent.setAction(TrustedWebActivityService.ACTION_TRUSTED_WEB_ACTIVITY_SERVICE);
        ResolveInfo info = appContext.getPackageManager().resolveService(serviceResolutionIntent, 131072);
        if (info == null) {
            if (shouldLog) {
                Log.w(TAG, "Could not find TWAService for " + resolvedPackage);
            }
            return null;
        }
        if (shouldLog) {
            Log.i(TAG, "Found " + info.serviceInfo.name + " to handle request for " + scope);
        }
        Intent finalIntent = new Intent();
        finalIntent.setComponent(new ComponentName(resolvedPackage, info.serviceInfo.name));
        return finalIntent;
    }
}
