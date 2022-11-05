package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.internal.zzy;
/* loaded from: classes2.dex */
public class PlaceBuffer extends AbstractDataBuffer<Place> implements Result {
    private final Status zzair;
    private final String zzblu;

    public PlaceBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zzair = PlacesStatusCodes.zzdv(dataHolder.getStatusCode());
        if (dataHolder == null || dataHolder.zzxf() == null) {
            this.zzblu = null;
        } else {
            this.zzblu = dataHolder.zzxf().getString("com.google.android.gms.location.places.PlaceBuffer.ATTRIBUTIONS_EXTRA_KEY");
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public Place mo547get(int i) {
        return new zzy(this.zzaBi, i);
    }

    public CharSequence getAttributions() {
        return this.zzblu;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }
}
