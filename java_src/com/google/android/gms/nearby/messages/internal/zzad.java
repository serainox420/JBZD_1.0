package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzad implements Parcelable.Creator<zzac> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzac zzacVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzacVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzacVar.zzOz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzacVar.zzOR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzacVar.zzbBf);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzacVar.zzbzI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzacVar.zzbAM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziV */
    public zzac createFromParcel(Parcel parcel) {
        boolean z = false;
        ClientAppContext clientAppContext = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    clientAppContext = (ClientAppContext) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ClientAppContext.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzac(i, iBinder2, iBinder, z, str, clientAppContext);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmR */
    public zzac[] newArray(int i) {
        return new zzac[i];
    }
}
