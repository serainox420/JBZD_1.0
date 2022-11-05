package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;
/* loaded from: classes2.dex */
public class zzp extends com.google.android.gms.common.internal.safeparcel.zza implements PlaceLikelihood {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    final int zzaiI;
    final PlaceEntity zzbmG;
    final float zzbmH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(int i, PlaceEntity placeEntity, float f) {
        this.zzaiI = i;
        this.zzbmG = placeEntity;
        this.zzbmH = f;
    }

    public static zzp zza(PlaceEntity placeEntity, float f) {
        return new zzp(0, (PlaceEntity) com.google.android.gms.common.internal.zzac.zzw(placeEntity), f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzp)) {
            return false;
        }
        zzp zzpVar = (zzp) obj;
        return this.zzbmG.equals(zzpVar.zzbmG) && this.zzbmH == zzpVar.zzbmH;
    }

    @Override // com.google.android.gms.location.places.PlaceLikelihood
    public float getLikelihood() {
        return this.zzbmH;
    }

    @Override // com.google.android.gms.location.places.PlaceLikelihood
    public Place getPlace() {
        return this.zzbmG;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbmG, Float.valueOf(this.zzbmH));
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("place", this.zzbmG).zzg("likelihood", Float.valueOf(this.zzbmH)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzJc */
    public PlaceLikelihood mo520freeze() {
        return this;
    }
}
