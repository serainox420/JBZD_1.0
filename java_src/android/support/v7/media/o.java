package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build;
import android.support.v7.media.a;
import android.support.v7.media.c;
import android.support.v7.media.d;
import android.support.v7.media.g;
import android.support.v7.media.h;
import android.support.v7.media.i;
import android.support.v7.media.j;
import android.support.v7.media.k;
import android.support.v7.mediarouter.R;
import android.view.Display;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemMediaRouteProvider.java */
/* loaded from: classes.dex */
public abstract class o extends android.support.v7.media.c {

    /* compiled from: SystemMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public interface f {
        g.C0043g b(String str);
    }

    protected o(Context context) {
        super(context, new c.C0040c(new ComponentName(io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE, o.class.getName())));
    }

    public static o a(Context context, f fVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new a(context, fVar);
        }
        if (Build.VERSION.SDK_INT >= 18) {
            return new d(context, fVar);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            return new c(context, fVar);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new b(context, fVar);
        }
        return new e(context);
    }

    public void a(g.C0043g c0043g) {
    }

    public void b(g.C0043g c0043g) {
    }

    public void c(g.C0043g c0043g) {
    }

    public void d(g.C0043g c0043g) {
    }

    protected Object h() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SystemMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static class e extends o {
        private static final ArrayList<IntentFilter> c;

        /* renamed from: a  reason: collision with root package name */
        final AudioManager f690a;
        int b;
        private final b d;

        static {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
            intentFilter.addCategory("android.media.intent.category.LIVE_VIDEO");
            c = new ArrayList<>();
            c.add(intentFilter);
        }

