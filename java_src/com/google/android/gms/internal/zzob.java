package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzob implements Parcelable.Creator<zzoa> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzoa zzoaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzoaVar.zzRy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzoaVar.zzvl, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzac */
    public zzoa[] newArray(int i) {
        return new zzoa[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzt */
    public zzoa createFromParcel(Parcel parcel) {
        String zzq;
        zzec zzecVar;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzec zzecVar2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String str2 = str;
                    zzecVar = (zzec) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzec.CREATOR);
                    zzq = str2;
                    break;
                case 3:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzecVar = zzecVar2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    zzecVar = zzecVar2;
                    break;
            }
            zzecVar2 = zzecVar;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzoa(zzecVar2, str);
    }
}
