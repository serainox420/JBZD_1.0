package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.VelocityTracker;
/* compiled from: VelocityTrackerCompatHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class ah {
    public static float a(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    public static float b(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }
}
