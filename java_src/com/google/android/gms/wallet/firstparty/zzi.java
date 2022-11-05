package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<zzh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzh zzhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzhVar.zzbRG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzhVar.zzbRH);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzku */
    public zzh createFromParcel(Parcel parcel) {
        boolean zzc;
        zzm zzmVar;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzm zzmVar2 = null;
        boolean z = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    boolean z2 = z;
                    zzmVar = (zzm) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzm.CREATOR);
                    zzc = z2;
                    break;
                case 3:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    zzmVar = zzmVar2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = z;
                    zzmVar = zzmVar2;
                    break;
            }
            zzmVar2 = zzmVar;
            z = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzh(zzmVar2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoQ */
    public zzh[] newArray(int i) {
        return new zzh[i];
    }
}
