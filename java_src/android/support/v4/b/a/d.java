package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
/* compiled from: DrawableCompatHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class d {
    public static void a(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static Drawable b(Drawable drawable) {
        if (!(drawable instanceof m)) {
            return new j(drawable);
        }
        return drawable;
    }
}
