package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();
    String zzbQj;
    String zzbSA;
    double zzbSB;
    long zzbSC;
    int zzbSD;
    int zzbSz;

    zzg() {
        this.zzbSD = -1;
        this.zzbSz = -1;
        this.zzbSB = -1.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(int i, String str, double d, String str2, long j, int i2) {
        this.zzbSz = i;
        this.zzbSA = str;
        this.zzbSB = d;
        this.zzbQj = str2;
        this.zzbSC = j;
        this.zzbSD = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
