package com.google.android.gms.instantapps;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<LaunchData> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LaunchData launchData, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, (Parcelable) launchData.getIntent(), i, false);
        zzc.zza(parcel, 3, launchData.getPackageName(), false);
        zzc.zza(parcel, 4, launchData.getApplicationLabel(), false);
        zzc.zza(parcel, 5, (Parcelable) launchData.zzbih, i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgt */
    public LaunchData createFromParcel(Parcel parcel) {
        BitmapTeleporter bitmapTeleporter;
        String str;
        String str2;
        Intent intent;
        BitmapTeleporter bitmapTeleporter2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str3 = null;
        String str4 = null;
        Intent intent2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    BitmapTeleporter bitmapTeleporter3 = bitmapTeleporter2;
                    str = str3;
                    str2 = str4;
                    intent = (Intent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Intent.CREATOR);
                    bitmapTeleporter = bitmapTeleporter3;
                    break;
                case 3:
                    intent = intent2;
                    String str5 = str3;
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    bitmapTeleporter = bitmapTeleporter2;
                    str = str5;
                    break;
                case 4:
                    str2 = str4;
                    intent = intent2;
                    BitmapTeleporter bitmapTeleporter4 = bitmapTeleporter2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    bitmapTeleporter = bitmapTeleporter4;
                    break;
                case 5:
                    bitmapTeleporter = (BitmapTeleporter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, BitmapTeleporter.CREATOR);
                    str = str3;
                    str2 = str4;
                    intent = intent2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    bitmapTeleporter = bitmapTeleporter2;
                    str = str3;
                    str2 = str4;
                    intent = intent2;
                    break;
            }
            intent2 = intent;
            str4 = str2;
            str3 = str;
            bitmapTeleporter2 = bitmapTeleporter;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LaunchData(intent2, str4, str3, bitmapTeleporter2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjL */
    public LaunchData[] newArray(int i) {
        return new LaunchData[i];
    }
}
