package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzawi;
import com.google.android.gms.internal.zzawl;
/* loaded from: classes2.dex */
public final class zzaxt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxt> CREATOR = new zzaxu();
    private final long durationMillis;
    private final String zzbyW;
    private final zzawl zzbyn;
    private final zzawi zzbzu;
    private final com.google.android.gms.nearby.connection.zze zzbzv;

    public zzaxt(IBinder iBinder, IBinder iBinder2, String str, long j, com.google.android.gms.nearby.connection.zze zzeVar) {
        this(zzawl.zza.zzeH(iBinder), zzawi.zza.zzeE(iBinder2), str, j, zzeVar);
    }

    public zzaxt(zzawl zzawlVar, zzawi zzawiVar, String str, long j, com.google.android.gms.nearby.connection.zze zzeVar) {
        this.zzbyn = zzawlVar;
        this.zzbzu = zzawiVar;
        this.zzbyW = str;
        this.durationMillis = j;
        this.zzbzv = zzeVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxt)) {
            return false;
        }
        zzaxt zzaxtVar = (zzaxt) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyn, zzaxtVar.zzbyn) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzu, zzaxtVar.zzbzu) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyW, zzaxtVar.zzbyW) && com.google.android.gms.common.internal.zzaa.equal(Long.valueOf(this.durationMillis), Long.valueOf(zzaxtVar.durationMillis)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzv, zzaxtVar.zzbzv);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyn, this.zzbzu, this.zzbyW, Long.valueOf(this.durationMillis), this.zzbzv);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxu.zza(this, parcel, i);
    }

    public com.google.android.gms.nearby.connection.zze zzOB() {
        return this.zzbzv;
    }

    public IBinder zzOd() {
        if (this.zzbyn == null) {
            return null;
        }
        return this.zzbyn.asBinder();
    }

    public String zzOn() {
        return this.zzbyW;
    }

    public IBinder zzOz() {
        if (this.zzbzu == null) {
            return null;
        }
        return this.zzbzu.asBinder();
    }

    public long zzyK() {
        return this.durationMillis;
    }
}
