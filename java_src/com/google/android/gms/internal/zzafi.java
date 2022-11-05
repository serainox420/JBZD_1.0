package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzafi implements Parcelable.Creator<zzafh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzafh zzafhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzafhVar.type);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzafhVar.zzaJE, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzafhVar.zzAh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzafhVar.zzaJH, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzafhVar.zzaJv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzafhVar.zzaJI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzafhVar.zzaJJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbz */
    public zzafh createFromParcel(Parcel parcel) {
        long j = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        PendingIntent pendingIntent = null;
        IBinder iBinder = null;
        zzaen zzaenVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    zzaenVar = (zzaen) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaen.CREATOR);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzafh(i, zzaenVar, iBinder, pendingIntent, str, j2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdO */
    public zzafh[] newArray(int i) {
        return new zzafh[i];
    }
}
