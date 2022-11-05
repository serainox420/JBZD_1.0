package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzawy implements Parcelable.Creator<zzawx> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzawx zzawxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzawxVar.zzOf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzawxVar.zzOp(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzawxVar.zzOq());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzis */
    public zzawx createFromParcel(Parcel parcel) {
        boolean zzc;
        zzaxi zzaxiVar;
        String str;
        zzaxi zzaxiVar2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    boolean z2 = z;
                    zzaxiVar = zzaxiVar2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzc = z2;
                    break;
                case 2:
                    zzaxi zzaxiVar3 = (zzaxi) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaxi.CREATOR);
                    str = str2;
                    zzc = z;
                    zzaxiVar = zzaxiVar3;
                    break;
                case 3:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    zzaxiVar = zzaxiVar2;
                    str = str2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = z;
                    zzaxiVar = zzaxiVar2;
                    str = str2;
                    break;
            }
            str2 = str;
            zzaxiVar2 = zzaxiVar;
            z = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzawx(str2, zzaxiVar2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmh */
    public zzawx[] newArray(int i) {
        return new zzawx[i];
    }
}
