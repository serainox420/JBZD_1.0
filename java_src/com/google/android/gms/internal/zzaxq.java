package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaxq implements Parcelable.Creator<zzaxp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaxp zzaxpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaxpVar.zzOd(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaxpVar.zzOx(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzaxpVar.zzOp(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaxpVar.zzOy());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziA */
    public zzaxp createFromParcel(Parcel parcel) {
        boolean zzc;
        zzaxi zzaxiVar;
        String[] strArr;
        IBinder iBinder;
        zzaxi zzaxiVar2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        String[] strArr2 = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    boolean z2 = z;
                    zzaxiVar = zzaxiVar2;
                    strArr = strArr2;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    zzc = z2;
                    break;
                case 2:
                    iBinder = iBinder2;
                    zzaxi zzaxiVar3 = zzaxiVar2;
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    zzc = z;
                    zzaxiVar = zzaxiVar3;
                    break;
                case 3:
                    strArr = strArr2;
                    iBinder = iBinder2;
                    boolean z3 = z;
                    zzaxiVar = (zzaxi) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaxi.CREATOR);
                    zzc = z3;
                    break;
                case 4:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    zzaxiVar = zzaxiVar2;
                    strArr = strArr2;
                    iBinder = iBinder2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = z;
                    zzaxiVar = zzaxiVar2;
                    strArr = strArr2;
                    iBinder = iBinder2;
                    break;
            }
            iBinder2 = iBinder;
            strArr2 = strArr;
            zzaxiVar2 = zzaxiVar;
            z = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaxp(iBinder2, strArr2, zzaxiVar2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmp */
    public zzaxp[] newArray(int i) {
        return new zzaxp[i];
    }
}
