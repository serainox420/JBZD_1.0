package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzavs implements Parcelable.Creator<zzavr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzavr zzavrVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzavrVar.zzNM(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzavrVar.getData(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzavrVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzavrVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzib */
    public zzavr createFromParcel(Parcel parcel) {
        byte[] bArr;
        zzauy zzauyVar;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        byte[] bArr2 = null;
        zzauy zzauyVar2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    byte[] bArr3 = bArr2;
                    zzauyVar = (zzauy) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzauy.CREATOR);
                    iBinder = iBinder2;
                    bArr = bArr3;
                    break;
                case 2:
                    zzauyVar = zzauyVar2;
                    zzg = i;
                    IBinder iBinder3 = iBinder2;
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    iBinder = iBinder3;
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    bArr = bArr2;
                    zzauyVar = zzauyVar2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder4 = iBinder2;
                    bArr = bArr2;
                    zzauyVar = zzauyVar2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    bArr = bArr2;
                    zzauyVar = zzauyVar2;
                    zzg = i;
                    break;
            }
            i = zzg;
            zzauyVar2 = zzauyVar;
            bArr2 = bArr;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzavr(i, zzauyVar2, bArr2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlL */
    public zzavr[] newArray(int i) {
        return new zzavr[i];
    }
}
