package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.appcompat.R;
/* compiled from: ThemeUtils.java */
/* loaded from: classes.dex */
class q {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f131a = {R.attr.colorPrimary};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        boolean z = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f131a);
        if (!obtainStyledAttributes.hasValue(0)) {
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (z) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
    }
}
