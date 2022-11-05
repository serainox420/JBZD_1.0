package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<ActivityRecognitionResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, activityRecognitionResult.zzbjq, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, activityRecognitionResult.zzbjr);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, activityRecognitionResult.zzbjs);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, activityRecognitionResult.zzbjt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, activityRecognitionResult.extras, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgG */
    public ActivityRecognitionResult createFromParcel(Parcel parcel) {
        long j = 0;
        Bundle bundle = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DetectedActivity.CREATOR);
                    break;
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ActivityRecognitionResult(arrayList, j2, j, i, bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkb */
    public ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
