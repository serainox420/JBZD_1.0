package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzann implements Parcelable.Creator<zzanm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzanm zzanmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzanmVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzanmVar.mIndex);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzanmVar.zzaQS);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzanmVar.zzaQT);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzanmVar.zzaRr, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzanmVar.zzaRs);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdP */
    public zzanm createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
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
        return new zzanm(i5, i4, i3, i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgq */
    public zzanm[] newArray(int i) {
        return new zzanm[i];
    }
}
