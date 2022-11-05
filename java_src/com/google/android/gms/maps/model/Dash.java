package com.google.android.gms.maps.model;
/* loaded from: classes2.dex */
public final class Dash extends PatternItem {
    public final float length;

    public Dash(float f) {
        super(0, Float.valueOf(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED)));
        this.length = Math.max(f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.google.android.gms.maps.model.PatternItem
    public String toString() {
        return new StringBuilder(30).append("[Dash: length=").append(this.length).append("]").toString();
    }
}
