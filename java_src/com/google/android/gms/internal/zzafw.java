package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzafu;
/* loaded from: classes2.dex */
public class zzafw implements Parcelable.Creator<zzafu.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzafu.zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzaVar.type);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzaVar.zzaKo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaVar.zzaKp, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbE */
    public zzafu.zza createFromParcel(Parcel parcel) {
        String zzq;
        zzcg zzcgVar;
        int i;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        zzcg zzcgVar2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String str2 = str;
                    zzcgVar = zzcgVar2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str2;
                    break;
                case 3:
                    zzcg zzcgVar3 = (zzcg) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzcg.CREATOR);
                    i = i2;
                    zzq = str;
                    zzcgVar = zzcgVar3;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzcgVar = zzcgVar2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    zzcgVar = zzcgVar2;
                    i = i2;
                    break;
            }
            i2 = i;
            zzcgVar2 = zzcgVar;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzafu.zza(i2, zzcgVar2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdT */
    public zzafu.zza[] newArray(int i) {
        return new zzafu.zza[i];
    }
}
