package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaqu implements Parcelable.Creator<zzaqt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaqt zzaqtVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaqtVar.zzHu(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaqtVar.zzHv(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaqtVar.zzHw(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaqtVar.zzHx(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzaqtVar.zzHy());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgw */
    public zzaqt createFromParcel(Parcel parcel) {
        String[] strArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaqt(str3, str2, str, strArr, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjO */
    public zzaqt[] newArray(int i) {
        return new zzaqt[i];
    }
}
