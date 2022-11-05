package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Goal;
/* loaded from: classes2.dex */
public class zzu implements Parcelable.Creator<Goal.MetricObjective> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Goal.MetricObjective metricObjective, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, metricObjective.getDataTypeName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, metricObjective.getValue());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, metricObjective.zzCw());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, metricObjective.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeg */
    public Goal.MetricObjective createFromParcel(Parcel parcel) {
        double d = 0.0d;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        double d2 = 0.0d;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    d2 = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 3:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
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
        return new Goal.MetricObjective(i, str, d2, d);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgQ */
    public Goal.MetricObjective[] newArray(int i) {
        return new Goal.MetricObjective[i];
    }
}
