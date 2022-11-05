package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
/* loaded from: classes2.dex */
public final class GiftCardWalletObject extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<GiftCardWalletObject> CREATOR = new zzi();
    String pin;
    CommonWalletObject zzbQf;
    String zzbQg;
    String zzbQh;
    long zzbQi;
    String zzbQj;
    long zzbQk;
    String zzbQl;

    GiftCardWalletObject() {
        this.zzbQf = CommonWalletObject.zzUc().zzUd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GiftCardWalletObject(CommonWalletObject commonWalletObject, String str, String str2, String str3, long j, String str4, long j2, String str5) {
        this.zzbQf = CommonWalletObject.zzUc().zzUd();
        this.zzbQf = commonWalletObject;
        this.zzbQg = str;
        this.pin = str2;
        this.zzbQi = j;
        this.zzbQj = str4;
        this.zzbQk = j2;
        this.zzbQl = str5;
        this.zzbQh = str3;
    }

    public String getId() {
        return this.zzbQf.getId();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
