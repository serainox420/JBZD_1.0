package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzvx;
/* loaded from: classes2.dex */
public class zzvw implements Parcelable.Creator<zzvx.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzvx.zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaVar.getNamespace(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaVar.getType(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaVar.getContent(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzab */
    public zzvx.zza createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzvx.zza(str2, str, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbr */
    public zzvx.zza[] newArray(int i) {
        return new zzvx.zza[i];
    }
}
