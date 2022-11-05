package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<BleDevice> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(BleDevice bleDevice, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, bleDevice.getAddress(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, bleDevice.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 3, bleDevice.getSupportedProfiles(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, bleDevice.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, bleDevice.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdT */
    public BleDevice createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ArrayList<String> arrayList2 = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
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
        return new BleDevice(i, str2, str, arrayList2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgv */
    public BleDevice[] newArray(int i) {
        return new BleDevice[i];
    }
}
