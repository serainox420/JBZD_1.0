package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzbjy implements Parcelable.Creator<zzbjx> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbjx zzbjxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbjxVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbjxVar.x);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbjxVar.y);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzbjxVar.type);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjP */
    public zzbjx createFromParcel(Parcel parcel) {
        int i = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f2 = 0.0f;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 3:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbjx(i2, f2, f, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzok */
    public zzbjx[] newArray(int i) {
        return new zzbjx[i];
    }
}
