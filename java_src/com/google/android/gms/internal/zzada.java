package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzada implements Parcelable.Creator<zzacz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzacz zzaczVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaczVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaczVar.zzyH(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzaczVar.zzyI(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbi */
    public zzacz createFromParcel(Parcel parcel) {
        zzacw zzacwVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Parcel parcel2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    parcel2 = com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzaX);
                    break;
                case 3:
                    zzacwVar = (zzacw) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzacw.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzacz(i, parcel2, zzacwVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdm */
    public zzacz[] newArray(int i) {
        return new zzacz[i];
    }
}
