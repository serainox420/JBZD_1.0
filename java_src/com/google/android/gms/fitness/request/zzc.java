package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.BleDevice;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzb zzbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzbVar.getDeviceAddress(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbVar.zzCM(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzes */
    public zzb createFromParcel(Parcel parcel) {
        BleDevice bleDevice;
        String str;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        BleDevice bleDevice2 = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    BleDevice bleDevice3 = bleDevice2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    iBinder = iBinder2;
                    bleDevice = bleDevice3;
                    break;
                case 2:
                    str = str2;
                    zzg = i;
                    IBinder iBinder3 = iBinder2;
                    bleDevice = (BleDevice) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, BleDevice.CREATOR);
                    iBinder = iBinder3;
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    bleDevice = bleDevice2;
                    str = str2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder4 = iBinder2;
                    bleDevice = bleDevice2;
                    str = str2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    bleDevice = bleDevice2;
                    str = str2;
                    zzg = i;
                    break;
            }
            i = zzg;
            str2 = str;
            bleDevice2 = bleDevice;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzb(i, str2, bleDevice2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhf */
    public zzb[] newArray(int i) {
        return new zzb[i];
    }
}
