package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.RestrictTo;
import android.support.v7.media.g;
/* compiled from: MediaRouteProvider.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f647a;
    private final C0040c b;
    private final b c = new b();
    private a d;
    private android.support.v7.media.b e;
    private boolean f;
    private android.support.v7.media.d g;
    private boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, C0040c c0040c) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        this.f647a = context;
        if (c0040c == null) {
            this.b = new C0040c(new ComponentName(context, getClass()));
        } else {
            this.b = c0040c;
        }
    }

    public final Context a() {
        return this.f647a;
    }

    public final Handler b() {
        return this.c;
    }

    public final C0040c c() {
        return this.b;
    }

    public final void a(a aVar) {
        g.e();
        this.d = aVar;
    }

    public final android.support.v7.media.b d() {
        return this.e;
    }

    public final void a(android.support.v7.media.b bVar) {
        g.e();
        if (this.e != bVar) {
            if (this.e == null || !this.e.equals(bVar)) {
                this.e = bVar;
                if (!this.f) {
                    this.f = true;
                    this.c.sendEmptyMessage(2);
                }
            }
        }
    }

    void e() {
        this.f = false;
        b(this.e);
    }

    public void b(android.support.v7.media.b bVar) {
    }

    public final android.support.v7.media.d f() {
        return this.g;
    }

    public final void a(android.support.v7.media.d dVar) {
        g.e();
        if (this.g != dVar) {
            this.g = dVar;
            if (!this.h) {
                this.h = true;
                this.c.sendEmptyMessage(1);
            }
        }
    }

    void g() {
        this.h = false;
        if (this.d != null) {
            this.d.a(this, this.g);
        }
    }

    public d a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        return null;
    }

    @RestrictTo
    public d a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("routeGroupId cannot be null");
        }
        return a(str);
    }

    /* compiled from: MediaRouteProvider.java */
    /* renamed from: android.support.v7.media.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0040c {

        /* renamed from: a  reason: collision with root package name */
        private final ComponentName f649a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0040c(ComponentName componentName) {
            if (componentName == null) {
                throw new IllegalArgumentException("componentName must not be null");
            }
            this.f649a = componentName;
        }

        public String a() {
            return this.f649a.getPackageName();
        }

        public ComponentName b() {
            return this.f649a;
        }

        public String toString() {
            return "ProviderMetadata{ componentName=" + this.f649a.flattenToShortString() + " }";
        }
    }

    /* compiled from: MediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static abstract class d {
        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        public void a(int i) {
            c();
        }

        public void b(int i) {
        }

        public void c(int i) {
        }

        public boolean a(Intent intent, g.c cVar) {
            return false;
        }
    }

    /* compiled from: MediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public void a(c cVar, android.support.v7.media.d dVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouteProvider.java */
    /* loaded from: classes.dex */
    public final class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    c.this.g();
                    return;
                case 2:
                    c.this.e();
                    return;
                default:
                    return;
            }
        }
    }
}
