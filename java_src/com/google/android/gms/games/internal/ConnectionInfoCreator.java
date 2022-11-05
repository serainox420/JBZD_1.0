package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class ConnectionInfoCreator implements Parcelable.Creator<ConnectionInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ConnectionInfo connectionInfo, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, connectionInfo.zzEM(), false);
        zzc.zzc(parcel, 2, connectionInfo.zzEN());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfI */
    public ConnectionInfo createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ConnectionInfo(str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziG */
    public ConnectionInfo[] newArray(int i) {
        return new ConnectionInfo[i];
    }
}
