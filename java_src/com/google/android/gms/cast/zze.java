package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<CastDevice> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CastDevice castDevice, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, castDevice.zzsh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, castDevice.zzann, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, castDevice.getFriendlyName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, castDevice.getModelName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, castDevice.getDeviceVersion(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, castDevice.getServicePort());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, castDevice.getIcons(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, castDevice.getCapabilities());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, castDevice.getStatus());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, castDevice.zzsi(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzar */
    public CastDevice createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = -1;
        ArrayList arrayList = null;
        int i3 = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, WebImage.CREATOR);
                    break;
                case 9:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 11:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CastDevice(str6, str5, str4, str3, str2, i3, arrayList, i, i2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbK */
    public CastDevice[] newArray(int i) {
        return new CastDevice[i];
    }
}
