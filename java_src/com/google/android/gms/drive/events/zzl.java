package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<zzk> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzk zzkVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzkVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzkVar.zzaBi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzkVar.zzaLW);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzkVar.zzaLX);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbY */
    public zzk createFromParcel(Parcel parcel) {
        int zzg;
        boolean z;
        DataHolder dataHolder;
        int i;
        int i2 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataHolder dataHolder2 = null;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    int i4 = i2;
                    z = z2;
                    dataHolder = dataHolder2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i4;
                    break;
                case 2:
                    i = i3;
                    boolean z3 = z2;
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    zzg = i2;
                    z = z3;
                    break;
                case 3:
                    dataHolder = dataHolder2;
                    i = i3;
                    int i5 = i2;
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    zzg = i5;
                    break;
                case 4:
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    z = z2;
                    dataHolder = dataHolder2;
                    i = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzg = i2;
                    z = z2;
                    dataHolder = dataHolder2;
                    i = i3;
                    break;
            }
            i3 = i;
            dataHolder2 = dataHolder;
            z2 = z;
            i2 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzk(i3, dataHolder2, z2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzet */
    public zzk[] newArray(int i) {
        return new zzk[i];
    }
}
