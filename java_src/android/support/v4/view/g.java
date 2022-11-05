package android.support.v4.view;

import android.annotation.TargetApi;
import android.graphics.Rect;
import android.view.Gravity;
/* compiled from: GravityCompatJellybeanMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
class g {
    public static int a(int i, int i2) {
        return Gravity.getAbsoluteGravity(i, i2);
    }

    public static void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        Gravity.apply(i, i2, i3, rect, rect2, i4);
    }
}
