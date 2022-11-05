package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.Task;
/* loaded from: classes.dex */
public class OneoffTask extends Task {
    public static final Parcelable.Creator<OneoffTask> CREATOR = new Parcelable.Creator<OneoffTask>() { // from class: com.google.android.gms.gcm.OneoffTask.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgm */
        public OneoffTask createFromParcel(Parcel parcel) {
            return new OneoffTask(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzjE */
        public OneoffTask[] newArray(int i) {
            return new OneoffTask[i];
        }
    };
    private final long zzbgM;
    private final long zzbgN;

    /* loaded from: classes2.dex */
    public static class Builder extends Task.Builder {
        private long zzbgO = -1;
        private long zzbgP = -1;

        public Builder() {
            this.isPersisted = false;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: build */
        public OneoffTask mo529build() {
            checkConditions();
            return new OneoffTask(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.gcm.Task.Builder
        public void checkConditions() {
            super.checkConditions();
            if (this.zzbgO == -1 || this.zzbgP == -1) {
                throw new IllegalArgumentException("Must specify an execution window using setExecutionWindow.");
            }
            if (this.zzbgO < this.zzbgP) {
                return;
            }
            throw new IllegalArgumentException("Window start must be shorter than window end.");
        }

        public Builder setExecutionWindow(long j, long j2) {
            this.zzbgO = j;
            this.zzbgP = j2;
            return this;
        }

        @Override // com.google.android.gms.gcm.Task.Builder
        /* renamed from: setExtras */
        public Builder mo530setExtras(Bundle bundle) {
            this.extras = bundle;
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
    private OneoffTask(Parcel parcel) {
        super(parcel);
        this.zzbgM = parcel.readLong();
        this.zzbgN = parcel.readLong();
    }

    private OneoffTask(Builder builder) {
        super(builder);
        this.zzbgM = builder.zzbgO;
        this.zzbgN = builder.zzbgP;
    }

    public long getWindowEnd() {
        return this.zzbgN;
    }

    public long getWindowStart() {
        return this.zzbgM;
    }

    @Override // com.google.android.gms.gcm.Task
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("window_start", this.zzbgM);
        bundle.putLong("window_end", this.zzbgN);
    }

    public String toString() {
        String valueOf = String.valueOf(super.toString());
        long windowStart = getWindowStart();
        return new StringBuilder(String.valueOf(valueOf).length() + 64).append(valueOf).append(" windowStart=").append(windowStart).append(" windowEnd=").append(getWindowEnd()).toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.zzbgM);
        parcel.writeLong(this.zzbgN);
    }
}
