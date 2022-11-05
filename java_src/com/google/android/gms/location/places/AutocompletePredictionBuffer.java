package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class AutocompletePredictionBuffer extends AbstractDataBuffer<AutocompletePrediction> implements Result {
    public AutocompletePredictionBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public AutocompletePrediction mo547get(int i) {
        return new com.google.android.gms.location.places.internal.zzc(this.zzaBi, i);
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return PlacesStatusCodes.zzdv(this.zzaBi.getStatusCode());
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", getStatus()).toString();
    }
}
