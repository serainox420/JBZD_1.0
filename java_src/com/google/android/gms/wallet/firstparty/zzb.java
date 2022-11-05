package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaVar.zzbRA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaVar.zzbRB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaVar.zzbRC, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkr */
    public zza createFromParcel(Parcel parcel) {
        zzm zzmVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        byte[] bArr = null;
        byte[] bArr2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    bArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 3:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 4:
                    zzmVar = (zzm) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzm.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zza(bArr2, bArr, zzmVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoN */
    public zza[] newArray(int i) {
        return new zza[i];
    }
}
