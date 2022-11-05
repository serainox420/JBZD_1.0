package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzq implements Parcelable.Creator<zzp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzp zzpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzpVar.zzAQ(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzpVar.zzDw(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzpVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfq */
    public zzp createFromParcel(Parcel parcel) {
        DataHolder dataHolder;
        int zzg;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DataHolder dataHolder2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    DataHolder dataHolder3 = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    zzg = i;
                    arrayList = arrayList2;
                    dataHolder = dataHolder3;
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataHolder.CREATOR);
                    dataHolder = dataHolder2;
                    zzg = i;
                    break;
                case 1000:
                    ArrayList arrayList3 = arrayList2;
                    dataHolder = dataHolder2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    arrayList = arrayList3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    arrayList = arrayList2;
                    dataHolder = dataHolder2;
                    zzg = i;
                    break;
            }
            i = zzg;
            dataHolder2 = dataHolder;
            arrayList2 = arrayList;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzp(i, dataHolder2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzid */
    public zzp[] newArray(int i) {
        return new zzp[i];
    }
}
