package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzavi implements Parcelable.Creator<zzavh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzavh zzavhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzavhVar.zzNM(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzavhVar.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzavhVar.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzavhVar.zzNQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzavhVar.zzNR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzavhVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzavhVar.zzNK());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzavhVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzavhVar.zzNN());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzavhVar.getToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzavhVar.zzNO());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzavhVar.zzNP());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhW */
    public zzavh createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        zzauy zzauyVar = null;
        String str = null;
        String str2 = null;
        byte b = 0;
        long j = 0;
        String str3 = null;
        byte b2 = 0;
        byte b3 = 0;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzauyVar = (zzauy) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzauy.CREATOR);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 7:
                    b = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    b2 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 11:
                    b3 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzavh(i, zzauyVar, str, str2, b, j, str3, b2, b3, iBinder, iBinder2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlG */
    public zzavh[] newArray(int i) {
        return new zzavh[i];
    }
}
