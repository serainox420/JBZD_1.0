package com.facebook.drawee.drawable;

import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DrawableUtils {
    @Nullable
    public static Drawable cloneDrawable(Drawable drawable) {
        if (drawable instanceof CloneableDrawable) {
            return ((CloneableDrawable) drawable).mo77cloneDrawable();
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    public static void copyProperties(Drawable drawable, Drawable drawable2) {
        if (drawable2 != null && drawable != null && drawable != drawable2) {
            drawable.setBounds(drawable2.getBounds());
            drawable.setChangingConfigurations(drawable2.getChangingConfigurations());
            drawable.setLevel(drawable2.getLevel());
            drawable.setVisible(drawable2.isVisible(), false);
            drawable.setState(drawable2.getState());
        }
    }

    public static void setDrawableProperties(Drawable drawable, DrawableProperties drawableProperties) {
        if (drawable != null && drawableProperties != null) {
            drawableProperties.applyTo(drawable);
        }
    }

    public static void setCallbacks(Drawable drawable, @Nullable Drawable.Callback callback, @Nullable TransformCallback transformCallback) {
        if (drawable != null) {
            drawable.setCallback(callback);
            if (drawable instanceof TransformAwareDrawable) {
                ((TransformAwareDrawable) drawable).setTransformCallback(transformCallback);
            }
        }
    }

    public static int multiplyColorAlpha(int i, int i2) {
        if (i2 != 255) {
            if (i2 == 0) {
                return i & 16777215;
            }
            return (((((i2 >> 7) + i2) * (i >>> 24)) >> 8) << 24) | (i & 16777215);
        }
        return i;
    }

    public static int getOpacityFromColor(int i) {
        int i2 = i >>> 24;
        if (i2 == 255) {
            return -1;
        }
        if (i2 == 0) {
            return -2;
        }
        return -3;
    }
}
