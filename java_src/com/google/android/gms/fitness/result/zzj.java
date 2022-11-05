package com.google.android.gms.fitness.result;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzj extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    private final int versionCode;
    private final Bundle zzaWZ;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(int i, Status status, Bundle bundle) {
        this.versionCode = i;
        this.zzahw = status;
        this.zzaWZ = bundle;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzahw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle zzDv() {
        return this.zzaWZ;
    }
}
