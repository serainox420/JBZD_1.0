package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<ProxyResponse> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ProxyResponse proxyResponse, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, proxyResponse.googlePlayServicesStatusCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) proxyResponse.recoveryAction, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, proxyResponse.statusCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, proxyResponse.zzajR, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, proxyResponse.body, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, proxyResponse.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzV */
    public ProxyResponse createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Bundle bundle = null;
        PendingIntent pendingIntent = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 5:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 1000:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ProxyResponse(i3, i2, pendingIntent, i, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbk */
    public ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
