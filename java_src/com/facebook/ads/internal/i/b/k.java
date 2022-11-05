package com.facebook.ads.internal.i.b;

import android.util.Log;
import com.facebook.internal.Utility;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final n f2196a;
    private final com.facebook.ads.internal.i.b.a b;
    private volatile Thread f;
    private volatile boolean g;
    private final Object c = new Object();
    private final Object d = new Object();
    private volatile int h = -1;
    private final AtomicInteger e = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.e();
        }
    }

    public k(n nVar, com.facebook.ads.internal.i.b.a aVar) {
        this.f2196a = (n) j.a(nVar);
        this.b = (com.facebook.ads.internal.i.b.a) j.a(aVar);
    }

    private void b() {
        int i = this.e.get();
        if (i >= 1) {
            this.e.set(0);
            throw new l("Error reading source " + i + " times");
        }
    }

    private void b(long j, long j2) {
        a(j, j2);
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }

    private synchronized void c() {
        boolean z = (this.f == null || this.f.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.g && !this.b.d() && !z) {
            this.f = new Thread(new a(), "Source reader for " + this.f2196a);
            this.f.start();
        }
    }

    private void d() {
        synchronized (this.c) {
            try {
                this.c.wait(1000L);
            } catch (InterruptedException e) {
                throw new l("Waiting source data is interrupted!", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int i;
        int i2 = 0;
        try {
            i2 = this.b.a();
            this.f2196a.a(i2);
            i = this.f2196a.a();
        } catch (Throwable th) {
            th = th;
            i = -1;
        }
        try {
            byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
            while (true) {
                int a2 = this.f2196a.a(bArr);
                if (a2 == -1) {
                    f();
                    return;
                }
                synchronized (this.d) {
                    if (g()) {
                        return;
                    }
                    this.b.a(bArr, a2);
                }
                i2 += a2;
                b(i2, i);
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                this.e.incrementAndGet();
                a(th);
            } finally {
                h();
                b(i2, i);
            }
        }
    }

    private void f() {
        synchronized (this.d) {
            if (!g() && this.b.a() == this.f2196a.a()) {
                this.b.c();
            }
        }
    }

    private boolean g() {
        return Thread.currentThread().isInterrupted() || this.g;
    }

    private void h() {
        try {
            this.f2196a.b();
        } catch (l e) {
            a(new l("Error closing source " + this.f2196a, e));
        }
    }

    public int a(byte[] bArr, long j, int i) {
        m.a(bArr, j, i);
        while (!this.b.d() && this.b.a() < i + j && !this.g) {
            c();
            d();
            b();
        }
        int a2 = this.b.a(bArr, j, i);
        if (this.b.d() && this.h != 100) {
            this.h = 100;
            a(100);
        }
        return a2;
    }

    public void a() {
        synchronized (this.d) {
            Log.d("ProxyCache", "Shutdown proxy for " + this.f2196a);
            try {
                this.g = true;
                if (this.f != null) {
                    this.f.interrupt();
                }
                this.b.b();
            } catch (l e) {
                a(e);
            }
        }
    }

    protected void a(int i) {
    }

    protected void a(long j, long j2) {
        boolean z = true;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((100 * j) / j2);
        boolean z2 = i != this.h;
        if (j2 < 0) {
            z = false;
        }
        if (z && z2) {
            a(i);
        }
        this.h = i;
    }

    protected final void a(Throwable th) {
        if (th instanceof i) {
            Log.d("ProxyCache", "ProxyCache is interrupted");
        } else {
            Log.e("ProxyCache", "ProxyCache error", th);
        }
    }
}
