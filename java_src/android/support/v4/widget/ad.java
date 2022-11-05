package android.support.v4.widget;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
/* compiled from: TextViewCompatJbMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
class ad {
    public static void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        boolean z = textView.getLayoutDirection() == 1;
        Drawable drawable5 = z ? drawable3 : drawable;
        if (!z) {
            drawable = drawable3;
        }
        textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
    }

    public static Drawable[] a(TextView textView) {
        boolean z = true;
        if (textView.getLayoutDirection() != 1) {
            z = false;
        }
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        if (z) {
            Drawable drawable = compoundDrawables[2];
            Drawable drawable2 = compoundDrawables[0];
            compoundDrawables[0] = drawable;
            compoundDrawables[2] = drawable2;
        }
        return compoundDrawables;
    }
}
