package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzah implements Parcelable.Creator<GoalsReadRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GoalsReadRequest goalsReadRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, goalsReadRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 2, goalsReadRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 3, goalsReadRequest.zzCZ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 4, goalsReadRequest.zzCs(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, goalsReadRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeL */
    public GoalsReadRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        IBinder iBinder = null;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 2:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList, getClass().getClassLoader());
                    break;
                case 3:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList2, getClass().getClassLoader());
                    break;
                case 4:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList3, getClass().getClassLoader());
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
        return new GoalsReadRequest(i, iBinder, arrayList, arrayList2, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhy */
    public GoalsReadRequest[] newArray(int i) {
        return new GoalsReadRequest[i];
    }
}
