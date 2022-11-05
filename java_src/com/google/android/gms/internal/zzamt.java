package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzamt implements Parcelable.Creator<zzams> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzams zzamsVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzamsVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzamsVar.zzaQL);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzamsVar.zzaxu);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzamsVar.zzWD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzamsVar.zzadi, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzamsVar.zzakb, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzamsVar.zzaQM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzamsVar.zzaQN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdF */
    public zzams createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
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
        return new zzams(i, z2, z, str5, str4, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgg */
    public zzams[] newArray(int i) {
        return new zzams[i];
    }
}
