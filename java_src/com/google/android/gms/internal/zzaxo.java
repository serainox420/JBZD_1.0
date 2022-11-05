package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaxo implements Parcelable.Creator<zzaxn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaxn zzaxnVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaxnVar.zzOd(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaxnVar.zzOe(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaxnVar.zzOw(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaxnVar.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaxnVar.zzOf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaxnVar.zzOg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziz */
    public zzaxn createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 2:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
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
        return new zzaxn(iBinder3, iBinder2, iBinder, str2, str, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmo */
    public zzaxn[] newArray(int i) {
        return new zzaxn[i];
    }
}
