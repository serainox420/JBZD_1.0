package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzwu implements Parcelable.Creator<zzwt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzwt zzwtVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzwtVar.zzse());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzwtVar.zzsd());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzwtVar.zzsc());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzwtVar.getHumidity());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzwtVar.getConditions(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzam */
    public zzwt createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        int[] iArr = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    f3 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 3:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 4:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzwt(f3, f2, f, i, iArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbF */
    public zzwt[] newArray(int i) {
        return new zzwt[i];
    }
}
