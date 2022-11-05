package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzasn implements Parcelable.Creator<zzasm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzasm zzasmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzasmVar.getRequestId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzasmVar.getExpirationTime());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzasmVar.zzIu());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzasmVar.getLatitude());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzasmVar.getLongitude());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzasmVar.getRadius());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzasmVar.zzIv());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, zzasmVar.zzIw());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzasmVar.zzIx());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgX */
    public zzasm createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        short s = 0;
        double d = 0.0d;
        double d2 = 0.0d;
        float f = BitmapDescriptorFactory.HUE_RED;
        long j = 0;
        int i2 = 0;
        int i3 = -1;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    s = com.google.android.gms.common.internal.safeparcel.zzb.zzf(parcel, zzaX);
                    break;
                case 4:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 5:
                    d2 = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 6:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzasm(str, i, s, d, d2, f, j, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkC */
    public zzasm[] newArray(int i) {
        return new zzasm[i];
    }
}
