package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wearable.ConnectionConfiguration;
/* loaded from: classes2.dex */
public class zzbi implements Parcelable.Creator<zzbh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbh zzbhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzbhVar.statusCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzbhVar.zzbUz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlh */
    public zzbh createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ConnectionConfiguration connectionConfiguration = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    connectionConfiguration = (ConnectionConfiguration) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ConnectionConfiguration.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbh(i, connectionConfiguration);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpJ */
    public zzbh[] newArray(int i) {
        return new zzbh[i];
    }
}
