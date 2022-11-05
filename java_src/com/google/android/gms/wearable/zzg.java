package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzg implements Parcelable.Creator<ConnectionConfiguration> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ConnectionConfiguration connectionConfiguration, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, connectionConfiguration.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, connectionConfiguration.getAddress(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, connectionConfiguration.getType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, connectionConfiguration.getRole());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, connectionConfiguration.isEnabled());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, connectionConfiguration.isConnected());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, connectionConfiguration.zzUe(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, connectionConfiguration.zzUf());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, connectionConfiguration.getNodeId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkL */
    public ConnectionConfiguration createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
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
        return new ConnectionConfiguration(str4, str3, i2, i, z3, z2, str2, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpk */
    public ConnectionConfiguration[] newArray(int i) {
        return new ConnectionConfiguration[i];
    }
}
