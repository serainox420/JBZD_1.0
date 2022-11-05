package android.support.v4.view;

import android.os.Build;
import android.view.ViewGroup;
/* compiled from: ViewGroupCompat.java */
/* loaded from: classes.dex */
public final class av {

    /* renamed from: a  reason: collision with root package name */
    static final c f442a;

    /* compiled from: ViewGroupCompat.java */
    /* loaded from: classes.dex */
    interface c {
        void a(ViewGroup viewGroup, boolean z);
    }

    /* compiled from: ViewGroupCompat.java */
    /* loaded from: classes.dex */
    static class f implements c {
        f() {
        }

        @Override // android.support.v4.view.av.c
        public void a(ViewGroup viewGroup, boolean z) {
        }
    }

    /* compiled from: ViewGroupCompat.java */
    /* loaded from: classes.dex */
    static class a extends f {
        a() {
        }

        @Override // android.support.v4.view.av.f, android.support.v4.view.av.c
        public void a(ViewGroup viewGroup, boolean z) {
            aw.a(viewGroup, z);
        }
    }

    /* compiled from: ViewGroupCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b() {
        }
    }

    /* compiled from: ViewGroupCompat.java */
    /* loaded from: classes.dex */
    static class d extends b {
        d() {
        }
    }

    /* compiled from: ViewGroupCompat.java */
    /* loaded from: classes.dex */
    static class e extends d {
        e() {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f442a = new e();
        } else if (i >= 18) {
            f442a = new d();
        } else if (i >= 14) {
            f442a = new b();
        } else if (i >= 11) {
            f442a = new a();
        } else {
            f442a = new f();
        }
    }

    public static void a(ViewGroup viewGroup, boolean z) {
        f442a.a(viewGroup, z);
    }
}
