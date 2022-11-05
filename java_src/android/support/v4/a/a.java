package android.support.v4.a;

import android.os.Build;
import android.support.annotation.RestrictTo;
import android.view.View;
/* compiled from: AnimatorCompatHelper.java */
@RestrictTo
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f198a;

    static {
        if (Build.VERSION.SDK_INT >= 12) {
            f198a = new d();
        } else {
            f198a = new c();
        }
    }

    public static void a(View view) {
        f198a.a(view);
    }
}
