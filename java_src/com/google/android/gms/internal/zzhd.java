package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzhd implements Parcelable.Creator<zzhc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzhc zzhcVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzhcVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzhcVar.zzHa);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzhcVar.zzHb);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzhcVar.zzHc);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzhcVar.zzHd);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzhcVar.zzHe, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzD */
    public zzhc[] newArray(int i) {
        return new zzhc[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzj */
    public zzhc createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzft zzftVar = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    zzftVar = (zzft) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzft.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzhc(i3, z2, i2, z, i, zzftVar);
    }
}
