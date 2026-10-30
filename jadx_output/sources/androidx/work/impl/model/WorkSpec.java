package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes53.dex */
@Entity(indices = {@Index({"schedule_requested_at"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG = Logger.tagWithPrefix("WorkSpec");
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER = new Function<List<WorkInfoPojo>, List<WorkInfo>>() { // from class: androidx.work.impl.model.WorkSpec.1
        @Override // androidx.arch.core.util.Function
        public List<WorkInfo> apply(List<WorkInfoPojo> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<WorkInfoPojo> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toWorkInfo());
            }
            return arrayList;
        }
    };

    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;

    @NonNull
    @ColumnInfo(name = "backoff_policy")
    public BackoffPolicy backoffPolicy;

    @NonNull
    @Embedded
    public Constraints constraints;

    @ColumnInfo(name = "flex_duration")
    public long flexDuration;

    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "id")
    public String id;

    @ColumnInfo(name = "initial_delay")
    public long initialDelay;

    @NonNull
    @ColumnInfo(name = "input")
    public Data input;

    @ColumnInfo(name = "input_merger_class_name")
    public String inputMergerClassName;

    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;

    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;

    @NonNull
    @ColumnInfo(name = "output")
    public Data output;

    @ColumnInfo(name = "period_start_time")
    public long periodStartTime;

    @IntRange(from = 0)
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;

    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;

    @NonNull
    @ColumnInfo(name = "state")
    public WorkInfo.State state;

    @NonNull
    @ColumnInfo(name = "worker_class_name")
    public String workerClassName;

    public WorkSpec(@NonNull String str, @NonNull String str2) {
        this.state = WorkInfo.State.ENQUEUED;
        this.input = Data.EMPTY;
        this.output = Data.EMPTY;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.scheduleRequestedAt = -1L;
        this.id = str;
        this.workerClassName = str2;
    }

    public WorkSpec(@NonNull WorkSpec workSpec) {
        this.state = WorkInfo.State.ENQUEUED;
        this.input = Data.EMPTY;
        this.output = Data.EMPTY;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
        this.scheduleRequestedAt = -1L;
        this.id = workSpec.id;
        this.workerClassName = workSpec.workerClassName;
        this.state = workSpec.state;
        this.inputMergerClassName = workSpec.inputMergerClassName;
        this.input = new Data(workSpec.input);
        this.output = new Data(workSpec.output);
        this.initialDelay = workSpec.initialDelay;
        this.intervalDuration = workSpec.intervalDuration;
        this.flexDuration = workSpec.flexDuration;
        this.constraints = new Constraints(workSpec.constraints);
        this.runAttemptCount = workSpec.runAttemptCount;
        this.backoffPolicy = workSpec.backoffPolicy;
        this.backoffDelayDuration = workSpec.backoffDelayDuration;
        this.periodStartTime = workSpec.periodStartTime;
        this.minimumRetentionDuration = workSpec.minimumRetentionDuration;
        this.scheduleRequestedAt = workSpec.scheduleRequestedAt;
    }

    public void setBackoffDelayDuration(long j) {
        long j2 = j;
        if (j2 > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value", new Throwable[0]);
            j2 = 18000000;
        }
        if (j2 < WorkRequest.MIN_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value", new Throwable[0]);
            j2 = 10000;
        }
        this.backoffDelayDuration = j2;
    }

    public boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public void setPeriodic(long j) {
        long j2 = j;
        if (j2 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            j2 = 900000;
        }
        setPeriodic(j2, j2);
    }

    public void setPeriodic(long j, long j2) {
        long j3 = j;
        long j4 = j2;
        if (j3 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            j3 = 900000;
        }
        if (j4 < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            Logger.get().warning(TAG, String.format("Flex duration lesser than minimum allowed value; Changed to %s", Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)), new Throwable[0]);
            j4 = 300000;
        }
        if (j4 > j3) {
            Logger.get().warning(TAG, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(j3)), new Throwable[0]);
            j4 = j3;
        }
        this.intervalDuration = j3;
        this.flexDuration = j4;
    }

    public long calculateNextRunTime() {
        long j;
        long j2;
        long jScalb;
        if (isBackedOff()) {
            if (this.backoffPolicy == BackoffPolicy.LINEAR) {
                jScalb = this.backoffDelayDuration * ((long) this.runAttemptCount);
            } else {
                jScalb = (long) Math.scalb(this.backoffDelayDuration, this.runAttemptCount - 1);
            }
            return this.periodStartTime + Math.min(WorkRequest.MAX_BACKOFF_MILLIS, jScalb);
        }
        if (isPeriodic()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.periodStartTime == 0) {
                j = jCurrentTimeMillis + this.initialDelay;
            } else {
                j = this.periodStartTime;
            }
            long j3 = j;
            if (this.flexDuration != this.intervalDuration) {
                if (this.periodStartTime == 0) {
                    j2 = (-1) * this.flexDuration;
                } else {
                    j2 = 0;
                }
                return j3 + this.intervalDuration + j2;
            }
            return j3 + (this.periodStartTime == 0 ? 0L : this.intervalDuration);
        }
        return (this.periodStartTime == 0 ? System.currentTimeMillis() : this.periodStartTime) + this.initialDelay;
    }

    public boolean hasConstraints() {
        return !Constraints.NONE.equals(this.constraints);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && this.runAttemptCount == workSpec.runAttemptCount && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.periodStartTime == workSpec.periodStartTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.id.equals(workSpec.id) && this.state == workSpec.state && this.workerClassName.equals(workSpec.workerClassName)) {
            if (this.inputMergerClassName == null ? workSpec.inputMergerClassName != null : !this.inputMergerClassName.equals(workSpec.inputMergerClassName)) {
                return false;
            }
            if (this.input.equals(workSpec.input) && this.output.equals(workSpec.output) && this.constraints.equals(workSpec.constraints)) {
                return this.backoffPolicy == workSpec.backoffPolicy;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int iHashCode;
        int iHashCode2 = 31 * ((31 * ((31 * this.id.hashCode()) + this.state.hashCode())) + this.workerClassName.hashCode());
        if (this.inputMergerClassName != null) {
            iHashCode = this.inputMergerClassName.hashCode();
        } else {
            iHashCode = 0;
        }
        return (31 * ((31 * ((31 * ((31 * ((31 * ((31 * ((31 * ((31 * ((31 * ((31 * ((31 * ((31 * (iHashCode2 + iHashCode)) + this.input.hashCode())) + this.output.hashCode())) + ((int) (this.initialDelay ^ (this.initialDelay >>> 32))))) + ((int) (this.intervalDuration ^ (this.intervalDuration >>> 32))))) + ((int) (this.flexDuration ^ (this.flexDuration >>> 32))))) + this.constraints.hashCode())) + this.runAttemptCount)) + this.backoffPolicy.hashCode())) + ((int) (this.backoffDelayDuration ^ (this.backoffDelayDuration >>> 32))))) + ((int) (this.periodStartTime ^ (this.periodStartTime >>> 32))))) + ((int) (this.minimumRetentionDuration ^ (this.minimumRetentionDuration >>> 32))))) + ((int) (this.scheduleRequestedAt ^ (this.scheduleRequestedAt >>> 32)));
    }

    @NonNull
    public String toString() {
        return "{WorkSpec: " + this.id + "}";
    }

    public static class IdAndState {

        @ColumnInfo(name = "id")
        public String id;

        @ColumnInfo(name = "state")
        public WorkInfo.State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.state != idAndState.state) {
                return false;
            }
            return this.id.equals(idAndState.id);
        }

        public int hashCode() {
            return (31 * this.id.hashCode()) + this.state.hashCode();
        }
    }

    public static class WorkInfoPojo {

        @ColumnInfo(name = "id")
        public String id;

        @ColumnInfo(name = "output")
        public Data output;

        @ColumnInfo(name = "run_attempt_count")
        public int runAttemptCount;

        @ColumnInfo(name = "state")
        public WorkInfo.State state;

        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"tag"})
        public List<String> tags;

        public WorkInfo toWorkInfo() {
            return new WorkInfo(UUID.fromString(this.id), this.state, this.output, this.tags, this.runAttemptCount);
        }

        public boolean equals(Object obj) {
            boolean zEquals;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            if (this.runAttemptCount != workInfoPojo.runAttemptCount) {
                return false;
            }
            if (this.id == null ? workInfoPojo.id != null : !this.id.equals(workInfoPojo.id)) {
                return false;
            }
            if (this.state != workInfoPojo.state) {
                return false;
            }
            if (this.output == null ? workInfoPojo.output != null : !this.output.equals(workInfoPojo.output)) {
                return false;
            }
            if (this.tags != null) {
                zEquals = this.tags.equals(workInfoPojo.tags);
            } else {
                zEquals = workInfoPojo.tags == null;
            }
            return zEquals;
        }

        public int hashCode() {
            int iHashCode;
            int iHashCode2;
            int iHashCode3;
            int iHashCode4 = 31 * (this.id != null ? this.id.hashCode() : 0);
            if (this.state != null) {
                iHashCode = this.state.hashCode();
            } else {
                iHashCode = 0;
            }
            int i = 31 * (iHashCode4 + iHashCode);
            if (this.output != null) {
                iHashCode2 = this.output.hashCode();
            } else {
                iHashCode2 = 0;
            }
            int i2 = 31 * ((31 * (i + iHashCode2)) + this.runAttemptCount);
            if (this.tags != null) {
                iHashCode3 = this.tags.hashCode();
            } else {
                iHashCode3 = 0;
            }
            return i2 + iHashCode3;
        }
    }
}
