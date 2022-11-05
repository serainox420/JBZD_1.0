package android.support.v7.media;

import android.content.Context;
import android.os.Build;
import android.support.v7.media.i;
import java.lang.ref.WeakReference;
/* compiled from: RemoteControlClientCompat.java */
/* loaded from: classes.dex */
abstract class n {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f683a;
    protected final Object b;
    protected d c;

    /* compiled from: RemoteControlClientCompat.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public int f685a;
        public int b;
        public int c = 0;
        public int d = 3;
        public int e = 1;
    }

    /* compiled from: RemoteControlClientCompat.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(int i);

        void b(int i);
    }

    protected n(Context context, Object obj) {
        this.f683a = context;
        this.b = obj;
    }

    public static n a(Context context, Object obj) {
        return Build.VERSION.SDK_INT >= 16 ? new a(context, obj) : new b(context, obj);
    }

    public Object a() {
        return this.b;
    }

    public void a(c cVar) {
    }

    public void a(d dVar) {
        this.c = dVar;
    }

    /* compiled from: RemoteControlClientCompat.java */
    /* loaded from: classes.dex */
    static class b extends n {
        public b(Context context, Object obj) {
            super(context, obj);
        }
    }

    /* compiled from: RemoteControlClientCompat.java */
    /* loaded from: classes.dex */
    static class a extends n {
        private final Object d;
        private final Object e;
        private final Object f;
        private boolean g;

        public a(Context context, Object obj) {
            super(context, obj);
            this.d = i.a(context);
            this.e = i.a(this.d, "", false);
            this.f = i.b(this.d, this.e);
        }

        @Override // android.support.v7.media.n
        public void a(c cVar) {
            i.f.c(this.f, cVar.f685a);
            i.f.d(this.f, cVar.b);
            i.f.e(this.f, cVar.c);
            i.f.b(this.f, cVar.d);
            i.f.a(this.f, cVar.e);
            if (!this.g) {
                this.g = true;
                i.f.a(this.f, i.a((i.g) new C0044a(this)));
                i.f.b(this.f, this.b);
            }
        }

        /* compiled from: RemoteControlClientCompat.java */
        /* renamed from: android.support.v7.media.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static final class C0044a implements i.g {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f684a;

            public C0044a(a aVar) {
                this.f684a = new WeakReference<>(aVar);
            }

            @Override // android.support.v7.media.i.g
            public void b(Object obj, int i) {
                a aVar = this.f684a.get();
                if (aVar != null && aVar.c != null) {
                    aVar.c.b(i);
                }
            }

            @Override // android.support.v7.media.i.g
            public void a(Object obj, int i) {
                a aVar = this.f684a.get();
                if (aVar != null && aVar.c != null) {
                    aVar.c.a(i);
                }
            }
        }
    }
}
