package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaxs implements Parcelable.Creator<zzaxr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaxr zzaxrVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaxrVar.zzOd(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaxrVar.zzOz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaxrVar.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaxrVar.zzOn(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaxrVar.zzyK());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzaxrVar.zzOA(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziB */
    public zzaxr createFromParcel(Parcel parcel) {
        com.google.android.gms.nearby.connection.zza zzaVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 6:
                    zzaVar = (com.google.android.gms.nearby.connection.zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.nearby.connection.zza.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaxr(iBinder2, iBinder, str2, str, j, zzaVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmq */
    public zzaxr[] newArray(int i) {
        return new zzaxr[i];
    }
}
