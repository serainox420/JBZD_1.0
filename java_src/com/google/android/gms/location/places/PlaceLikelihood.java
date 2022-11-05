package com.google.android.gms.location.places;

import com.google.android.gms.common.data.Freezable;
/* loaded from: classes2.dex */
public interface PlaceLikelihood extends Freezable<PlaceLikelihood> {
    float getLikelihood();

    Place getPlace();
}
