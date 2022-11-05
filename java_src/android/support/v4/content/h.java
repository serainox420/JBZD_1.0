package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.Context;
import java.io.File;
/* compiled from: ContextCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class h {
    public static File[] a(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] a(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }
}
