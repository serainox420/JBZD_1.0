package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzeh implements Parcelable.Creator<zzeg> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzeg zzegVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzegVar.zzzy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzegVar.height);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzegVar.heightPixels);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzegVar.zzzz);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzegVar.width);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzegVar.widthPixels);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable[]) zzegVar.zzzA, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzegVar.zzzB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzegVar.zzzC);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzegVar.zzzD);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzf */
    public zzeg createFromParcel(Parcel parcel) {
        zzeg[] zzegVarArr = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        boolean z4 = false;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    z4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    zzegVarArr = (zzeg[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzeg.CREATOR);
                    break;
                case 9:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 11:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzeg(str, i4, i3, z4, i2, i, zzegVarArr, z3, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzw */
    public zzeg[] newArray(int i) {
        return new zzeg[i];
    }
}
