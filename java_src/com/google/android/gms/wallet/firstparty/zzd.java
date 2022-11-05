package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public final class zzd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    byte[] zzbRD;
    byte[] zzbRE;

    zzd() {
        this(null, null);
    }

    public zzd(byte[] bArr, byte[] bArr2) {
        this.zzbRD = bArr;
        this.zzbRE = bArr2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
