package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();
    byte[] zzbRF;

    zzf() {
        this(new byte[0]);
    }

    public zzf(byte[] bArr) {
        this.zzbRF = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
