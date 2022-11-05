package com.mopub.mobileads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes3.dex */
public class VastFractionalProgressTracker extends VastTracker implements Serializable, Comparable<VastFractionalProgressTracker> {
    private final float b;

    public VastFractionalProgressTracker(String str, float f) {
        super(str);
        Preconditions.checkArgument(f >= BitmapDescriptorFactory.HUE_RED);
        this.b = f;
    }

    public float trackingFraction() {
        return this.b;
    }

    @Override // java.lang.Comparable
    public int compareTo(VastFractionalProgressTracker vastFractionalProgressTracker) {
        return Double.compare(trackingFraction(), vastFractionalProgressTracker.trackingFraction());
    }

    public String toString() {
        return String.format(Locale.US, "%2f: %s", Float.valueOf(this.b), this.f4473a);
    }
}
