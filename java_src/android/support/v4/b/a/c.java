package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: DrawableCompatBase.java */
@TargetApi(9)
/* loaded from: classes.dex */
class c {
    public static void a(Drawable drawable, int i) {
        if (drawable instanceof m) {
            ((m) drawable).setTint(i);
        }
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        if (drawable instanceof m) {
            ((m) drawable).setTintList(colorStateList);
        }
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        if (drawable instanceof m) {
            ((m) drawable).setTintMode(mode);
        }
    }

    public static Drawable a(Drawable drawable) {
        if (!(drawable instanceof m)) {
            return new i(drawable);
        }
        return drawable;
    }

    public static void a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        drawable.inflate(resources, xmlPullParser, attributeSet);
    }
}
