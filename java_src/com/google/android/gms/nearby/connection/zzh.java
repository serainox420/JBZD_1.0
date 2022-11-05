package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public final class zzh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();
    private final int status;
    private final long zzbyg;
    private final long zzbyh;
    private final long zzbyi;

    public zzh(long j, int i, long j2, long j3) {
        this.zzbyg = j;
        this.status = i;
        this.zzbyh = j2;
        this.zzbyi = j3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        return zzaa.equal(Long.valueOf(this.zzbyg), Long.valueOf(zzhVar.zzbyg)) && zzaa.equal(Integer.valueOf(this.status), Integer.valueOf(zzhVar.status)) && zzaa.equal(Long.valueOf(this.zzbyh), Long.valueOf(zzhVar.zzbyh)) && zzaa.equal(Long.valueOf(this.zzbyi), Long.valueOf(zzhVar.zzbyi));
    }

    public long getBytesTransferred() {
        return this.zzbyi;
    }

    public int getStatus() {
        return this.status;
    }

    public long getTotalBytes() {
        return this.zzbyh;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzbyg), Integer.valueOf(this.status), Long.valueOf(this.zzbyh), Long.valueOf(this.zzbyi));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public long zzOb() {
        return this.zzbyg;
    }
}
