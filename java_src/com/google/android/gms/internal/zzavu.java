package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzavu implements Parcelable.Creator<zzavt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzavt zzavtVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzavtVar.zzNS(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzavtVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzavtVar.zzNP());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzavtVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzic */
    public zzavt createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        byte b = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder2 = null;
        int i = 0;
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
        return new zzavt(i, b, iBinder2, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlM */
    public zzavt[] newArray(int i) {
        return new zzavt[i];
    }
}
