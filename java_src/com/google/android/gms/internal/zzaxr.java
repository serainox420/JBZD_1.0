package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzawf;
import com.google.android.gms.internal.zzawm;
/* loaded from: classes2.dex */
public final class zzaxr extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxr> CREATOR = new zzaxs();
    private final long durationMillis;
    private final String name;
    private final String zzbyW;
    private final zzawm zzbzr;
    private final zzawf zzbzs;
    private final com.google.android.gms.nearby.connection.zza zzbzt;

    public zzaxr(IBinder iBinder, IBinder iBinder2, String str, String str2, long j, com.google.android.gms.nearby.connection.zza zzaVar) {
        this(zzawm.zza.zzeI(iBinder), zzawf.zza.zzeB(iBinder2), str, str2, j, zzaVar);
    }

    public zzaxr(zzawm zzawmVar, zzawf zzawfVar, String str, String str2, long j, com.google.android.gms.nearby.connection.zza zzaVar) {
        this.zzbzr = zzawmVar;
        this.zzbzs = zzawfVar;
        this.name = str;
        this.zzbyW = str2;
        this.durationMillis = j;
        this.zzbzt = zzaVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxr)) {
            return false;
        }
        zzaxr zzaxrVar = (zzaxr) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbzr, zzaxrVar.zzbzr) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzs, zzaxrVar.zzbzs) && com.google.android.gms.common.internal.zzaa.equal(this.name, zzaxrVar.name) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyW, zzaxrVar.zzbyW) && com.google.android.gms.common.internal.zzaa.equal(Long.valueOf(this.durationMillis), Long.valueOf(zzaxrVar.durationMillis)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzt, zzaxrVar.zzbzt);
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbzr, this.zzbzs, this.name, this.zzbyW, Long.valueOf(this.durationMillis), this.zzbzt);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxs.zza(this, parcel, i);
    }

    public com.google.android.gms.nearby.connection.zza zzOA() {
        return this.zzbzt;
    }

    public IBinder zzOd() {
        if (this.zzbzr == null) {
            return null;
        }
        return this.zzbzr.asBinder();
    }

    public String zzOn() {
        return this.zzbyW;
    }

    public IBinder zzOz() {
        if (this.zzbzs == null) {
            return null;
        }
        return this.zzbzs.asBinder();
    }

    public long zzyK() {
        return this.durationMillis;
    }
}
