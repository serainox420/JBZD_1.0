package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<FilterHolder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(FilterHolder filterHolder, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) filterHolder.zzaQn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) filterHolder.zzaQo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) filterHolder.zzaQp, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) filterHolder.zzaQq, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) filterHolder.zzaQr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) filterHolder.zzaQs, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) filterHolder.zzaQt, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, filterHolder.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) filterHolder.zzaQu, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) filterHolder.zzaQv, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdt */
    public FilterHolder createFromParcel(Parcel parcel) {
        zzz zzzVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        zzl zzlVar = null;
        zzn zznVar = null;
        zzt zztVar = null;
        zzp zzpVar = null;
        zzv zzvVar = null;
        zzr zzrVar = null;
        zzd zzdVar = null;
        zzb zzbVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzbVar = (zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzb.CREATOR);
                    break;
                case 2:
                    zzdVar = (zzd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzd.CREATOR);
                    break;
                case 3:
                    zzrVar = (zzr) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzr.CREATOR);
                    break;
                case 4:
                    zzvVar = (zzv) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzv.CREATOR);
                    break;
                case 5:
                    zzpVar = (zzp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzp.CREATOR);
                    break;
                case 6:
                    zztVar = (zzt) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzt.CREATOR);
                    break;
                case 7:
                    zznVar = (zzn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzn.CREATOR);
                    break;
                case 8:
                    zzlVar = (zzl) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzl.CREATOR);
                    break;
                case 9:
                    zzzVar = (zzz) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzz.CREATOR);
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
        return new FilterHolder(i, zzbVar, zzdVar, zzrVar, zzvVar, zzpVar, zztVar, zznVar, zzlVar, zzzVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfT */
    public FilterHolder[] newArray(int i) {
        return new FilterHolder[i];
    }
}
