package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;
/* compiled from: ViewCompatMarshmallow.java */
@TargetApi(23)
/* loaded from: classes.dex */
class as {
    public static void a(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i) {
        view.offsetTopAndBottom(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view, int i) {
        view.offsetLeftAndRight(i);
    }
}
