package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzuc implements Parcelable.Creator<zzub> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzub zzubVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzubVar.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzubVar.zzahB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzubVar.zzahC);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzubVar.weight);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzubVar.zzahD);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzubVar.zzahE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable[]) zzubVar.zzahF, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzubVar.zzahG, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzubVar.zzahH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzE */
    public zzub createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 1;
        int[] iArr = null;
        zztv[] zztvVarArr = null;
        String str2 = null;
        boolean z2 = false;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    zztvVarArr = (zztv[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zztv.CREATOR);
                    break;
                case 8:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                case 9:
                case 10:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 11:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzub(str4, str3, z2, i, z, str2, zztvVarArr, iArr, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaR */
    public zzub[] newArray(int i) {
        return new zzub[i];
    }
}
