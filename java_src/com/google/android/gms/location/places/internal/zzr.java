package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;
/* loaded from: classes2.dex */
public class zzr extends zzab implements PlaceLikelihood {
    public zzr(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // com.google.android.gms.location.places.PlaceLikelihood
    public float getLikelihood() {
        return zzb("place_likelihood", -1.0f);
    }

    @Override // com.google.android.gms.location.places.PlaceLikelihood
    public Place getPlace() {
        return new zzy(this.zzaBi, this.zzaDL);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzJc */
    public PlaceLikelihood mo520freeze() {
        return zzp.zza((PlaceEntity) getPlace().mo520freeze(), getLikelihood());
    }
}
