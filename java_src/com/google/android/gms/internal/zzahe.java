package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzahe implements Parcelable.Creator<zzahd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzahd zzahdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzahdVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzahdVar.zzaMr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzahdVar.zzaMv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzahdVar.zzaMt);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcl */
    public zzahd createFromParcel(Parcel parcel) {
        int zzg;
        Boolean bool;
        com.google.android.gms.drive.zzc zzcVar;
        int i;
        Boolean bool2 = null;
        int i2 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        com.google.android.gms.drive.zzc zzcVar2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    int i4 = i2;
                    bool = bool2;
                    zzcVar = zzcVar2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i4;
                    break;
                case 2:
                    i = i3;
                    Boolean bool3 = bool2;
                    zzcVar = (com.google.android.gms.drive.zzc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.zzc.CREATOR);
                    zzg = i2;
                    bool = bool3;
                    break;
                case 3:
                    zzcVar = zzcVar2;
                    i = i3;
                    int i5 = i2;
                    bool = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel, zzaX);
                    zzg = i5;
                    break;
                case 4:
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    bool = bool2;
                    zzcVar = zzcVar2;
                    i = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzg = i2;
                    bool = bool2;
                    zzcVar = zzcVar2;
                    i = i3;
                    break;
            }
            i3 = i;
            zzcVar2 = zzcVar;
            bool2 = bool;
            i2 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzahd(i3, zzcVar2, bool2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeG */
    public zzahd[] newArray(int i) {
        return new zzahd[i];
    }
}
