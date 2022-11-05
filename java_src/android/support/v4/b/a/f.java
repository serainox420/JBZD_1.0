package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
/* compiled from: DrawableCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class f {
    public static void a(Drawable drawable, boolean z) {
        drawable.setAutoMirrored(z);
    }

    public static boolean a(Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    public static Drawable b(Drawable drawable) {
        if (!(drawable instanceof m)) {
            return new k(drawable);
        }
        return drawable;
    }

    public static int c(Drawable drawable) {
        return drawable.getAlpha();
    }
}
