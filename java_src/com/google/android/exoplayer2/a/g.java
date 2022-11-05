package com.google.android.exoplayer2.a;

import com.google.android.exoplayer2.a.e;
import com.google.android.exoplayer2.a.f;
import java.lang.Exception;
import java.util.LinkedList;
/* compiled from: SimpleDecoder.java */
/* loaded from: classes2.dex */
public abstract class g<I extends e, O extends f, E extends Exception> implements c<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f3150a;
    private final Object b = new Object();
    private final LinkedList<I> c = new LinkedList<>();
    private final LinkedList<O> d = new LinkedList<>();
    private final I[] e;
    private final O[] f;
    private int g;
    private int h;
    private I i;
    private E j;
    private boolean k;
    private boolean l;
    private int m;

    protected abstract E a(I i, O o, boolean z);

    protected abstract I g();

    protected abstract O h();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.a.c
    public /* bridge */ /* synthetic */ void a(Object obj) throws Exception {
        a((g<I, O, E>) ((e) obj));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(I[] iArr, O[] oArr) {
        this.e = iArr;
        this.g = iArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = g();
        }
        this.f = oArr;
        this.h = oArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.f[i2] = h();
        }
        this.f3150a = new Thread() { // from class: com.google.android.exoplayer2.a.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                g.this.k();
            }
        };
        this.f3150a.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        com.google.android.exoplayer2.util.a.b(this.g == this.e.length);
        for (I i2 : this.e) {
            i2.e(i);
        }
    }

    @Override // com.google.android.exoplayer2.a.c
    /* renamed from: e */
    public final I a() throws Exception {
        I i;
        I i2;
        synchronized (this.b) {
            i();
            com.google.android.exoplayer2.util.a.b(this.i == null);
            if (this.g == 0) {
                i = null;
            } else {
                I[] iArr = this.e;
                int i3 = this.g - 1;
                this.g = i3;
                i = iArr[i3];
            }
            this.i = i;
            i2 = this.i;
        }
        return i2;
    }

    public final void a(I i) throws Exception {
        synchronized (this.b) {
            i();
            com.google.android.exoplayer2.util.a.a(i == this.i);
            this.c.addLast(i);
            j();
            this.i = null;
        }
    }

    @Override // com.google.android.exoplayer2.a.c
    /* renamed from: f */
    public final O b() throws Exception {
        O removeFirst;
        synchronized (this.b) {
            i();
            removeFirst = this.d.isEmpty() ? null : this.d.removeFirst();
        }
        return removeFirst;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(O o) {
        synchronized (this.b) {
            b((g<I, O, E>) o);
            j();
        }
    }

    @Override // com.google.android.exoplayer2.a.c
    public final void c() {
        synchronized (this.b) {
            this.k = true;
            this.m = 0;
            if (this.i != null) {
                b((g<I, O, E>) this.i);
                this.i = null;
            }
            while (!this.c.isEmpty()) {
                b((g<I, O, E>) this.c.removeFirst());
            }
            while (!this.d.isEmpty()) {
                b((g<I, O, E>) this.d.removeFirst());
            }
        }
    }

    @Override // com.google.android.exoplayer2.a.c
    public void d() {
        synchronized (this.b) {
            this.l = true;
            this.b.notify();
        }
        try {
            this.f3150a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    private void i() throws Exception {
        if (this.j != null) {
            throw this.j;
        }
    }

    private void j() {
        if (m()) {
            this.b.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (l());
    }

    private boolean l() throws InterruptedException {
        synchronized (this.b) {
            while (!this.l && !m()) {
                this.b.wait();
            }
            if (this.l) {
                return false;
            }
            I removeFirst = this.c.removeFirst();
            O[] oArr = this.f;
            int i = this.h - 1;
            this.h = i;
            O o = oArr[i];
            boolean z = this.k;
            this.k = false;
            if (removeFirst.c()) {
                o.b(4);
            } else {
                if (removeFirst.c_()) {
                    o.b(Integer.MIN_VALUE);
                }
                this.j = a(removeFirst, o, z);
                if (this.j != null) {
                    synchronized (this.b) {
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                if (this.k) {
                    b((g<I, O, E>) o);
                } else if (o.c_()) {
                    this.m++;
                    b((g<I, O, E>) o);
                } else {
                    o.b = this.m;
                    this.m = 0;
                    this.d.addLast(o);
                }
                b((g<I, O, E>) removeFirst);
            }
            return true;
        }
    }

    private boolean m() {
        return !this.c.isEmpty() && this.h > 0;
    }

    private void b(I i) {
        i.a();
        I[] iArr = this.e;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr[i2] = i;
    }

    private void b(O o) {
        o.a();
        O[] oArr = this.f;
        int i = this.h;
        this.h = i + 1;
        oArr[i] = o;
    }
}
