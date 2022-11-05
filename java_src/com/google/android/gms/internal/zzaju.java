package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaju implements Parcelable.Creator<zzajt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzajt zzajtVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzajtVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzajtVar.zzaOp, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzajtVar.zzaMN);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcK */
    public zzajt createFromParcel(Parcel parcel) {
        boolean zzc;
        DataHolder dataHolder;
        int i;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataHolder dataHolder2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    boolean z2 = z;
                    dataHolder = dataHolder2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzc = z2;
                    break;
                case 2:
                    DataHolder dataHolder3 = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    i = i2;
                    zzc = z;
                    dataHolder = dataHolder3;
                    break;
                case 3:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    dataHolder = dataHolder2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = z;
                    dataHolder = dataHolder2;
                    i = i2;
                    break;
            }
            i2 = i;
            dataHolder2 = dataHolder;
            z = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzajt(i2, dataHolder2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfk */
    public zzajt[] newArray(int i) {
        return new zzajt[i];
    }
}
