package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzawg;
import com.google.android.gms.internal.zzawh;
import com.google.android.gms.internal.zzawl;
/* loaded from: classes2.dex */
public final class zzaxn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxn> CREATOR = new zzaxo();
    private final String name;
    private final zzawl zzbyn;
    private final zzawg zzbyo;
    private final String zzbyp;
    private final byte[] zzbyq;
    private final zzawh zzbzo;

    public zzaxn(IBinder iBinder, IBinder iBinder2, IBinder iBinder3, String str, String str2, byte[] bArr) {
        this(zzawl.zza.zzeH(iBinder), zzawg.zza.zzeC(iBinder2), zzawh.zza.zzeD(iBinder3), str, str2, bArr);
    }

    public zzaxn(zzawl zzawlVar, zzawg zzawgVar, zzawh zzawhVar, String str, String str2, byte[] bArr) {
        this.zzbyn = zzawlVar;
        this.zzbyo = zzawgVar;
        this.zzbzo = zzawhVar;
        this.name = str;
        this.zzbyp = str2;
        this.zzbyq = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxn)) {
            return false;
        }
        zzaxn zzaxnVar = (zzaxn) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyn, zzaxnVar.zzbyn) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyo, zzaxnVar.zzbyo) && com.google.android.gms.common.internal.zzaa.equal(this.zzbzo, zzaxnVar.zzbzo) && com.google.android.gms.common.internal.zzaa.equal(this.name, zzaxnVar.name) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzaxnVar.zzbyp) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyq, zzaxnVar.zzbyq);
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyn, this.zzbyo, this.zzbzo, this.name, this.zzbyp, this.zzbyq);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxo.zza(this, parcel, i);
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

    public IBinder zzOw() {
        if (this.zzbzo == null) {
            return null;
        }
        return this.zzbzo.asBinder();
    }
}
