package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.ActivityRecognitionResult;
/* loaded from: classes2.dex */
public class zzwm implements Parcelable.Creator<zzwk> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzwk zzwkVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzwkVar.getActivityRecognitionResult(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzwkVar.zzrR(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzwkVar.zzrS(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzwkVar.getLocation(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzwkVar.zzrT(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) zzwkVar.zzrU(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzwkVar.zzrV(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzwkVar.zzrW(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) zzwkVar.zzrX(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable) zzwkVar.zzrY(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzai */
    public zzwk createFromParcel(Parcel parcel) {
        zzwq zzwqVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzwt zzwtVar = null;
        zzwi zzwiVar = null;
        zzwg zzwgVar = null;
        DataHolder dataHolder = null;
        zzwb zzwbVar = null;
        Location location = null;
        zzvz zzvzVar = null;
        zzvx zzvxVar = null;
        ActivityRecognitionResult activityRecognitionResult = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    activityRecognitionResult = (ActivityRecognitionResult) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ActivityRecognitionResult.CREATOR);
                    break;
                case 3:
                    zzvxVar = (zzvx) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzvx.CREATOR);
                    break;
                case 4:
                    zzvzVar = (zzvz) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzvz.CREATOR);
                    break;
                case 5:
                    location = (Location) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Location.CREATOR);
                    break;
                case 6:
                    zzwbVar = (zzwb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzwb.CREATOR);
                    break;
                case 7:
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    break;
                case 8:
                    zzwgVar = (zzwg) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzwg.CREATOR);
                    break;
                case 9:
                    zzwiVar = (zzwi) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzwi.CREATOR);
                    break;
                case 10:
                    zzwtVar = (zzwt) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzwt.CREATOR);
                    break;
                case 11:
                    zzwqVar = (zzwq) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzwq.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzwk(activityRecognitionResult, zzvxVar, zzvzVar, location, zzwbVar, dataHolder, zzwgVar, zzwiVar, zzwtVar, zzwqVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbB */
    public zzwk[] newArray(int i) {
        return new zzwk[i];
    }
}
