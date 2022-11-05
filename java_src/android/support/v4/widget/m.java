package android.support.v4.widget;

import android.annotation.TargetApi;
import android.widget.EdgeEffect;
/* compiled from: EdgeEffectCompatLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class m {
    public static boolean a(Object obj, float f, float f2) {
        ((EdgeEffect) obj).onPull(f, f2);
        return true;
    }
}
