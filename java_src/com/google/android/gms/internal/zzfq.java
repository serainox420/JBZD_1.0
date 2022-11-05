package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzfq implements Parcelable.Creator<zzfp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzfp zzfpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzfpVar.zzAH);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzfpVar.backgroundColor);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzfpVar.zzAI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzfpVar.zzAJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzfpVar.zzAK);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzfpVar.zzAL);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, zzfpVar.zzAM);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzfpVar.zzAN);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzfpVar.zzAO, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, zzfpVar.zzAP);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzfpVar.zzAQ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 13, zzfpVar.zzAR);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 14, zzfpVar.zzAS);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, zzfpVar.zzAT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzA */
    public zzfp[] newArray(int i) {
        return new zzfp[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzh */
    public zzfp createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        String str = null;
        int i9 = 0;
        String str2 = null;
        int i10 = 0;
        int i11 = 0;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    i8 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    i9 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    i10 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 14:
                    i11 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 15:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzfp(i, i2, i3, i4, i5, i6, i7, i8, str, i9, str2, i10, i11, str3);
    }
}
