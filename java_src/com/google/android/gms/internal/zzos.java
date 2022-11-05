package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzos implements Parcelable.Creator<zzor> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzor zzorVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzorVar.zzVQ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzorVar.zzVR, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzorVar.zzVS);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzorVar.zzVT);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 6, zzorVar.zzVU, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzag */
    public zzor[] newArray(int i) {
        return new zzor[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzv */
    public zzor createFromParcel(Parcel parcel) {
        boolean z = false;
        ArrayList<String> arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzor(str2, str, z2, z, arrayList);
    }
}
