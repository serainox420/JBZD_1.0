package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<IsReadyToPayRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(IsReadyToPayRequest isReadyToPayRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (List<Integer>) isReadyToPayRequest.zzbQo, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, isReadyToPayRequest.zzbQp, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, isReadyToPayRequest.zzbQq, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkf */
    public IsReadyToPayRequest createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        ArrayList<Integer> arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 3:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new IsReadyToPayRequest(arrayList, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoB */
    public IsReadyToPayRequest[] newArray(int i) {
        return new IsReadyToPayRequest[i];
    }
}
