package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzbke implements Parcelable.Creator<zzbkd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbkd zzbkdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbkdVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzbkdVar.left);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzbkdVar.top);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzbkdVar.width);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzbkdVar.height);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzbkdVar.zzbPv);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjR */
    public zzbkd createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbkd(i5, i4, i3, i2, i, f);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzon */
    public zzbkd[] newArray(int i) {
        return new zzbkd[i];
    }
}
