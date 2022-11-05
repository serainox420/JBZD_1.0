package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<zzd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzd zzdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzdVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzdVar.zzaEW, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable[]) zzdVar.zzaEX, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzdVar.zzaEY, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzdVar.zzaEZ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaQ */
    public zzd createFromParcel(Parcel parcel) {
        Integer num = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Integer num2 = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Scope.CREATOR);
                    break;
                case 4:
                    num2 = com.google.android.gms.common.internal.safeparcel.zzb.zzh(parcel, zzaX);
                    break;
                case 5:
                    num = com.google.android.gms.common.internal.safeparcel.zzb.zzh(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzd(i, iBinder, scopeArr, num2, num);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcR */
    public zzd[] newArray(int i) {
        return new zzd[i];
    }
}
