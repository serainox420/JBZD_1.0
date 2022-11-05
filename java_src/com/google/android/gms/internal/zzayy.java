package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzayy implements Parcelable.Creator<zzayx> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzayx zzayxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzayxVar.zzbBy);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable[]) zzayxVar.zzbBz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzayxVar.zzbBA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzja */
    public zzayx createFromParcel(Parcel parcel) {
        String[] zzC;
        zzayz[] zzayzVarArr;
        int i;
        String[] strArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        zzayz[] zzayzVarArr2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String[] strArr2 = strArr;
                    zzayzVarArr = zzayzVarArr2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzC = strArr2;
                    break;
                case 3:
                    zzayz[] zzayzVarArr3 = (zzayz[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzayz.CREATOR);
                    i = i2;
                    zzC = strArr;
                    zzayzVarArr = zzayzVarArr3;
                    break;
                case 4:
                    zzC = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    zzayzVarArr = zzayzVarArr2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzC = strArr;
                    zzayzVarArr = zzayzVarArr2;
                    i = i2;
                    break;
            }
            i2 = i;
            zzayzVarArr2 = zzayzVarArr;
            strArr = zzC;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzayx(i2, zzayzVarArr2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmX */
    public zzayx[] newArray(int i) {
        return new zzayx[i];
    }
}
