package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class zzt extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();
    private final long timestamp;
    private final int versionCode;
    private final Boolean zzaXe;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(int i, Status status, long j, Boolean bool) {
        this.versionCode = i;
        this.zzahw = status;
        this.timestamp = j;
        this.zzaXe = bool;
    }

    private boolean zzb(zzt zztVar) {
        return this.zzahw.equals(zztVar.zzahw) && zzaa.equal(Long.valueOf(this.timestamp), Long.valueOf(zztVar.timestamp));
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzt) && zzb((zzt) obj));
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzahw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzahw, Long.valueOf(this.timestamp));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzahw).zzg("timestamp", Long.valueOf(this.timestamp)).zzg("syncEnabled", this.zzaXe).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzu.zza(this, parcel, i);
    }

    public long zzDy() {
        return this.timestamp;
    }

    public Boolean zzDz() {
        return this.zzaXe;
    }
}
