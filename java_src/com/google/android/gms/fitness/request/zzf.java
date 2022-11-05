package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<DataDeleteRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataDeleteRequest dataDeleteRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, dataDeleteRequest.zzqn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, dataDeleteRequest.zzAm());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, dataDeleteRequest.getDataSources(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, dataDeleteRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, dataDeleteRequest.getSessions(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, dataDeleteRequest.zzCO());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, dataDeleteRequest.zzCP());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataDeleteRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, dataDeleteRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeu */
    public DataDeleteRequest createFromParcel(Parcel parcel) {
        long j = 0;
        boolean z = false;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        long j2 = 0;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 4:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Session.CREATOR);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 1000:
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
        return new DataDeleteRequest(i, j2, j, arrayList3, arrayList2, arrayList, z2, z, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhh */
    public DataDeleteRequest[] newArray(int i) {
        return new DataDeleteRequest[i];
    }
}
