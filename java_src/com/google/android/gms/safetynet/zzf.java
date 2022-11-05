package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<zze> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zze zzeVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzeVar.zzbDb);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable[]) zzeVar.zzbDc, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjq */
    public zze createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        zzc[] zzcVarArr = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    zzcVarArr = (zzc[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzc.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zze(j, zzcVarArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzno */
    public zze[] newArray(int i) {
        return new zze[i];
    }
}
