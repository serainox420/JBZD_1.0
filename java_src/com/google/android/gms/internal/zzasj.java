package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationRequest;
import java.util.List;
/* loaded from: classes2.dex */
public class zzasj implements Parcelable.Creator<zzasi> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzasi zzasiVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzasiVar.zzaWw, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzasiVar.zzbjx, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzasiVar.mTag, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzasiVar.zzbkN);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzasiVar.zzbkO);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgV */
    public zzasi createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        List<zzarw> list = zzasi.zzbkM;
        boolean z2 = false;
        LocationRequest locationRequest = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    locationRequest = (LocationRequest) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LocationRequest.CREATOR);
                    break;
                case 2:
                case 3:
                case 4:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 5:
                    list = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzarw.CREATOR);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzasi(locationRequest, list, str, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzky */
    public zzasi[] newArray(int i) {
        return new zzasi[i];
    }
}
