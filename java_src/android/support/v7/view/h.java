package android.support.v7.view;

import android.support.annotation.RestrictTo;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: ViewPropertyAnimatorCompatSet.java */
@RestrictTo
/* loaded from: classes.dex */
public class h {
    bd b;
    private Interpolator d;
    private boolean e;
    private long c = -1;
    private final be f = new be() { // from class: android.support.v7.view.h.1
        private boolean b = false;
        private int c = 0;

        @Override // android.support.v4.view.be, android.support.v4.view.bd
        public void a(View view) {
            if (!this.b) {
                this.b = true;
                if (h.this.b != null) {
                    h.this.b.a(null);
                }
            }
        }

        void a() {
            this.c = 0;
            this.b = false;
            h.this.b();
        }

        @Override // android.support.v4.view.be, android.support.v4.view.bd
        public void b(View view) {
            int i = this.c + 1;
            this.c = i;
            if (i == h.this.f702a.size()) {
                if (h.this.b != null) {
                    h.this.b.b(null);
                }
                a();
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<az> f702a = new ArrayList<>();

    public h a(az azVar) {
        if (!this.e) {
            this.f702a.add(azVar);
        }
        return this;
    }

    public h a(az azVar, az azVar2) {
        this.f702a.add(azVar);
        azVar2.b(azVar.a());
        this.f702a.add(azVar2);
        return this;
    }

    public void a() {
        if (!this.e) {
            Iterator<az> it = this.f702a.iterator();
            while (it.hasNext()) {
                az next = it.next();
                if (this.c >= 0) {
                    next.a(this.c);
                }
                if (this.d != null) {
                    next.a(this.d);
                }
                if (this.b != null) {
                    next.a(this.f);
                }
                next.c();
            }
            this.e = true;
        }
    }

    void b() {
        this.e = false;
    }

    public void c() {
        if (this.e) {
            Iterator<az> it = this.f702a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }

    public h a(long j) {
        if (!this.e) {
            this.c = j;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.e) {
            this.d = interpolator;
        }
        return this;
    }

    public h a(bd bdVar) {
        if (!this.e) {
            this.b = bdVar;
        }
        return this;
    }
}
