package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* compiled from: SnackbarManager.java */
/* loaded from: classes.dex */
class o {

    /* renamed from: a  reason: collision with root package name */
    private static o f125a;
    private final Object b = new Object();
    private final Handler c = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.o.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    o.this.a((b) message.obj);
                    return true;
                default:
                    return false;
            }
        }
    });
    private b d;
    private b e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SnackbarManager.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a() {
        if (f125a == null) {
            f125a = new o();
        }
        return f125a;
    }

    private o() {
    }

    public void a(a aVar, int i) {
        synchronized (this.b) {
            if (f(aVar)) {
                a(this.d, i);
            } else if (g(aVar)) {
                a(this.e, i);
            }
        }
    }

    public void a(a aVar) {
        synchronized (this.b) {
            if (f(aVar)) {
                this.d = null;
                if (this.e != null) {
                    b();
                }
            }
        }
    }

    public void b(a aVar) {
        synchronized (this.b) {
            if (f(aVar)) {
                b(this.d);
            }
        }
    }

    public void c(a aVar) {
        synchronized (this.b) {
            if (f(aVar) && !this.d.c) {
                this.d.c = true;
                this.c.removeCallbacksAndMessages(this.d);
            }
        }
    }

    public void d(a aVar) {
        synchronized (this.b) {
            if (f(aVar) && this.d.c) {
                this.d.c = false;
                b(this.d);
            }
        }
    }

    public boolean e(a aVar) {
        boolean z;
        synchronized (this.b) {
            z = f(aVar) || g(aVar);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnackbarManager.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<a> f127a;
        int b;
        boolean c;

        boolean a(a aVar) {
            return aVar != null && this.f127a.get() == aVar;
        }
    }

    private void b() {
        if (this.e != null) {
            this.d = this.e;
            this.e = null;
            a aVar = this.d.f127a.get();
            if (aVar != null) {
                aVar.a();
            } else {
                this.d = null;
            }
        }
    }

    private boolean a(b bVar, int i) {
        a aVar = bVar.f127a.get();
        if (aVar != null) {
            this.c.removeCallbacksAndMessages(bVar);
            aVar.a(i);
            return true;
        }
        return false;
    }

    private boolean f(a aVar) {
        return this.d != null && this.d.a(aVar);
    }

    private boolean g(a aVar) {
        return this.e != null && this.e.a(aVar);
    }

    private void b(b bVar) {
        if (bVar.b != -2) {
            int i = 2750;
            if (bVar.b > 0) {
                i = bVar.b;
            } else if (bVar.b == -1) {
                i = 1500;
            }
            this.c.removeCallbacksAndMessages(bVar);
            this.c.sendMessageDelayed(Message.obtain(this.c, 0, bVar), i);
        }
    }

    void a(b bVar) {
        synchronized (this.b) {
            if (this.d == bVar || this.e == bVar) {
                a(bVar, 2);
            }
        }
    }
}
