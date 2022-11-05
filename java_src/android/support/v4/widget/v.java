package android.support.v4.widget;

import android.annotation.TargetApi;
import android.view.View;
import android.widget.PopupWindow;
/* compiled from: PopupWindowCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class v {
    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        popupWindow.showAsDropDown(view, i, i2, i3);
    }
}
