package com.google.android.gms.fitness.result;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<zzj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzj zzjVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzjVar.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzjVar.zzDv(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzjVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfm */
    public zzj createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        Bundle bundle;
        Bundle bundle2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Status status3 = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    bundle = bundle2;
                    status = status3;
                    break;
                case 2:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    Bundle bundle3 = bundle2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    bundle = bundle3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    bundle = bundle2;
                    status = status2;
                    zzg = i;
                    break;
            }
            i = zzg;
            status2 = status;
            bundle2 = bundle;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzj(i, status2, bundle2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhZ */
    public zzj[] newArray(int i) {
        return new zzj[i];
    }
}
