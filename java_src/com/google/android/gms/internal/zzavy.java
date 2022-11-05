package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzavy implements Parcelable.Creator<zzavx> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzavx zzavxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzavxVar.zzOd(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzavxVar.zzOe(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzavxVar.zzOf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzavxVar.zzOg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzik */
    public zzavx createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzavx(iBinder2, iBinder, str, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlU */
    public zzavx[] newArray(int i) {
        return new zzavx[i];
    }
}
