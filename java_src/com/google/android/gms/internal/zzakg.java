package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzakg implements Parcelable.Creator<zzakf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzakf zzakfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzakfVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzakfVar.zzaOs, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzakfVar.zzaOt, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzakfVar.zzxB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcQ */
    public zzakf createFromParcel(Parcel parcel) {
        String zzq;
        IBinder iBinder;
        ParcelFileDescriptor parcelFileDescriptor;
        int i;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        IBinder iBinder2 = null;
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String str2 = str;
                    iBinder = iBinder2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str2;
                    break;
                case 2:
                    i = i2;
                    IBinder iBinder3 = iBinder2;
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    zzq = str;
                    iBinder = iBinder3;
                    break;
                case 3:
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i2;
                    String str3 = str;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    zzq = str3;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    iBinder = iBinder2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    iBinder = iBinder2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i2;
                    break;
            }
            i2 = i;
            parcelFileDescriptor2 = parcelFileDescriptor;
            iBinder2 = iBinder;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzakf(i2, parcelFileDescriptor2, iBinder2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfq */
    public zzakf[] newArray(int i) {
        return new zzakf[i];
    }
}
