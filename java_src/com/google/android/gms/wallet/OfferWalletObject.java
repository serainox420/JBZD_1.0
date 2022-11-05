package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
/* loaded from: classes2.dex */
public final class OfferWalletObject extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<OfferWalletObject> CREATOR = new zzq();
    private final int zzaiI;
    CommonWalletObject zzbQf;
    String zzbRi;
    String zzkl;

    OfferWalletObject() {
        this.zzaiI = 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OfferWalletObject(int i, String str, String str2, CommonWalletObject commonWalletObject) {
        this.zzaiI = i;
        this.zzbRi = str2;
        if (i < 3) {
            this.zzbQf = CommonWalletObject.zzUc().zzim(str).zzUd();
        } else {
            this.zzbQf = commonWalletObject;
        }
    }

    public String getId() {
        return this.zzbQf.getId();
    }

    public String getRedemptionCode() {
        return this.zzbRi;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }
}
