package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbmy implements Parcelable.Creator<zzbmx> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbmx zzbmxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbmxVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbmxVar.zzWm(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbmxVar.zzWn(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzbmxVar.getIdToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzbmxVar.getAccessToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzbmxVar.getProviderId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzbmxVar.getEmail(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzbmxVar.zzgo(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzbmxVar.zzWo(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzbmxVar.zzWp());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlM */
    public zzbmx createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbmx(i, str8, str7, str6, str5, str4, str3, str2, str, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzqt */
    public zzbmx[] newArray(int i) {
        return new zzbmx[i];
    }
}
