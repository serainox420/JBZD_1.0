package android.support.v4.widget;

import android.annotation.TargetApi;
import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
/* compiled from: PopupWindowCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class t {

    /* renamed from: a  reason: collision with root package name */
    private static Field f524a;

    static {
        try {
            f524a = PopupWindow.class.getDeclaredField("mOverlapAnchor");
            f524a.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(PopupWindow popupWindow, boolean z) {
        if (f524a != null) {
            try {
                f524a.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e);
            }
        }
    }
}
