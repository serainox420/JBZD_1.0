package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class zzv extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();
    private final int versionCode;
    private final long zzaXf;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(int i, Status status, long j) {
        this.versionCode = i;
        this.zzahw = status;
        this.zzaXf = j;
    }

    private boolean zzb(zzv zzvVar) {
        return this.zzahw.equals(zzvVar.zzahw) && this.zzaXf == zzvVar.zzaXf;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzv) && zzb((zzv) obj));
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
        return zzaa.hashCode(this.zzahw, Long.valueOf(this.zzaXf));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzahw).zzg("lastSuccessfulSyncTimeMillis", Long.valueOf(this.zzaXf)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzw.zza(this, parcel, i);
    }

    public long zzDA() {
        return this.zzaXf;
    }
}
