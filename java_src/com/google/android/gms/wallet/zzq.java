package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
/* loaded from: classes2.dex */
public class zzq implements Parcelable.Creator<OfferWalletObject> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(OfferWalletObject offerWalletObject, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, offerWalletObject.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, offerWalletObject.zzkl, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, offerWalletObject.zzbRi, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) offerWalletObject.zzbQf, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkl */
    public OfferWalletObject createFromParcel(Parcel parcel) {
        CommonWalletObject commonWalletObject = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    commonWalletObject = (CommonWalletObject) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CommonWalletObject.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new OfferWalletObject(i, str2, str, commonWalletObject);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoH */
    public OfferWalletObject[] newArray(int i) {
        return new OfferWalletObject[i];
    }
}
