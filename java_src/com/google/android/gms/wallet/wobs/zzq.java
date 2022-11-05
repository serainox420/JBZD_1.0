package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzq implements Parcelable.Creator<zzp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzp zzpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzpVar.zzbSE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzpVar.body, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzpVar.zzbSI, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzpVar.zzbSJ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzpVar.zzbSK, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkJ */
    public zzp createFromParcel(Parcel parcel) {
        zzn zznVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzn zznVar2 = null;
        zzl zzlVar = null;
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
                    zzlVar = (zzl) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzl.CREATOR);
                    break;
                case 5:
                    zznVar2 = (zzn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzn.CREATOR);
                    break;
                case 6:
                    zznVar = (zzn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzn.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzp(str2, str, zzlVar, zznVar2, zznVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpi */
    public zzp[] newArray(int i) {
        return new zzp[i];
    }
}
