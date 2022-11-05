package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.Task;
/* loaded from: classes.dex */
public class PeriodicTask extends Task {
    public static final Parcelable.Creator<PeriodicTask> CREATOR = new Parcelable.Creator<PeriodicTask>() { // from class: com.google.android.gms.gcm.PeriodicTask.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgo */
        public PeriodicTask createFromParcel(Parcel parcel) {
            return new PeriodicTask(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzjG */
        public PeriodicTask[] newArray(int i) {
            return new PeriodicTask[i];
        }
    };
    protected long mFlexInSeconds;
    protected long mIntervalInSeconds;

    /* loaded from: classes2.dex */
    public static class Builder extends Task.Builder {
        private long zzbgQ = -1;
        private long zzbgR = -1;

        public Builder() {
            this.isPersisted = true;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: build */
        public PeriodicTask mo529build() {
            checkConditions();
            return new PeriodicTask(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.gcm.Task.Builder
        public void checkConditions() {
            super.checkConditions();
            if (this.zzbgQ == -1) {
                throw new IllegalArgumentException("Must call setPeriod(long) to establish an execution interval for this periodic task.");
            }
            if (this.zzbgQ <= 0) {
                throw new IllegalArgumentException(new StringBuilder(66).append("Period set cannot be less than or equal to 0: ").append(this.zzbgQ).toString());
            } else if (this.zzbgR == -1) {
                this.zzbgR = ((float) this.zzbgQ) * 0.1f;
            } else if (this.zzbgR <= this.zzbgQ) {
            } else {
                this.zzbgR = this.zzbgQ;
            }
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setExtras */
        public Builder mo530setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public Builder setFlex(long j) {
            this.zzbgR = j;
            return this;
        }

        public Builder setPeriod(long j) {
            this.zzbgQ = j;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setPersisted */
        public Builder mo531setPersisted(boolean z) {
            this.isPersisted = z;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setRequiredNetwork */
        public Builder mo532setRequiredNetwork(int i) {
            this.requiredNetworkState = i;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setRequiresCharging */
        public Builder mo533setRequiresCharging(boolean z) {
            this.requiresCharging = z;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setService */
        public Builder mo534setService(Class<? extends GcmTaskService> cls) {
            this.gcmTaskService = cls.getName();
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setService  reason: collision with other method in class */
        public /* bridge */ /* synthetic */ Task.Builder mo534setService(Class cls) {
            return mo534setService((Class<? extends GcmTaskService>) cls);
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setTag */
        public Builder mo535setTag(String str) {
            this.tag = str;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setUpdateCurrent */
        public Builder mo536setUpdateCurrent(boolean z) {
            this.updateCurrent = z;
            return this;
        }
    }

    @Deprecated
    private PeriodicTask(Parcel parcel) {
        super(parcel);
        this.mIntervalInSeconds = -1L;
        this.mFlexInSeconds = -1L;
        this.mIntervalInSeconds = parcel.readLong();
        this.mFlexInSeconds = Math.min(parcel.readLong(), this.mIntervalInSeconds);
    }

    private PeriodicTask(Builder builder) {
        super(builder);
        this.mIntervalInSeconds = -1L;
        this.mFlexInSeconds = -1L;
        this.mIntervalInSeconds = builder.zzbgQ;
        this.mFlexInSeconds = Math.min(builder.zzbgR, this.mIntervalInSeconds);
    }

    public long getFlex() {
        return this.mFlexInSeconds;
    }

    public long getPeriod() {
        return this.mIntervalInSeconds;
    }

    @Override // com.google.android.gms.gcm.Task
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("period", this.mIntervalInSeconds);
        bundle.putLong("period_flex", this.mFlexInSeconds);
    }

    public String toString() {
        String valueOf = String.valueOf(super.toString());
        long period = getPeriod();
        return new StringBuilder(String.valueOf(valueOf).length() + 54).append(valueOf).append(" period=").append(period).append(" flex=").append(getFlex()).toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.mIntervalInSeconds);
        parcel.writeLong(this.mFlexInSeconds);
    }
}
