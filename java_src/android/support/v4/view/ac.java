package android.support.v4.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
/* compiled from: PointerIconCompat.java */
/* loaded from: classes.dex */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    static final c f433a;
    private Object b;

    /* compiled from: PointerIconCompat.java */
    /* loaded from: classes.dex */
    interface c {
        Object a(Context context, int i);
    }

    private ac(Object obj) {
        this.b = obj;
    }

    @RestrictTo
    public Object a() {
        return this.b;
    }

    /* compiled from: PointerIconCompat.java */
    /* loaded from: classes.dex */
    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.ac.c
        public Object a(Context context, int i) {
            return null;
        }
    }

    /* compiled from: PointerIconCompat.java */
    /* loaded from: classes.dex */
    static class a extends b {
        a() {
        }

        @Override // android.support.v4.view.ac.b, android.support.v4.view.ac.c
        public Object a(Context context, int i) {
            return ad.a(context, i);
        }
    }

    static {
        if (android.support.v4.os.c.a()) {
            f433a = new a();
        } else {
            f433a = new b();
        }
    }

    public static ac a(Context context, int i) {
        return new ac(f433a.a(context, i));
    }
}
