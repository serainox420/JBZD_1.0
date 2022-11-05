package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    public final String apkPackageName;
    public final byte[] zzbCZ;
    public final int zzbDa;

    public zzc(String str, byte[] bArr, int i) {
        this.apkPackageName = str;
        this.zzbCZ = bArr;
        this.zzbDa = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
