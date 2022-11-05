package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzu implements Parcelable.Creator<zzt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzt zztVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zztVar.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zztVar.zzDy());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zztVar.zzDz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zztVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzft */
    public zzt createFromParcel(Parcel parcel) {
        Boolean bool = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        Status status = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    bool = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel, zzaX);
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
        return new zzt(i, status, j, bool);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzig */
    public zzt[] newArray(int i) {
        return new zzt[i];
    }
}
