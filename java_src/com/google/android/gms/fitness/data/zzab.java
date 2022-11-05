package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzab implements Parcelable.Creator<zzaa> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaa zzaaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzaaVar.getSession(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzaaVar.getDataSet(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzaaVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzem */
    public zzaa createFromParcel(Parcel parcel) {
        Session session;
        int zzg;
        DataSet dataSet;
        DataSet dataSet2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Session session2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Session session3 = (Session) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Session.CREATOR);
                    zzg = i;
                    dataSet = dataSet2;
                    session = session3;
                    break;
                case 2:
                    dataSet = (DataSet) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSet.CREATOR);
                    session = session2;
                    zzg = i;
                    break;
                case 1000:
                    DataSet dataSet3 = dataSet2;
                    session = session2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    dataSet = dataSet3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    dataSet = dataSet2;
                    session = session2;
                    zzg = i;
                    break;
            }
            i = zzg;
            session2 = session;
            dataSet2 = dataSet;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaa(i, session2, dataSet2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgX */
    public zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
