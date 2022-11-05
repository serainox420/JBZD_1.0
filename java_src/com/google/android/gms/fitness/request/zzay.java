package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzay implements Parcelable.Creator<zzax> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzax zzaxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaxVar.zzDh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzaxVar.getIntent(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaxVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzaxVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeS */
    public zzax createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent;
        IBinder iBinder;
        int zzg;
        IBinder iBinder2;
        IBinder iBinder3 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        PendingIntent pendingIntent2 = null;
        IBinder iBinder4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    PendingIntent pendingIntent3 = pendingIntent2;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    iBinder2 = iBinder3;
                    pendingIntent = pendingIntent3;
                    break;
                case 2:
                    iBinder = iBinder4;
                    zzg = i;
                    IBinder iBinder5 = iBinder3;
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    iBinder2 = iBinder5;
                    break;
                case 3:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    pendingIntent = pendingIntent2;
                    iBinder = iBinder4;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder6 = iBinder3;
                    pendingIntent = pendingIntent2;
                    iBinder = iBinder4;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder2 = iBinder6;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder2 = iBinder3;
                    pendingIntent = pendingIntent2;
                    iBinder = iBinder4;
                    zzg = i;
                    break;
            }
            i = zzg;
            iBinder4 = iBinder;
            pendingIntent2 = pendingIntent;
            iBinder3 = iBinder2;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzax(i, iBinder4, pendingIntent2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhF */
    public zzax[] newArray(int i) {
        return new zzax[i];
    }
}
