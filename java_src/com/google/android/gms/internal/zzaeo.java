package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaeo implements Parcelable.Creator<zzaen> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaen zzaenVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaenVar.zzaJm, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzaenVar.zzaJn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaenVar.zzaJo);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbr */
    public zzaen createFromParcel(Parcel parcel) {
        long zzi;
        zzaep zzaepVar;
        String str;
        zzaep zzaepVar2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    long j2 = j;
                    zzaepVar = zzaepVar2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzi = j2;
                    break;
                case 3:
                    long j3 = j;
                    zzaepVar = (zzaep) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaep.CREATOR);
                    str = str2;
                    zzi = j3;
                    break;
                case 4:
                    zzi = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    zzaepVar = zzaepVar2;
                    str = str2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzi = j;
                    zzaepVar = zzaepVar2;
                    str = str2;
                    break;
            }
            zzaepVar2 = zzaepVar;
            str2 = str;
            j = zzi;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaen(str2, zzaepVar2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdF */
    public zzaen[] newArray(int i) {
        return new zzaen[i];
    }
}
