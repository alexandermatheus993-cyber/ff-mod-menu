package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes53.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class IdGenerator {
    public static final int INITIAL_ID = 0;
    static final String NEXT_ALARM_MANAGER_ID_KEY = "next_alarm_manager_id";
    static final String NEXT_JOB_SCHEDULER_ID_KEY = "next_job_scheduler_id";
    static final String PREFERENCE_FILE_KEY = "androidx.work.util.id";
    private final Context mContext;
    private boolean mLoadedPreferences;
    private SharedPreferences mSharedPrefs;

    public IdGenerator(Context context) {
        this.mContext = context;
    }

    public int nextJobSchedulerIdWithRange(int i, int i2) {
        int i3;
        synchronized (IdGenerator.class) {
            loadPreferencesIfNecessary();
            int iNextId = nextId(NEXT_JOB_SCHEDULER_ID_KEY);
            if (iNextId < i || iNextId > i2) {
                iNextId = i;
                update(NEXT_JOB_SCHEDULER_ID_KEY, iNextId + 1);
            }
            i3 = iNextId;
        }
        return i3;
    }

    public int nextAlarmManagerId() {
        int iNextId;
        synchronized (IdGenerator.class) {
            loadPreferencesIfNecessary();
            iNextId = nextId(NEXT_ALARM_MANAGER_ID_KEY);
        }
        return iNextId;
    }

    private int nextId(String str) {
        int i = this.mSharedPrefs.getInt(str, 0);
        update(str, i == Integer.MAX_VALUE ? 0 : i + 1);
        return i;
    }

    private void update(String str, int i) {
        this.mSharedPrefs.edit().putInt(str, i).apply();
    }

    private void loadPreferencesIfNecessary() {
        if (!this.mLoadedPreferences) {
            this.mSharedPrefs = this.mContext.getSharedPreferences(PREFERENCE_FILE_KEY, 0);
            this.mLoadedPreferences = true;
        }
    }
}
