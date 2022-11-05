package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.nearby.messages.Strategy;
/* loaded from: classes2.dex */
public class zzab implements Parcelable.Creator<zzaa> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaa zzaaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaaVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzaaVar.zzbBa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzaaVar.zzbBb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaaVar.zzOz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaaVar.zzbzI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaaVar.zzbAH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzaaVar.zzbBc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaaVar.zzOQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzaaVar.zzbzJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) zzaaVar.zzbAM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziU */
    public zzaa createFromParcel(Parcel parcel) {
        boolean z = false;
        ClientAppContext clientAppContext = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder = null;
        boolean z2 = false;
        String str = null;
        String str2 = null;
        IBinder iBinder2 = null;
        Strategy strategy = null;
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
                    strategy = (Strategy) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Strategy.CREATOR);
                    break;
                case 4:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
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
        return new zzaa(i, zzvVar, strategy, iBinder2, str2, str, z2, iBinder, z, clientAppContext);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmQ */
    public zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
