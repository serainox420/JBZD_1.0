package com.google.android.gms.maps.model;
/* loaded from: classes2.dex */
public final class Gap extends PatternItem {
    public final float length;

    public Gap(float f) {
        super(2, Float.valueOf(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED)));
        this.length = Math.max(f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.google.android.gms.maps.model.PatternItem
    public String toString() {
        return new StringBuilder(29).append("[Gap: length=").append(this.length).append("]").toString();
    }
}
