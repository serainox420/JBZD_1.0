package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzx implements Parcelable.Creator<zzw> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzw zzwVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzwVar.zzbRx, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzwVar.zzbRy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzwVar.zzbRz, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkq */
    public zzw createFromParcel(Parcel parcel) {
        String zzq;
        String str;
        Cart cart;
        String str2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str3 = null;
        Cart cart2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String str4 = str2;
                    str = str3;
                    cart = (Cart) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Cart.CREATOR);
                    zzq = str4;
                    break;
                case 3:
                    String zzq2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    cart = cart2;
                    zzq = str2;
                    str = zzq2;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    str = str3;
                    cart = cart2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str2;
                    str = str3;
                    cart = cart2;
                    break;
            }
            cart2 = cart;
            str3 = str;
            str2 = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzw(cart2, str3, str2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoM */
    public zzw[] newArray(int i) {
        return new zzw[i];
    }
}
