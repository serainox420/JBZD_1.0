package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaxi extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxi> CREATOR = new zzaxj();
    private final long id;
    private final int type;
    private final byte[] zzbxZ;
    private final ParcelFileDescriptor zzbzk;
    private final String zzbzl;
    private final long zzbzm;
    private final ParcelFileDescriptor zzbzn;

    public zzaxi(long j, int i, byte[] bArr, ParcelFileDescriptor parcelFileDescriptor, String str, long j2, ParcelFileDescriptor parcelFileDescriptor2) {
        this.id = j;
        this.type = i;
        this.zzbxZ = bArr;
        this.zzbzk = parcelFileDescriptor;
        this.zzbzl = str;
        this.zzbzm = j2;
        this.zzbzn = parcelFileDescriptor2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxi)) {
            return false;
        }
        zzaxi zzaxiVar = (zzaxi) obj;
        return com.google.android.gms.common.internal.zzaa.equal(Long.valueOf(this.id), Long.valueOf(zzaxiVar.id)) && com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.type), Integer.valueOf(zzaxiVar.type)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbxZ, zzaxiVar.zzbxZ) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzk, zzaxiVar.zzbzk) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzl, zzaxiVar.zzbzl) && com.google.android.gms.common.internal.zzaa.equal(Long.valueOf(this.zzbzm), Long.valueOf(zzaxiVar.zzbzm)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzn, zzaxiVar.zzbzn);
    }

    public byte[] getBytes() {
        return this.zzbxZ;
    }

    public long getId() {
        return this.id;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.id), Integer.valueOf(this.type), this.zzbxZ, this.zzbzk, this.zzbzl, Long.valueOf(this.zzbzm), this.zzbzn);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxj.zza(this, parcel, i);
    }

    public ParcelFileDescriptor zzOs() {
        return this.zzbzk;
    }

    public String zzOt() {
        return this.zzbzl;
    }

    public long zzOu() {
        return this.zzbzm;
    }

    public ParcelFileDescriptor zzOv() {
        return this.zzbzn;
    }
}
