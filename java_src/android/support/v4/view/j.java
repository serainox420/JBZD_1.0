package android.support.v4.view;

import android.os.Build;
import android.view.LayoutInflater;
/* compiled from: LayoutInflaterCompat.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final a f465a;

    /* compiled from: LayoutInflaterCompat.java */
    /* loaded from: classes.dex */
    interface a {
        n a(LayoutInflater layoutInflater);

        void a(LayoutInflater layoutInflater, n nVar);
    }

    /* compiled from: LayoutInflaterCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.j.a
        public void a(LayoutInflater layoutInflater, n nVar) {
            k.a(layoutInflater, nVar);
        }

        @Override // android.support.v4.view.j.a
        public n a(LayoutInflater layoutInflater) {
            return k.a(layoutInflater);
        }
    }

    /* compiled from: LayoutInflaterCompat.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.j.b, android.support.v4.view.j.a
        public void a(LayoutInflater layoutInflater, n nVar) {
            l.a(layoutInflater, nVar);
        }
    }

    /* compiled from: LayoutInflaterCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.j.c, android.support.v4.view.j.b, android.support.v4.view.j.a
        public void a(LayoutInflater layoutInflater, n nVar) {
            m.a(layoutInflater, nVar);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f465a = new d();
        } else if (i >= 11) {
            f465a = new c();
        } else {
            f465a = new b();
        }
    }

    public static void a(LayoutInflater layoutInflater, n nVar) {
        f465a.a(layoutInflater, nVar);
    }

    public static n a(LayoutInflater layoutInflater) {
        return f465a.a(layoutInflater);
    }
}
