package android.support.transition;

import android.os.Build;
import android.view.ViewGroup;
/* compiled from: TransitionManager.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private static w f190a;

    static {
        if (Build.VERSION.SDK_INT < 19) {
            f190a = new v();
        } else {
            f190a = new x();
        }
    }

    public static void a(ViewGroup viewGroup, m mVar) {
        f190a.a(viewGroup, mVar == null ? null : mVar.f185a);
    }
}
