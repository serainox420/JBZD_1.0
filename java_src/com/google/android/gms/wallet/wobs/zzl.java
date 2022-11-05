package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    long zzbSF;
    long zzbSG;

    zzl() {
    }

    public zzl(long j, long j2) {
        this.zzbSF = j;
        this.zzbSG = j2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
