package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzzn implements Parcelable.Creator<zzzm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzzm zzzmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzzmVar.zzaxI, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzzmVar.zzaxJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzzmVar.zzaxK, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzzmVar.zzaxL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzzmVar.zzaxM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzzmVar.zzaxN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzzmVar.zzaxO);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaH */
    public zzzm createFromParcel(Parcel parcel) {
        byte[][] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = true;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[] bArr2 = null;
        zzzu zzzuVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    zzzuVar = (zzzu) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzzu.CREATOR);
                    break;
                case 3:
                    bArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 4:
                    iArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                case 5:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 6:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                case 7:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzu(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzzm(zzzuVar, bArr2, iArr2, strArr, iArr, bArr, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcs */
    public zzzm[] newArray(int i) {
        return new zzzm[i];
    }
}
