package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzavq implements Parcelable.Creator<zzavp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzavp zzavpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzavpVar.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzavpVar.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzavpVar.zzNQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzavpVar.zzNR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzavpVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzavpVar.zzNK());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzavpVar.zzNP());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzavpVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzia */
    public zzavp createFromParcel(Parcel parcel) {
        byte b = 0;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        byte b2 = 0;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    b2 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 7:
                    b = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
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
        return new zzavp(i, str2, str, b2, b, iBinder3, iBinder2, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlK */
    public zzavp[] newArray(int i) {
        return new zzavp[i];
    }
}
