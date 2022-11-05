package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSet;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<zzg> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzg zzgVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzgVar.getDataSet(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzgVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzgVar.zzCR());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzgVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzev */
    public zzg createFromParcel(Parcel parcel) {
        IBinder iBinder;
        DataSet dataSet;
        int zzg;
        boolean z;
        IBinder iBinder2 = null;
        boolean z2 = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataSet dataSet2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    IBinder iBinder3 = iBinder2;
                    dataSet = (DataSet) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSet.CREATOR);
                    z = z2;
                    iBinder = iBinder3;
                    break;
                case 2:
                    dataSet = dataSet2;
                    zzg = i;
                    boolean z3 = z2;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    z = z3;
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    iBinder = iBinder2;
                    dataSet = dataSet2;
                    zzg = i;
                    break;
                case 1000:
                    boolean z4 = z2;
                    iBinder = iBinder2;
                    dataSet = dataSet2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    z = z4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    z = z2;
                    iBinder = iBinder2;
                    dataSet = dataSet2;
                    zzg = i;
                    break;
            }
            i = zzg;
            dataSet2 = dataSet;
            iBinder2 = iBinder;
            z2 = z;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzg(i, dataSet2, iBinder2, z2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhi */
    public zzg[] newArray(int i) {
        return new zzg[i];
    }
}
