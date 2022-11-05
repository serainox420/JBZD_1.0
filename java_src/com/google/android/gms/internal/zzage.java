package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzagf;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzage implements Parcelable.Creator<zzagf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzagf zzagfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzagfVar.zzaKv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzagfVar.zzaKw, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbJ */
    public zzagf createFromParcel(Parcel parcel) {
        int[] iArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzagf.zza.CREATOR);
                    break;
                case 3:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzagf(arrayList, iArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdY */
    public zzagf[] newArray(int i) {
        return new zzagf[i];
    }
}
