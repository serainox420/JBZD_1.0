package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.os.IBinder;
/* compiled from: BundleCompatJellybeanMR2.java */
@TargetApi(18)
/* loaded from: classes.dex */
class p {
    public static IBinder a(Bundle bundle, String str) {
        return bundle.getBinder(str);
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        bundle.putBinder(str, iBinder);
    }
}
