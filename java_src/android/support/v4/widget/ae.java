package android.support.v4.widget;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
/* compiled from: TextViewCompatJbMr2.java */
@TargetApi(18)
/* loaded from: classes.dex */
class ae {
    public static void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public static Drawable[] a(TextView textView) {
        return textView.getCompoundDrawablesRelative();
    }
}
