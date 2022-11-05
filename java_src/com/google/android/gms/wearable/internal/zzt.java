package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzt implements Parcelable.Creator<zzs> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzs zzsVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzsVar.zzbTW, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzsVar.type);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzsVar.zzbTU);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzsVar.zzbTV);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkS */
    public zzs createFromParcel(Parcel parcel) {
        int zzg;
        int i;
        int i2;
        zzu zzuVar;
        int i3 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzu zzuVar2 = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    int i6 = i3;
                    i = i4;
                    i2 = i5;
                    zzuVar = (zzu) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzu.CREATOR);
                    zzg = i6;
                    break;
                case 3:
                    zzuVar = zzuVar2;
                    int i7 = i4;
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i3;
                    i = i7;
                    break;
                case 4:
                    i2 = i5;
                    zzuVar = zzuVar2;
                    int i8 = i3;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i8;
                    break;
                case 5:
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    i = i4;
                    i2 = i5;
                    zzuVar = zzuVar2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzg = i3;
                    i = i4;
                    i2 = i5;
                    zzuVar = zzuVar2;
                    break;
            }
            zzuVar2 = zzuVar;
            i5 = i2;
            i4 = i;
            i3 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzs(zzuVar2, i5, i4, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpt */
    public zzs[] newArray(int i) {
        return new zzs[i];
    }
}
