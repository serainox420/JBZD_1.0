package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzzv implements Parcelable.Creator<zzzu> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzzu zzzuVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzzuVar.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzzuVar.zzaxZ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzzuVar.zzaya);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzzuVar.zzayb, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzzuVar.zzayc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzzuVar.zzayd);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzzuVar.zzaye, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzzuVar.zzayf);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, zzzuVar.zzayg);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaI */
    public zzzu createFromParcel(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = true;
        boolean z2 = false;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
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
        return new zzzu(str4, i3, i2, str3, str2, z, str, z2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzct */
    public zzzu[] newArray(int i) {
        return new zzzu[i];
    }
}
