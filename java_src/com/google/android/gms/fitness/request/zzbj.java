package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbj implements Parcelable.Creator<StartBleScanRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StartBleScanRequest startBleScanRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, startBleScanRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, startBleScanRequest.zzDm(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, startBleScanRequest.getTimeoutSecs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, startBleScanRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, startBleScanRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeZ */
    public StartBleScanRequest createFromParcel(Parcel parcel) {
        int i = 0;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder2 = null;
        ArrayList arrayList = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 2:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new StartBleScanRequest(i2, arrayList, iBinder2, i, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhM */
    public StartBleScanRequest[] newArray(int i) {
        return new StartBleScanRequest[i];
    }
}