        public e(Context context) {
            super(context);
            this.b = -1;
            this.f690a = (AudioManager) context.getSystemService("audio");
            this.d = new b();
            context.registerReceiver(this.d, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            i();
        }

        void i() {
            Resources resources = a().getResources();
            int streamMaxVolume = this.f690a.getStreamMaxVolume(3);
            this.b = this.f690a.getStreamVolume(3);
            a(new d.a().a(new a.C0039a("DEFAULT_ROUTE", resources.getString(R.string.mr_system_route_name)).a(c).b(3).a(0).f(1).e(streamMaxVolume).d(this.b).a()).a());
        }

        @Override // android.support.v7.media.c
        public c.d a(String str) {
            if (str.equals("DEFAULT_ROUTE")) {
                return new a();
            }
            return null;
        }

        /* compiled from: SystemMediaRouteProvider.java */
        /* loaded from: classes.dex */
        final class a extends c.d {
            a() {
            }

            @Override // android.support.v7.media.c.d
            public void b(int i) {
                e.this.f690a.setStreamVolume(3, i, 0);
                e.this.i();
            }

            @Override // android.support.v7.media.c.d
            public void c(int i) {
                int streamVolume = e.this.f690a.getStreamVolume(3);
                if (Math.min(e.this.f690a.getStreamMaxVolume(3), Math.max(0, streamVolume + i)) != streamVolume) {
                    e.this.f690a.setStreamVolume(3, streamVolume, 0);
                }
                e.this.i();
            }
        }

        /* compiled from: SystemMediaRouteProvider.java */
        /* loaded from: classes.dex */
        final class b extends BroadcastReceiver {
            b() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int intExtra;
                if (intent.getAction().equals("android.media.VOLUME_CHANGED_ACTION") && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3 && (intExtra = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", -1)) >= 0 && intExtra != e.this.b) {
                    e.this.i();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SystemMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static class b extends o implements i.a, i.g {
        private static final ArrayList<IntentFilter> j;
        private static final ArrayList<IntentFilter> k;

        /* renamed from: a  reason: collision with root package name */
        protected final Object f686a;
        protected final Object b;
        protected final Object c;
        protected final Object d;
        protected int e;
        protected boolean f;
        protected boolean g;
        protected final ArrayList<C0045b> h;
        protected final ArrayList<c> i;
        private final f l;
        private i.e m;
        private i.c n;

        static {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
            j = new ArrayList<>();
            j.add(intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addCategory("android.media.intent.category.LIVE_VIDEO");
            k = new ArrayList<>();
            k.add(intentFilter2);
        }

        public b(Context context, f fVar) {
            super(context);
            this.h = new ArrayList<>();
            this.i = new ArrayList<>();
            this.l = fVar;
            this.f686a = i.a(context);
            this.b = k();
            this.c = l();
            this.d = i.a(this.f686a, context.getResources().getString(R.string.mr_user_route_category_name), false);
            m();
        }

        @Override // android.support.v7.media.c
        public c.d a(String str) {
            int b = b(str);
            if (b >= 0) {
                return new a(this.h.get(b).f688a);
            }
            return null;
        }

        @Override // android.support.v7.media.c
        public void b(android.support.v7.media.b bVar) {
            int i;
            int i2;
            boolean z = false;
            if (bVar != null) {
                List<String> a2 = bVar.a().a();
                int size = a2.size();
                int i3 = 0;
                i = 0;
                while (i3 < size) {
                    String str = a2.get(i3);
                    if (str.equals("android.media.intent.category.LIVE_AUDIO")) {
                        i2 = i | 1;
                    } else if (str.equals("android.media.intent.category.LIVE_VIDEO")) {
                        i2 = i | 2;
                    } else {
                        i2 = 8388608 | i;
                    }
                    i3++;
                    i = i2;
                }
                z = bVar.b();
            } else {
                i = 0;
            }
            if (this.e != i || this.f != z) {
                this.e = i;
                this.f = z;
                m();
            }
        }

        @Override // android.support.v7.media.i.a
        public void a(Object obj) {
            if (e(obj)) {
                i();
            }
        }

        private void m() {
            j();
            boolean z = false;
            for (Object obj : i.a(this.f686a)) {
                z |= e(obj);
            }
            if (z) {
                i();
            }
        }

        private boolean e(Object obj) {
            if (g(obj) != null || f(obj) >= 0) {
                return false;
            }
            C0045b c0045b = new C0045b(obj, j(obj));
            a(c0045b);
            this.h.add(c0045b);
            return true;
        }

        private String j(Object obj) {
            String format = h() == obj ? "DEFAULT_ROUTE" : String.format(Locale.US, "ROUTE_%08x", Integer.valueOf(h(obj).hashCode()));
            if (b(format) < 0) {
                return format;
            }
            int i = 2;
            while (true) {
                String format2 = String.format(Locale.US, "%s_%d", format, Integer.valueOf(i));
                if (b(format2) < 0) {
                    return format2;
                }
                i++;
            }
        }

        @Override // android.support.v7.media.i.a
        public void b(Object obj) {
            int f;
            if (g(obj) == null && (f = f(obj)) >= 0) {
                this.h.remove(f);
                i();
            }
        }

        @Override // android.support.v7.media.i.a
        public void c(Object obj) {
            int f;
            if (g(obj) == null && (f = f(obj)) >= 0) {
                a(this.h.get(f));
                i();
            }
        }

        @Override // android.support.v7.media.i.a
        public void d(Object obj) {
            int f;
            if (g(obj) == null && (f = f(obj)) >= 0) {
                C0045b c0045b = this.h.get(f);
                int d = i.d.d(obj);
                if (d != c0045b.c.p()) {
                    c0045b.c = new a.C0039a(c0045b.c).d(d).a();
                    i();
                }
            }
        }

        @Override // android.support.v7.media.i.a
        public void a(int i, Object obj) {
            g.C0043g b;
            if (obj == i.a(this.f686a, 8388611)) {
                c g = g(obj);
                if (g != null) {
                    g.f689a.v();
                    return;
                }
                int f = f(obj);
                if (f >= 0 && (b = this.l.b(this.h.get(f).b)) != null) {
                    b.v();
                }
            }
        }

        @Override // android.support.v7.media.i.a
        public void b(int i, Object obj) {
        }

        @Override // android.support.v7.media.i.a
        public void a(Object obj, Object obj2, int i) {
        }

        @Override // android.support.v7.media.i.a
        public void a(Object obj, Object obj2) {
        }

        @Override // android.support.v7.media.i.g
        public void a(Object obj, int i) {
            c g = g(obj);
            if (g != null) {
                g.f689a.a(i);
            }
        }

        @Override // android.support.v7.media.i.g
        public void b(Object obj, int i) {
            c g = g(obj);
            if (g != null) {
                g.f689a.b(i);
            }
        }

        @Override // android.support.v7.media.o
        public void a(g.C0043g c0043g) {
            if (c0043g.x() != this) {
                Object b = i.b(this.f686a, this.d);
                c cVar = new c(c0043g, b);
                i.d.a(b, cVar);
                i.f.a(b, this.c);
                a(cVar);
                this.i.add(cVar);
                i.c(this.f686a, b);
                return;
            }
            int f = f(i.a(this.f686a, 8388611));
            if (f >= 0 && this.h.get(f).b.equals(c0043g.w())) {
                c0043g.v();
            }
        }

        @Override // android.support.v7.media.o
        public void b(g.C0043g c0043g) {
            int e;
            if (c0043g.x() != this && (e = e(c0043g)) >= 0) {
                c remove = this.i.remove(e);
                i.d.a(remove.b, (Object) null);
                i.f.a(remove.b, (Object) null);
                i.d(this.f686a, remove.b);
            }
        }

        @Override // android.support.v7.media.o
        public void c(g.C0043g c0043g) {
            int e;
            if (c0043g.x() != this && (e = e(c0043g)) >= 0) {
                a(this.i.get(e));
            }
        }

        @Override // android.support.v7.media.o
        public void d(g.C0043g c0043g) {
            if (c0043g.j()) {
                if (c0043g.x() != this) {
                    int e = e(c0043g);
                    if (e >= 0) {
                        i(this.i.get(e).b);
                        return;
                    }
                    return;
                }
                int b = b(c0043g.w());
                if (b >= 0) {
                    i(this.h.get(b).f688a);
                }
            }
        }

        protected void i() {
            d.a aVar = new d.a();
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                aVar.a(this.h.get(i).c);
            }
            a(aVar.a());
        }

        protected int f(Object obj) {
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                if (this.h.get(i).f688a == obj) {
                    return i;
                }
            }
            return -1;
        }

        protected int b(String str) {
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                if (this.h.get(i).b.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        protected int e(g.C0043g c0043g) {
            int size = this.i.size();
            for (int i = 0; i < size; i++) {
                if (this.i.get(i).f689a == c0043g) {
                    return i;
                }
            }
            return -1;
        }

        protected c g(Object obj) {
            Object g = i.d.g(obj);
            if (g instanceof c) {
                return (c) g;
            }
            return null;
        }

        protected void a(C0045b c0045b) {
            a.C0039a c0039a = new a.C0039a(c0045b.b, h(c0045b.f688a));
            a(c0045b, c0039a);
            c0045b.c = c0039a.a();
        }

        protected String h(Object obj) {
            CharSequence a2 = i.d.a(obj, a());
            return a2 != null ? a2.toString() : "";
        }

        protected void a(C0045b c0045b, a.C0039a c0039a) {
            int a2 = i.d.a(c0045b.f688a);
            if ((a2 & 1) != 0) {
                c0039a.a(j);
            }
            if ((a2 & 2) != 0) {
                c0039a.a(k);
            }
            c0039a.a(i.d.b(c0045b.f688a));
            c0039a.b(i.d.c(c0045b.f688a));
            c0039a.d(i.d.d(c0045b.f688a));
            c0039a.e(i.d.e(c0045b.f688a));
            c0039a.f(i.d.f(c0045b.f688a));
        }

        protected void a(c cVar) {
            i.f.a(cVar.b, (CharSequence) cVar.f689a.d());
            i.f.a(cVar.b, cVar.f689a.l());
            i.f.b(cVar.b, cVar.f689a.m());
            i.f.c(cVar.b, cVar.f689a.q());
            i.f.d(cVar.b, cVar.f689a.r());
            i.f.e(cVar.b, cVar.f689a.p());
        }

        protected void j() {
            if (this.g) {
                this.g = false;
                i.a(this.f686a, this.b);
            }
            if (this.e != 0) {
                this.g = true;
                i.b(this.f686a, this.e, this.b);
            }
        }

        protected Object k() {
            return i.a((i.a) this);
        }

        protected Object l() {
            return i.a((i.g) this);
        }

        protected void i(Object obj) {
            if (this.m == null) {
                this.m = new i.e();
            }
            this.m.a(this.f686a, 8388611, obj);
        }

        @Override // android.support.v7.media.o
        protected Object h() {
            if (this.n == null) {
                this.n = new i.c();
            }
            return this.n.a(this.f686a);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* compiled from: SystemMediaRouteProvider.java */
        /* renamed from: android.support.v7.media.o$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0045b {

            /* renamed from: a  reason: collision with root package name */
            public final Object f688a;
            public final String b;
            public android.support.v7.media.a c;

            public C0045b(Object obj, String str) {
                this.f688a = obj;
                this.b = str;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* compiled from: SystemMediaRouteProvider.java */
        /* loaded from: classes.dex */
        public static final class c {

            /* renamed from: a  reason: collision with root package name */
            public final g.C0043g f689a;
            public final Object b;

            public c(g.C0043g c0043g, Object obj) {
                this.f689a = c0043g;
                this.b = obj;
            }
        }

        /* compiled from: SystemMediaRouteProvider.java */
        /* loaded from: classes.dex */
        protected final class a extends c.d {
            private final Object b;

            public a(Object obj) {
                this.b = obj;
            }

            @Override // android.support.v7.media.c.d
            public void b(int i) {
                i.d.a(this.b, i);
            }

            @Override // android.support.v7.media.c.d
            public void c(int i) {
                i.d.b(this.b, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SystemMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static class c extends b implements j.b {
        private j.a j;
        private j.d k;

        public c(Context context, f fVar) {
            super(context, fVar);
        }

        @Override // android.support.v7.media.j.b
        public void e(Object obj) {
            int f = f(obj);
            if (f >= 0) {
                b.C0045b c0045b = this.h.get(f);
                Display b = j.e.b(obj);
                int displayId = b != null ? b.getDisplayId() : -1;
                if (displayId != c0045b.c.s()) {
                    c0045b.c = new a.C0039a(c0045b.c).g(displayId).a();
                    i();
                }
            }
        }

        @Override // android.support.v7.media.o.b
        protected void a(b.C0045b c0045b, a.C0039a c0039a) {
            super.a(c0045b, c0039a);
            if (!j.e.a(c0045b.f688a)) {
                c0039a.a(false);
            }
            if (b(c0045b)) {
                c0039a.b(true);
            }
            Display b = j.e.b(c0045b.f688a);
            if (b != null) {
                c0039a.g(b.getDisplayId());
            }
        }

        @Override // android.support.v7.media.o.b
        protected void j() {
            super.j();
            if (this.j == null) {
                this.j = new j.a(a(), b());
            }
            this.j.a(this.f ? this.e : 0);
        }

        @Override // android.support.v7.media.o.b
        protected Object k() {
            return j.a(this);
        }

        protected boolean b(b.C0045b c0045b) {
            if (this.k == null) {
                this.k = new j.d();
            }
            return this.k.a(c0045b.f688a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SystemMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static class d extends c {
        public d(Context context, f fVar) {
            super(context, fVar);
        }

        @Override // android.support.v7.media.o.c, android.support.v7.media.o.b
        protected void a(b.C0045b c0045b, a.C0039a c0039a) {
            super.a(c0045b, c0039a);
            CharSequence a2 = k.a.a(c0045b.f688a);
            if (a2 != null) {
                c0039a.c(a2.toString());
            }
        }

        @Override // android.support.v7.media.o.b
        protected void i(Object obj) {
            i.a(this.f686a, 8388611, obj);
        }

        @Override // android.support.v7.media.o.b, android.support.v7.media.o
        protected Object h() {
            return k.a(this.f686a);
        }

        @Override // android.support.v7.media.o.b
        protected void a(b.c cVar) {
            super.a(cVar);
            k.b.a(cVar.b, cVar.f689a.e());
        }

        @Override // android.support.v7.media.o.c, android.support.v7.media.o.b
        protected void j() {
            int i = 1;
            if (this.g) {
                i.a(this.f686a, this.b);
            }
            this.g = true;
            Object obj = this.f686a;
            int i2 = this.e;
            Object obj2 = this.b;
            if (!this.f) {
                i = 0;
            }
            k.a(obj, i2, obj2, i | 2);
        }

        @Override // android.support.v7.media.o.c
        protected boolean b(b.C0045b c0045b) {
            return k.a.b(c0045b.f688a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SystemMediaRouteProvider.java */
    /* loaded from: classes.dex */
    public static class a extends d {
        public a(Context context, f fVar) {
            super(context, fVar);
        }

        @Override // android.support.v7.media.o.d, android.support.v7.media.o.c, android.support.v7.media.o.b
        protected void a(b.C0045b c0045b, a.C0039a c0039a) {
            super.a(c0045b, c0039a);
            c0039a.c(h.a.a(c0045b.f688a));
        }
    }
}
