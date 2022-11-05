package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzue implements Parcelable.Creator<zzud> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzud zzudVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzudVar.zzahP, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzudVar.zzahQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzudVar.zzahR);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzudVar.zzAT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzudVar.zzahS, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzudVar.zzahT);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzudVar.zzahU);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, zzudVar.zzahV);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzF */
    public zzud createFromParcel(Parcel parcel) {
        zztp zztpVar = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        int i2 = -1;
        boolean z = false;
        String str = null;
        int i3 = 0;
        zztr zztrVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zztrVar = (zztr) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zztr.CREATOR);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    zztpVar = (zztp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zztp.CREATOR);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
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
        return new zzud(zztrVar, j, i3, str, zztpVar, z, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaU */
    public zzud[] newArray(int i) {
        return new zzud[i];
    }
}
