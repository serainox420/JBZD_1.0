package android.support.v4.widget;

import android.annotation.TargetApi;
import android.widget.PopupWindow;
/* compiled from: PopupWindowCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(PopupWindow popupWindow, boolean z) {
        popupWindow.setOverlapAnchor(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(PopupWindow popupWindow, int i) {
        popupWindow.setWindowLayoutType(i);
    }
}
