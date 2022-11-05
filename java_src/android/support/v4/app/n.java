package android.support.v4.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
/* compiled from: BundleCompat.java */
/* loaded from: classes.dex */
public final class n {
    public static IBinder a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? p.a(bundle, str) : o.a(bundle, str);
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            p.a(bundle, str, iBinder);
        } else {
            o.a(bundle, str, iBinder);
        }
    }
}
