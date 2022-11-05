package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.MotionEvent;
/* compiled from: MotionEventCompatHoneycombMr1.java */
@TargetApi(12)
/* loaded from: classes.dex */
class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(MotionEvent motionEvent, int i) {
        return motionEvent.getAxisValue(i);
    }
}
