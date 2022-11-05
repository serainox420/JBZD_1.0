package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
/* compiled from: DrawableCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class b {
    public static boolean a(Drawable drawable, int i) {
        return drawable.setLayoutDirection(i);
    }

    public static int a(Drawable drawable) {
        return drawable.getLayoutDirection();
    }
}
