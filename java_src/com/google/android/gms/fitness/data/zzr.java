package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Goal;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class zzr implements Parcelable.Creator<Goal> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Goal goal, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, goal.zzCq());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, goal.zzCr());
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 3, goal.zzCs(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) goal.getRecurrence(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, goal.getObjectiveType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) goal.zzCt(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) goal.zzCu(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, goal.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) goal.zzCv(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzee */
    public Goal createFromParcel(Parcel parcel) {
        long j = 0;
        int i = 0;
        Goal.FrequencyObjective frequencyObjective = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = new ArrayList();
        Goal.DurationObjective durationObjective = null;
        Goal.MetricObjective metricObjective = null;
        Goal.Recurrence recurrence = null;
        long j2 = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList, getClass().getClassLoader());
                    break;
                case 4:
                    recurrence = (Goal.Recurrence) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Goal.Recurrence.CREATOR);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    metricObjective = (Goal.MetricObjective) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Goal.MetricObjective.CREATOR);
                    break;
                case 7:
                    durationObjective = (Goal.DurationObjective) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Goal.DurationObjective.CREATOR);
                    break;
                case 8:
                    frequencyObjective = (Goal.FrequencyObjective) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Goal.FrequencyObjective.CREATOR);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Goal(i2, j2, j, arrayList, recurrence, i, metricObjective, durationObjective, frequencyObjective);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgO */
    public Goal[] newArray(int i) {
        return new Goal[i];
    }
}
