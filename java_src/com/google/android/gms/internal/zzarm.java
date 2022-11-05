package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzarm implements Parcelable.Creator<zzarl> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzarl zzarlVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzarlVar.zzHK(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzarlVar.zzHL(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzarlVar.zzHN(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzarlVar.zzHM(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgB */
    public zzarl createFromParcel(Parcel parcel) {
        String[] strArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String[] strArr2 = null;
        String[] strArr3 = null;
        String[] strArr4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    strArr4 = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 2:
                    strArr3 = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 3:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 4:
                    strArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzarl(strArr4, strArr3, strArr2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjW */
    public zzarl[] newArray(int i) {
        return new zzarl[i];
    }
}
