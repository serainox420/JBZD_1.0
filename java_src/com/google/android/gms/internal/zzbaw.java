package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
public class zzbaw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbaw> CREATOR = new zzbax();
    private final ConnectionResult zzaGE;
    final int zzaiI;
    private final com.google.android.gms.common.internal.zzaf zzbEu;

    public zzbaw(int i) {
        this(new ConnectionResult(i, null), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbaw(int i, ConnectionResult connectionResult, com.google.android.gms.common.internal.zzaf zzafVar) {
        this.zzaiI = i;
        this.zzaGE = connectionResult;
        this.zzbEu = zzafVar;
    }

    public zzbaw(ConnectionResult connectionResult, com.google.android.gms.common.internal.zzaf zzafVar) {
        this(1, connectionResult, zzafVar);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbax.zza(this, parcel, i);
    }

    public com.google.android.gms.common.internal.zzaf zzPU() {
        return this.zzbEu;
    }

    public ConnectionResult zzyh() {
        return this.zzaGE;
    }
}
