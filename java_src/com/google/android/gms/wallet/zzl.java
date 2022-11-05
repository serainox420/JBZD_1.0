package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<LineItem> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LineItem lineItem, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, lineItem.description, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, lineItem.zzbQs, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, lineItem.zzbQt, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, lineItem.zzbPL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, lineItem.zzbQu);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, lineItem.zzbPM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkg */
    public LineItem createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LineItem(str5, str4, str3, str2, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoC */
    public LineItem[] newArray(int i) {
        return new LineItem[i];
    }
}
