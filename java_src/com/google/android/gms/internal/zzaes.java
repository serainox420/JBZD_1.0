package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzaer;
/* loaded from: classes2.dex */
public class zzaes implements Parcelable.Creator<zzaer> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaer zzaerVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzaerVar.zzaJr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbt */
    public zzaer createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzaer.zza zzaVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    zzaVar = (zzaer.zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaer.zza.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaer(zzaVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdI */
    public zzaer[] newArray(int i) {
        return new zzaer[i];
    }
}
