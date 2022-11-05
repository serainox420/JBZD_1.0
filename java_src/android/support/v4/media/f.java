package android.support.v4.media;

import android.os.Build;
import android.support.v4.media.g;
/* compiled from: VolumeProviderCompat.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private final int f355a;
    private final int b;
    private int c;
    private a d;
    private Object e;

    /* compiled from: VolumeProviderCompat.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract void a(f fVar);
    }

    public f(int i, int i2, int i3) {
        this.f355a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int a() {
        return this.c;
    }

    public final int b() {
        return this.f355a;
    }

    public final int c() {
        return this.b;
    }

    public final void a(int i) {
        this.c = i;
        Object d = d();
        if (d != null) {
            g.a(d, i);
        }
        if (this.d != null) {
            this.d.a(this);
        }
    }

    public void b(int i) {
    }

    public void c(int i) {
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public Object d() {
        if (this.e != null || Build.VERSION.SDK_INT < 21) {
            return this.e;
        }
        this.e = g.a(this.f355a, this.b, this.c, new g.a() { // from class: android.support.v4.media.f.1
            @Override // android.support.v4.media.g.a
            public void a(int i) {
                f.this.b(i);
            }

            @Override // android.support.v4.media.g.a
            public void b(int i) {
                f.this.c(i);
            }
        });
        return this.e;
    }
}
