package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzq implements Parcelable.Creator<zzp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzp zzpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzpVar.zzbmG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzpVar.zzbmH);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzpVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhm */
    public zzp createFromParcel(Parcel parcel) {
        PlaceEntity placeEntity;
        int zzg;
        float f;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        PlaceEntity placeEntity2 = null;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    PlaceEntity placeEntity3 = (PlaceEntity) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PlaceEntity.CREATOR);
                    zzg = i;
                    f = f2;
                    placeEntity = placeEntity3;
                    break;
                case 2:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    placeEntity = placeEntity2;
                    zzg = i;
                    break;
                case 1000:
                    float f3 = f2;
                    placeEntity = placeEntity2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    f = f3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    f = f2;
                    placeEntity = placeEntity2;
                    zzg = i;
                    break;
            }
            i = zzg;
            placeEntity2 = placeEntity;
            f2 = f;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzp(i, placeEntity2, f2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkT */
    public zzp[] newArray(int i) {
        return new zzp[i];
    }
}
