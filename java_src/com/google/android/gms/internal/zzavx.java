package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzawg;
import com.google.android.gms.internal.zzawl;
/* loaded from: classes2.dex */
public final class zzavx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavx> CREATOR = new zzavy();
    private final zzawl zzbyn;
    private final zzawg zzbyo;
    private final String zzbyp;
    private final byte[] zzbyq;

    public zzavx(IBinder iBinder, IBinder iBinder2, String str, byte[] bArr) {
        this(zzawl.zza.zzeH(iBinder), zzawg.zza.zzeC(iBinder2), str, bArr);
    }

    public zzavx(zzawl zzawlVar, zzawg zzawgVar, String str, byte[] bArr) {
        this.zzbyn = zzawlVar;
        this.zzbyo = zzawgVar;
        this.zzbyp = str;
        this.zzbyq = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzavx)) {
            return false;
        }
        zzavx zzavxVar = (zzavx) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyn, zzavxVar.zzbyn) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyo, zzavxVar.zzbyo) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzavxVar.zzbyp) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyq, zzavxVar.zzbyq);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyn, this.zzbyo, this.zzbyp, this.zzbyq);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavy.zza(this, parcel, i);
    }

    public IBinder zzOd() {
        if (this.zzbyn == null) {
            return null;
        }
        return this.zzbyn.asBinder();
    }

    public IBinder zzOe() {
        if (this.zzbyo == null) {
            return null;
        }
        return this.zzbyo.asBinder();
    }

    public String zzOf() {
        return this.zzbyp;
    }

    public byte[] zzOg() {
        return this.zzbyq;
    }
}
