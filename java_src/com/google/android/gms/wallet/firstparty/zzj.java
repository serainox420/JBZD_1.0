package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    byte[] zzbRI;

    zzj() {
        this(new byte[0]);
    }

    public zzj(byte[] bArr) {
        this.zzbRI = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }
}
