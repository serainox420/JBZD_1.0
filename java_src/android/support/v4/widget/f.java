package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.widget.CompoundButton;
/* compiled from: CompoundButtonCompatLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
        compoundButton.setButtonTintList(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        compoundButton.setButtonTintMode(mode);
    }
}
