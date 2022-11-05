package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzafk;
/* loaded from: classes2.dex */
public class zzafl implements Parcelable.Creator<zzafk.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzafk.zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzaVar.zzaJN);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzaVar.name);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaVar.zzaJO, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzaVar.zzaJP, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbB */
    public zzafk.zza createFromParcel(Parcel parcel) {
        zzafx zzafxVar;
        zzagf zzagfVar;
        int i;
        int i2;
        zzafx zzafxVar2 = null;
        int i3 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzagf zzagfVar2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    zzafx zzafxVar3 = zzafxVar2;
                    zzagfVar = zzagfVar2;
                    i = i3;
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzafxVar = zzafxVar3;
                    break;
                case 3:
                    i2 = i4;
                    zzagf zzagfVar3 = zzagfVar2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzafxVar = zzafxVar2;
                    zzagfVar = zzagfVar3;
                    break;
                case 4:
                    i = i3;
                    i2 = i4;
                    zzafx zzafxVar4 = zzafxVar2;
                    zzagfVar = (zzagf) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzagf.CREATOR);
                    zzafxVar = zzafxVar4;
                    break;
                case 5:
                    zzafxVar = (zzafx) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzafx.CREATOR);
                    zzagfVar = zzagfVar2;
                    i = i3;
                    i2 = i4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzafxVar = zzafxVar2;
                    zzagfVar = zzagfVar2;
                    i = i3;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            i3 = i;
            zzagfVar2 = zzagfVar;
            zzafxVar2 = zzafxVar;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzafk.zza(i4, i3, zzagfVar2, zzafxVar2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdQ */
    public zzafk.zza[] newArray(int i) {
        return new zzafk.zza[i];
    }
}
