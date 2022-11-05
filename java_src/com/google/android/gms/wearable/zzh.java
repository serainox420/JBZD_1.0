package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<PutDataRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PutDataRequest putDataRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) putDataRequest.getUri(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, putDataRequest.zzUg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, putDataRequest.getData(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, putDataRequest.zzUh());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkM */
    public PutDataRequest createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        Bundle bundle = null;
        Uri uri = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 3:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 4:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 5:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PutDataRequest(uri, bundle, bArr, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpl */
    public PutDataRequest[] newArray(int i) {
        return new PutDataRequest[i];
    }
}
