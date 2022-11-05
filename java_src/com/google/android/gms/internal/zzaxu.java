package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaxu implements Parcelable.Creator<zzaxt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaxt zzaxtVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaxtVar.zzOd(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaxtVar.zzOz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaxtVar.zzOn(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaxtVar.zzyK());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzaxtVar.zzOB(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziC */
    public zzaxt createFromParcel(Parcel parcel) {
        com.google.android.gms.nearby.connection.zze zzeVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        String str = null;
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
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    zzeVar = (com.google.android.gms.nearby.connection.zze) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.nearby.connection.zze.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaxt(iBinder2, iBinder, str, j, zzeVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmr */
    public zzaxt[] newArray(int i) {
        return new zzaxt[i];
    }
}
