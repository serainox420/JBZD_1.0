package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<zzk> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzk zzkVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzkVar.getId());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzkVar.zzke(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzkVar.zzUm(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzkVar.zzUn(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzkVar.getTitle(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzkVar.zzEv(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzkVar.getDisplayName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzkVar.zzUo());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzkVar.zzUp());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzkVar.zzUq());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzkVar.zzUr());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, zzkVar.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkQ */
    public zzk createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        byte b = 0;
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        String str7 = null;
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
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    b = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 10:
                    b2 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 11:
                    b3 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 12:
                    b4 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 13:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzk(i, str, str2, str3, str4, str5, str6, b, b2, b3, b4, str7);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpp */
    public zzk[] newArray(int i) {
        return new zzk[i];
    }
}
