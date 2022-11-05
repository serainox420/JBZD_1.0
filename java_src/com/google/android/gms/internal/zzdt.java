package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzdt implements Parcelable.Creator<zzds> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzds zzdsVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzdsVar.url, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzdsVar.zzyL);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzdsVar.zzyM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzdsVar.zzyN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzdsVar.zzyO, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzdsVar.zzyP, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzdsVar.zzyQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzd */
    public zzds createFromParcel(Parcel parcel) {
        Bundle bundle = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        boolean z = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
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
        return new zzds(str4, j, str3, str2, str, bundle, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzu */
    public zzds[] newArray(int i) {
        return new zzds[i];
    }
}
