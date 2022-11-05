package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzawl;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzaxp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaxp> CREATOR = new zzaxq();
    private final zzaxi zzbyY;
    private final zzawl zzbyn;
    private final String[] zzbzp;
    private final boolean zzbzq;

    public zzaxp(IBinder iBinder, String[] strArr, zzaxi zzaxiVar, boolean z) {
        this(zzawl.zza.zzeH(iBinder), strArr, zzaxiVar, z);
    }

    public zzaxp(zzawl zzawlVar, String[] strArr, zzaxi zzaxiVar, boolean z) {
        this.zzbyn = zzawlVar;
        this.zzbzp = strArr;
        this.zzbyY = zzaxiVar;
        this.zzbzq = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaxp)) {
            return false;
        }
        zzaxp zzaxpVar = (zzaxp) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbyn, zzaxpVar.zzbyn) && Arrays.equals(this.zzbzp, zzaxpVar.zzbzp) && com.google.android.gms.common.internal.zzaa.equal(this.zzbyY, zzaxpVar.zzbyY) && com.google.android.gms.common.internal.zzaa.equal(Boolean.valueOf(this.zzbzq), Boolean.valueOf(zzaxpVar.zzbzq));
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbyn, this.zzbzp, this.zzbyY, Boolean.valueOf(this.zzbzq));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaxq.zza(this, parcel, i);
    }

    public IBinder zzOd() {
        if (this.zzbyn == null) {
            return null;
        }
        return this.zzbyn.asBinder();
    }

    public zzaxi zzOp() {
        return this.zzbyY;
    }

    public String[] zzOx() {
        return this.zzbzp;
    }

    public boolean zzOy() {
        return this.zzbzq;
    }
}
