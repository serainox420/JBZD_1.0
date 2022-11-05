package android.support.v4.c.a;

import android.content.Context;
import android.os.Build;
import android.view.WindowManager;
import java.util.WeakHashMap;
/* compiled from: DisplayManagerCompat.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final WeakHashMap<Context, a> f283a = new WeakHashMap<>();

    a() {
    }

    public static a a(Context context) {
        a aVar;
        synchronized (f283a) {
            aVar = f283a.get(context);
            if (aVar == null) {
                if (Build.VERSION.SDK_INT >= 17) {
                    aVar = new C0016a(context);
                } else {
                    aVar = new b(context);
                }
                f283a.put(context, aVar);
            }
        }
        return aVar;
    }

    /* compiled from: DisplayManagerCompat.java */
    /* loaded from: classes.dex */
    private static class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final WindowManager f285a;

        public b(Context context) {
            this.f285a = (WindowManager) context.getSystemService("window");
        }
    }

    /* compiled from: DisplayManagerCompat.java */
    /* renamed from: android.support.v4.c.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0016a extends a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f284a;

        public C0016a(Context context) {
            this.f284a = android.support.v4.c.a.b.a(context);
        }
    }
}
