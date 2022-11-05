package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.KeyEvent;
/* compiled from: KeyEventCompatHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class i {
    public static int a(int i) {
        return KeyEvent.normalizeMetaState(i);
    }

    public static boolean a(int i, int i2) {
        return KeyEvent.metaStateHasModifiers(i, i2);
    }

    public static boolean b(int i) {
        return KeyEvent.metaStateHasNoModifiers(i);
    }

    public static boolean a(KeyEvent keyEvent) {
        return keyEvent.isCtrlPressed();
    }
}
