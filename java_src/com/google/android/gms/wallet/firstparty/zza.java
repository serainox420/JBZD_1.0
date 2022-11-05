package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    byte[] zzbRA;
    byte[] zzbRB;
    zzm zzbRC;

    public zza(byte[] bArr, byte[] bArr2, zzm zzmVar) {
        this.zzbRA = bArr;
        this.zzbRB = bArr2;
        this.zzbRC = zzmVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
