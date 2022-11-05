package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzs implements Parcelable.Creator<zzr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzr zzrVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzrVar.zzaQj, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzrVar.zzaQy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzrVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdx */
    public zzr createFromParcel(Parcel parcel) {
        zzx zzxVar;
        int zzg;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        zzx zzxVar2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzx zzxVar3 = (zzx) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzx.CREATOR);
                    zzg = i;
                    arrayList = arrayList2;
                    zzxVar = zzxVar3;
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, FilterHolder.CREATOR);
                    zzxVar = zzxVar2;
                    zzg = i;
                    break;
                case 1000:
                    ArrayList arrayList3 = arrayList2;
                    zzxVar = zzxVar2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    arrayList = arrayList3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    arrayList = arrayList2;
                    zzxVar = zzxVar2;
                    zzg = i;
                    break;
            }
            i = zzg;
            zzxVar2 = zzxVar;
            arrayList2 = arrayList;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzr(i, zzxVar2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfX */
    public zzr[] newArray(int i) {
        return new zzr[i];
    }
}
