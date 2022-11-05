package com.google.android.gms.location.places;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.internal.zzx;
/* loaded from: classes2.dex */
public class PlacePhotoMetadataBuffer extends AbstractDataBuffer<PlacePhotoMetadata> {
    public PlacePhotoMetadataBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public PlacePhotoMetadata mo547get(int i) {
        return new zzx(this.zzaBi, i);
    }
}
