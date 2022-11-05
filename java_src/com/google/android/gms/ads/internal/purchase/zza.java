package com.google.android.gms.ads.internal.purchase;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<GInAppPurchaseManagerInfoParcel> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, gInAppPurchaseManagerInfoParcel.zziF(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, gInAppPurchaseManagerInfoParcel.zziG(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, gInAppPurchaseManagerInfoParcel.zziH(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, gInAppPurchaseManagerInfoParcel.zziE(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzO */
    public GInAppPurchaseManagerInfoParcel[] newArray(int i) {
        return new GInAppPurchaseManagerInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzm */
    public GInAppPurchaseManagerInfoParcel createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 3:
                    iBinder4 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GInAppPurchaseManagerInfoParcel(iBinder4, iBinder3, iBinder2, iBinder);
    }
}
