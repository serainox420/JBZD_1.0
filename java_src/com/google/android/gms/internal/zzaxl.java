package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzawl;
/* loaded from: classes2.dex */
public final class zzaxl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxl> CREATOR = new zzaxm();
    private final zzawl zzbyn;
    private final String zzbyp;

    public zzaxl(IBinder iBinder, String str) {
        this(zzawl.zza.zzeH(iBinder), str);
    }

    public zzaxl(zzawl zzawlVar, String str) {
        this.zzbyn = zzawlVar;
        this.zzbyp = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxl)) {
            return false;
        }
        zzaxl zzaxlVar = (zzaxl) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyn, zzaxlVar.zzbyn) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyp, zzaxlVar.zzbyp);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyn, this.zzbyp);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxm.zza(this, parcel, i);
    }

    public IBinder zzOd() {
        if (this.zzbyn == null) {
            return null;
        }
        return this.zzbyn.asBinder();
    }

    public String zzOf() {
        return this.zzbyp;
    }
}
