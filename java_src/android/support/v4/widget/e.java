package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* compiled from: CompoundButtonCompatGingerbread.java */
@TargetApi(9)
/* loaded from: classes.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private static Field f510a;
    private static boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (compoundButton instanceof af) {
            ((af) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (compoundButton instanceof af) {
            ((af) compoundButton).setSupportButtonTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable a(CompoundButton compoundButton) {
        if (!b) {
            try {
                f510a = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f510a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompatGingerbread", "Failed to retrieve mButtonDrawable field", e);
            }
            b = true;
        }
        if (f510a != null) {
            try {
                return (Drawable) f510a.get(compoundButton);
            } catch (IllegalAccessException e2) {
                Log.i("CompoundButtonCompatGingerbread", "Failed to get button drawable via reflection", e2);
                f510a = null;
            }
        }
        return null;
    }
}
