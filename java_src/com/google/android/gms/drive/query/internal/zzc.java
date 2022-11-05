package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzb zzbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbVar.zzaQj, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbVar.zzaQk, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdq */
    public zzb createFromParcel(Parcel parcel) {
        zzx zzxVar;
        int zzg;
        MetadataBundle metadataBundle;
        MetadataBundle metadataBundle2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        zzx zzxVar2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzx zzxVar3 = (zzx) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzx.CREATOR);
                    zzg = i;
                    metadataBundle = metadataBundle2;
                    zzxVar = zzxVar3;
                    break;
                case 2:
                    metadataBundle = (MetadataBundle) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MetadataBundle.CREATOR);
                    zzxVar = zzxVar2;
                    zzg = i;
                    break;
                case 1000:
                    MetadataBundle metadataBundle3 = metadataBundle2;
                    zzxVar = zzxVar2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    metadataBundle = metadataBundle3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    metadataBundle = metadataBundle2;
                    zzxVar = zzxVar2;
                    zzg = i;
                    break;
            }
            i = zzg;
            zzxVar2 = zzxVar;
            metadataBundle2 = metadataBundle;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzb(i, zzxVar2, metadataBundle2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfQ */
    public zzb[] newArray(int i) {
        return new zzb[i];
    }
}
