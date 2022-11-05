package android.support.v4.content.a;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* compiled from: ConfigurationHelperGingerbread.java */
@TargetApi(9)
/* loaded from: classes.dex */
class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Resources resources) {
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return (int) (displayMetrics.heightPixels / displayMetrics.density);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Resources resources) {
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return (int) (displayMetrics.widthPixels / displayMetrics.density);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(Resources resources) {
        return Math.min(b(resources), a(resources));
    }
}
