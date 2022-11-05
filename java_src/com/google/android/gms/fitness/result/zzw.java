package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzw implements Parcelable.Creator<zzv> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzv zzvVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzvVar.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzvVar.zzDA());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzvVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfu */
    public zzv createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        long j;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    long j3 = j2;
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    j = j3;
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    long j4 = j2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    j = j4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    j = j2;
                    status = status2;
                    zzg = i;
                    break;
            }
            status2 = status;
            i = zzg;
            j2 = j;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzv(i, status2, j2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzih */
    public zzv[] newArray(int i) {
        return new zzv[i];
    }
}
