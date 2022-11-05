package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes3.dex */
public class VastAbsoluteProgressTracker extends VastTracker implements Serializable, Comparable<VastAbsoluteProgressTracker> {
    private final int b;

    public VastAbsoluteProgressTracker(String str, int i) {
        super(str);
        Preconditions.checkArgument(i >= 0);
        this.b = i;
    }

    public int getTrackingMilliseconds() {
        return this.b;
    }

    @Override // java.lang.Comparable
    public int compareTo(VastAbsoluteProgressTracker vastAbsoluteProgressTracker) {
        return getTrackingMilliseconds() - vastAbsoluteProgressTracker.getTrackingMilliseconds();
    }

    public String toString() {
        return String.format(Locale.US, "%dms: %s", Integer.valueOf(this.b), this.f4473a);
    }
}
