package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzag implements Parcelable.Creator<zzaf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaf zzafVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzafVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzafVar.zzbBa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzafVar.zzOz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzafVar.zzbzI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzafVar.zzbAH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzafVar.zzbzJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) zzafVar.zzbAM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziX */
    public zzaf createFromParcel(Parcel parcel) {
        boolean z = false;
        ClientAppContext clientAppContext = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        zzv zzvVar = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzvVar = (zzv) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzv.CREATOR);
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
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
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
        return new zzaf(i, zzvVar, iBinder, str2, str, z, clientAppContext);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmT */
    public zzaf[] newArray(int i) {
        return new zzaf[i];
    }
}
