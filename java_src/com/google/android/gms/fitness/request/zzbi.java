package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbi implements Parcelable.Creator<zzbh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbh zzbhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbhVar.getIntent(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbhVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbhVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeY */
    public zzbh createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        PendingIntent pendingIntent2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    PendingIntent pendingIntent3 = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    zzg = i;
                    iBinder = iBinder2;
                    pendingIntent = pendingIntent3;
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    pendingIntent = pendingIntent2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder3 = iBinder2;
                    pendingIntent = pendingIntent2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    pendingIntent = pendingIntent2;
                    zzg = i;
                    break;
            }
            i = zzg;
            pendingIntent2 = pendingIntent;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbh(i, pendingIntent2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhL */
    public zzbh[] newArray(int i) {
        return new zzbh[i];
    }
}
