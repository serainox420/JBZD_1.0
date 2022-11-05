package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzarb implements Parcelable.Creator<zzara> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzara zzaraVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzaraVar.zzHz());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaraVar.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaraVar.zzHA());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzaraVar.zzHB(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzaraVar.zzHC(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzaraVar.zzHD(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzaraVar.zzHE(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzaraVar.zzHF(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzaraVar.zzHG());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgy */
    public zzara createFromParcel(Parcel parcel) {
        boolean z = false;
        zzarn zzarnVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzaqr zzaqrVar = null;
        byte[] bArr = null;
        Intent intent = null;
        Intent intent2 = null;
        boolean z2 = false;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    intent2 = (Intent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Intent.CREATOR);
                    break;
                case 6:
                    intent = (Intent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Intent.CREATOR);
                    break;
                case 7:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 8:
                    zzaqrVar = (zzaqr) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaqr.CREATOR);
                    break;
                case 9:
                    zzarnVar = (zzarn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzarn.CREATOR);
                    break;
                case 10:
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
        return new zzara(i, str, z2, intent2, intent, bArr, zzaqrVar, zzarnVar, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjR */
    public zzara[] newArray(int i) {
        return new zzara[i];
    }
}
