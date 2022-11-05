package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzt implements Parcelable.Creator<zzs> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzs zzsVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzsVar.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzsVar.address, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzsVar.zzbmI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzsVar.zzbmJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 5, zzsVar.zzbmK, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzsVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhn */
    public zzs createFromParcel(Parcel parcel) {
        ArrayList<String> arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 1000:
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
        return new zzs(i, str4, str3, str2, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkU */
    public zzs[] newArray(int i) {
        return new zzs[i];
    }
}
