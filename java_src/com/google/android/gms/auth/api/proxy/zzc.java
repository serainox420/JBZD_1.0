package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<ProxyRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ProxyRequest proxyRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, proxyRequest.url, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, proxyRequest.httpMethod);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, proxyRequest.timeoutMillis);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, proxyRequest.body, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, proxyRequest.zzajR, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, proxyRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzU */
    public ProxyRequest createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        byte[] bArr = null;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 5:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ProxyRequest(i2, str, i, j, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbj */
    public ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
