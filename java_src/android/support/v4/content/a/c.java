package android.support.v4.content.a;

import android.annotation.TargetApi;
import android.content.res.Resources;
/* compiled from: ConfigurationHelperHoneycombMr2.java */
@TargetApi(13)
/* loaded from: classes.dex */
class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Resources resources) {
        return resources.getConfiguration().screenHeightDp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Resources resources) {
        return resources.getConfiguration().screenWidthDp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(Resources resources) {
        return resources.getConfiguration().smallestScreenWidthDp;
    }
}
