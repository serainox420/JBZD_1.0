package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbax implements Parcelable.Creator<zzbaw> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbaw zzbawVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbawVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbawVar.zzyh(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzbawVar.zzPU(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjy */
    public zzbaw createFromParcel(Parcel parcel) {
        com.google.android.gms.common.internal.zzaf zzafVar;
        ConnectionResult connectionResult;
        int i;
        com.google.android.gms.common.internal.zzaf zzafVar2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    com.google.android.gms.common.internal.zzaf zzafVar3 = zzafVar2;
                    connectionResult = connectionResult2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzafVar = zzafVar3;
                    break;
                case 2:
                    ConnectionResult connectionResult3 = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ConnectionResult.CREATOR);
                    i = i2;
                    zzafVar = zzafVar2;
                    connectionResult = connectionResult3;
                    break;
                case 3:
                    zzafVar = (com.google.android.gms.common.internal.zzaf) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.common.internal.zzaf.CREATOR);
                    connectionResult = connectionResult2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzafVar = zzafVar2;
                    connectionResult = connectionResult2;
                    i = i2;
                    break;
            }
            i2 = i;
            connectionResult2 = connectionResult;
            zzafVar2 = zzafVar;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbaw(i2, connectionResult2, zzafVar2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzny */
    public zzbaw[] newArray(int i) {
        return new zzbaw[i];
    }
}
