package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzba implements Parcelable.Creator<SessionReadRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SessionReadRequest sessionReadRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, sessionReadRequest.getSessionName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, sessionReadRequest.getSessionId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, sessionReadRequest.zzqn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, sessionReadRequest.zzAm());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, sessionReadRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, sessionReadRequest.getDataSources(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, sessionReadRequest.zzDk());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, sessionReadRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, sessionReadRequest.zzCS());
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 9, sessionReadRequest.getExcludedPackages(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, sessionReadRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeU */
    public SessionReadRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        long j = 0;
        long j2 = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        ArrayList<String> arrayList3 = null;
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 6:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 10:
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
        return new SessionReadRequest(i, str, str2, j, j2, arrayList, arrayList2, z, z2, arrayList3, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhH */
    public SessionReadRequest[] newArray(int i) {
        return new SessionReadRequest[i];
    }
}
