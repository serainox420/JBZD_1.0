package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: DrawableCompatLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class g {
    public static void a(Drawable drawable, float f, float f2) {
        drawable.setHotspot(f, f2);
    }

    public static void a(Drawable drawable, int i, int i2, int i3, int i4) {
        drawable.setHotspotBounds(i, i2, i3, i4);
    }

    public static void a(Drawable drawable, int i) {
        drawable.setTint(i);
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    public static Drawable a(Drawable drawable) {
        if (!(drawable instanceof m)) {
            return new l(drawable);
        }
        return drawable;
    }

    public static void a(Drawable drawable, Resources.Theme theme) {
        drawable.applyTheme(theme);
    }

    public static boolean b(Drawable drawable) {
        return drawable.canApplyTheme();
    }

    public static ColorFilter c(Drawable drawable) {
        return drawable.getColorFilter();
    }

    public static void d(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            d(((InsetDrawable) drawable).getDrawable());
        } else if (drawable instanceof h) {
            d(((h) drawable).a());
        } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
            int childCount = drawableContainerState.getChildCount();
            for (int i = 0; i < childCount; i++) {
                Drawable child = drawableContainerState.getChild(i);
                if (child != null) {
                    d(child);
                }
            }
        }
    }

    public static void a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        drawable.inflate(resources, xmlPullParser, attributeSet, theme);
    }
}
