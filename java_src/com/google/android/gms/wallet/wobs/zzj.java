package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    String body;
    String zzbSE;

    zzj() {
    }

    public zzj(String str, String str2) {
        this.zzbSE = str;
        this.body = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }
}
