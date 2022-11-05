package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzr;
/* loaded from: classes2.dex */
public class zzaf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaf> CREATOR = new zzag();
    private boolean zzaBx;
    IBinder zzaEW;
    private ConnectionResult zzaGE;
    private boolean zzaGF;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.zzaiI = i;
        this.zzaEW = iBinder;
        this.zzaGE = connectionResult;
        this.zzaBx = z;
        this.zzaGF = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaf)) {
            return false;
        }
        zzaf zzafVar = (zzaf) obj;
        return this.zzaGE.equals(zzafVar.zzaGE) && zzyg().equals(zzafVar.zzyg());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzag.zza(this, parcel, i);
    }

    public zzr zzyg() {
        return zzr.zza.zzbr(this.zzaEW);
    }

    public ConnectionResult zzyh() {
        return this.zzaGE;
    }

    public boolean zzyi() {
        return this.zzaBx;
    }

    public boolean zzyj() {
        return this.zzaGF;
    }
}
