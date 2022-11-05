package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.internal.zzbv;
/* loaded from: classes2.dex */
public class zzck extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzck> CREATOR = new zzcl();
    final int zzaiI;
    public final zzbv zzbTx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzck(int i, IBinder iBinder) {
        this.zzaiI = i;
        if (iBinder != null) {
            this.zzbTx = zzbv.zza.zzfC(iBinder);
        } else {
            this.zzbTx = null;
        }
    }

    public zzck(zzbv zzbvVar) {
        this.zzaiI = 1;
        this.zzbTx = zzbvVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzcl.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzAh() {
        if (this.zzbTx == null) {
            return null;
        }
        return this.zzbTx.asBinder();
    }
}
