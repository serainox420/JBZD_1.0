package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<DataHolder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataHolder dataHolder, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, dataHolder.zzxl(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable[]) dataHolder.zzxm(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, dataHolder.getStatusCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, dataHolder.zzxf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataHolder.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaO */
    public DataHolder createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        CursorWindow[] cursorWindowArr = null;
        String[] strArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 2:
                    cursorWindowArr = (CursorWindow[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, CursorWindow.CREATOR);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
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
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i, bundle);
        dataHolder.zzxk();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcL */
    public DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
