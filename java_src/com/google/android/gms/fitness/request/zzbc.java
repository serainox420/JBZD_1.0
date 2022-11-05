package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbc implements Parcelable.Creator<zzbb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbb zzbbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbbVar.getIntent(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbbVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzbbVar.zzDl());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbbVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeV */
    public zzbb createFromParcel(Parcel parcel) {
        IBinder iBinder;
        PendingIntent pendingIntent;
        int zzg;
        int i;
        IBinder iBinder2 = null;
        int i2 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        PendingIntent pendingIntent2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i3;
                    IBinder iBinder3 = iBinder2;
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    i = i2;
                    iBinder = iBinder3;
                    break;
                case 2:
                    pendingIntent = pendingIntent2;
                    zzg = i3;
                    int i4 = i2;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    i = i4;
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder2;
                    pendingIntent = pendingIntent2;
                    zzg = i3;
                    break;
                case 1000:
                    int i5 = i2;
                    iBinder = iBinder2;
                    pendingIntent = pendingIntent2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    i = i5;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    i = i2;
                    iBinder = iBinder2;
                    pendingIntent = pendingIntent2;
                    zzg = i3;
                    break;
            }
            i3 = zzg;
            pendingIntent2 = pendingIntent;
            iBinder2 = iBinder;
            i2 = i;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbb(i3, pendingIntent2, iBinder2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhI */
    public zzbb[] newArray(int i) {
        return new zzbb[i];
    }
}
