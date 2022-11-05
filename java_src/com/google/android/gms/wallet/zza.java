package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public final class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    String name;
    String phoneNumber;
    String zzUI;
    String zzbPJ;
    String zzbPK;
    String zzbhC;
    boolean zzbhE;
    String zzbhF;
    String zzbhv;
    String zzbhw;
    String zzbhx;

    zza() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z, String str10) {
        this.name = str;
        this.zzbhv = str2;
        this.zzbhw = str3;
        this.zzbhx = str4;
        this.zzUI = str5;
        this.zzbPJ = str6;
        this.zzbPK = str7;
        this.zzbhC = str8;
        this.phoneNumber = str9;
        this.zzbhE = z;
        this.zzbhF = str10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
