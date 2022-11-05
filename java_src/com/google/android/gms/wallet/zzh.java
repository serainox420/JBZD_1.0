package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<FullWalletRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(FullWalletRequest fullWalletRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, fullWalletRequest.zzbPS, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, fullWalletRequest.zzbPT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) fullWalletRequest.zzbQd, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkc */
    public FullWalletRequest createFromParcel(Parcel parcel) {
        Cart cart = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    cart = (Cart) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Cart.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new FullWalletRequest(str2, str, cart);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoy */
    public FullWalletRequest[] newArray(int i) {
        return new FullWalletRequest[i];
    }
}
