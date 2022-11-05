package android.support.v7.media;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.RestrictTo;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v7.media.c;
import android.support.v7.media.f;
import android.support.v7.media.m;
import android.support.v7.media.n;
import android.support.v7.media.o;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import com.google.android.gms.drive.FileUploadPreferences;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* compiled from: MediaRouter.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f654a = Log.isLoggable("MediaRouter", 3);
    static d b;
    final Context c;
    final ArrayList<b> d = new ArrayList<>();

    g(Context context) {
        this.c = context;
    }

    public static g a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        e();
        if (b == null) {
            b = new d(context.getApplicationContext());
            b.a();
        }
        return b.a(context);
    }

    public List<C0043g> a() {
        e();
        return b.b();
    }

    public C0043g b() {
        e();
        return b.c();
    }

    public C0043g c() {
        e();
        return b.d();
    }

    public void a(C0043g c0043g) {
        if (c0043g == null) {
            throw new IllegalArgumentException("route must not be null");
        }
        e();
        if (f654a) {
            Log.d("MediaRouter", "selectRoute: " + c0043g);
        }
        b.a(c0043g);
    }

    public void a(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("Unsupported reason to unselect route");
        }
        e();
        C0043g f2 = b.f();
        if (b.d() != f2) {
            b.c(f2, i);
        } else {
            b.c(b.c(), i);
        }
    }

    public boolean a(android.support.v7.media.f fVar, int i) {
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        e();
        return b.a(fVar, i);
    }

    public void a(android.support.v7.media.f fVar, a aVar) {
        a(fVar, aVar, 0);
    }

    public void a(android.support.v7.media.f fVar, a aVar, int i) {
        b bVar;
        boolean z = true;
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        e();
        if (f654a) {
            Log.d("MediaRouter", "addCallback: selector=" + fVar + ", callback=" + aVar + ", flags=" + Integer.toHexString(i));
        }
        int b2 = b(aVar);
        if (b2 < 0) {
            bVar = new b(this, aVar);
            this.d.add(bVar);
        } else {
            bVar = this.d.get(b2);
        }
        boolean z2 = false;
        if (((bVar.d ^ (-1)) & i) != 0) {
            bVar.d |= i;
            z2 = true;
        }
        if (!bVar.c.a(fVar)) {
            bVar.c = new f.a(bVar.c).a(fVar).a();
        } else {
            z = z2;
        }
        if (z) {
            b.e();
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        e();
        if (f654a) {
            Log.d("MediaRouter", "removeCallback: callback=" + aVar);
        }
        int b2 = b(aVar);
        if (b2 >= 0) {
            this.d.remove(b2);
            b.e();
        }
    }

    private int b(a aVar) {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            if (this.d.get(i).b == aVar) {
                return i;
            }
        }
        return -1;
    }

    public void a(MediaSessionCompat mediaSessionCompat) {
        if (f654a) {
            Log.d("MediaRouter", "addMediaSessionCompat: " + mediaSessionCompat);
        }
        b.a(mediaSessionCompat);
    }

    public MediaSessionCompat.Token d() {
        return b.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    static <T> boolean a(T t, T t2) {
        return t == t2 || !(t == null || t2 == null || !t.equals(t2));
    }

    /* compiled from: MediaRouter.java */
    /* renamed from: android.support.v7.media.g$g  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0043g {

        /* renamed from: a  reason: collision with root package name */
        android.support.v7.media.a f666a;
        private final e b;
        private final String c;
        private final String d;
        private String e;
        private String f;
        private Uri g;
        private boolean h;
        private boolean i;
        private int j;
        private boolean k;
        private int m;
        private int n;
        private int o;
        private int p;
        private int q;
        private int r;
        private Display s;
        private Bundle u;
        private IntentSender v;
        private final ArrayList<IntentFilter> l = new ArrayList<>();
        private int t = -1;

        C0043g(e eVar, String str, String str2) {
            this.b = eVar;
            this.c = str;
            this.d = str2;
        }

        public e b() {
            return this.b;
        }

        public String c() {
            return this.d;
        }

        public String d() {
            return this.e;
        }

        public String e() {
            return this.f;
        }

        public Uri f() {
            return this.g;
        }

        public boolean g() {
            return this.h;
        }

        public boolean h() {
            return this.i;
        }

        public int i() {
            return this.j;
        }

        public boolean j() {
            g.e();
            return g.b.d() == this;
        }

        public boolean k() {
            g.e();
            return g.b.c() == this;
        }

        public boolean a(android.support.v7.media.f fVar) {
            if (fVar == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            g.e();
            return fVar.a(this.l);
        }

        public boolean a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            }
            g.e();
            int size = this.l.size();
            for (int i = 0; i < size; i++) {
                if (this.l.get(i).hasCategory(str)) {
                    return true;
                }
            }
            return false;
        }

        public int l() {
            return this.m;
        }

        public int m() {
            return this.n;
        }

        public int n() {
            return this.o;
        }

        @RestrictTo
        public boolean o() {
            if (k() || this.o == 3) {
                return true;
            }
            return d(this) && a("android.media.intent.category.LIVE_AUDIO") && !a("android.media.intent.category.LIVE_VIDEO");
        }

        private static boolean d(C0043g c0043g) {
            return TextUtils.equals(c0043g.x().c().a(), io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        }

        public int p() {
            return this.p;
        }

        public int q() {
            return this.q;
        }

        public int r() {
            return this.r;
        }

        public boolean s() {
            return this.k;
        }

        public void a(int i) {
            g.e();
            g.b.a(this, Math.min(this.r, Math.max(0, i)));
        }

        public void b(int i) {
            g.e();
            if (i != 0) {
                g.b.b(this, i);
            }
        }

        @RestrictTo
        public int t() {
            return this.t;
        }

        public Bundle u() {
            return this.u;
        }

        public void v() {
            g.e();
            g.b.a(this);
        }

        public String toString() {
            return "MediaRouter.RouteInfo{ uniqueId=" + this.d + ", name=" + this.e + ", description=" + this.f + ", iconUri=" + this.g + ", enabled=" + this.h + ", connecting=" + this.i + ", connectionState=" + this.j + ", canDisconnect=" + this.k + ", playbackType=" + this.m + ", playbackStream=" + this.n + ", deviceType=" + this.o + ", volumeHandling=" + this.p + ", volume=" + this.q + ", volumeMax=" + this.r + ", presentationDisplayId=" + this.t + ", extras=" + this.u + ", settingsIntent=" + this.v + ", providerPackageName=" + this.b.b() + " }";
        }

        int a(android.support.v7.media.a aVar) {
            if (this.f666a == aVar) {
                return 0;
            }
            return b(aVar);
        }

        int b(android.support.v7.media.a aVar) {
            int i = 0;
            this.f666a = aVar;
            if (aVar == null) {
                return 0;
            }
            if (!g.a(this.e, aVar.c())) {
                this.e = aVar.c();
                i = 1;
            }
            if (!g.a(this.f, aVar.d())) {
                this.f = aVar.d();
                i |= 1;
            }
            if (!g.a(this.g, aVar.e())) {
                this.g = aVar.e();
                i |= 1;
            }
            if (this.h != aVar.f()) {
                this.h = aVar.f();
                i |= 1;
            }
            if (this.i != aVar.g()) {
                this.i = aVar.g();
                i |= 1;
            }
            if (this.j != aVar.h()) {
                this.j = aVar.h();
                i |= 1;
            }
            if (!this.l.equals(aVar.k())) {
                this.l.clear();
                this.l.addAll(aVar.k());
                i |= 1;
            }
            if (this.m != aVar.m()) {
                this.m = aVar.m();
                i |= 1;
            }
            if (this.n != aVar.n()) {
                this.n = aVar.n();
                i |= 1;
            }
            if (this.o != aVar.o()) {
                this.o = aVar.o();
                i |= 1;
            }
            if (this.p != aVar.r()) {
                this.p = aVar.r();
                i |= 3;
            }
            if (this.q != aVar.p()) {
                this.q = aVar.p();
                i |= 3;
            }
            if (this.r != aVar.q()) {
                this.r = aVar.q();
                i |= 3;
            }
            if (this.t != aVar.s()) {
                this.t = aVar.s();
                this.s = null;
                i |= 5;
            }
            if (!g.a(this.u, aVar.t())) {
                this.u = aVar.t();
                i |= 1;
            }
            if (!g.a(this.v, aVar.j())) {
                this.v = aVar.j();
                i |= 1;
            }
            if (this.k != aVar.i()) {
                this.k = aVar.i();
                return i | 5;
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String w() {
            return this.c;
        }

        @RestrictTo
        public android.support.v7.media.c x() {
            return this.b.a();
        }
    }

    /* compiled from: MediaRouter.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public static class f extends C0043g {
        private List<C0043g> b;

        f(e eVar, String str, String str2) {
            super(eVar, str, str2);
            this.b = new ArrayList();
        }

        public List<C0043g> a() {
            return this.b;
        }

        @Override // android.support.v7.media.g.C0043g
        public String toString() {
            StringBuilder sb = new StringBuilder(super.toString());
            sb.append('[');
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(this.b.get(i));
            }
            sb.append(']');
            return sb.toString();
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
        @Override // android.support.v7.media.g.C0043g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int a(android.support.v7.media.a aVar) {
            boolean z;
            int i = 1;
            if (this.f666a != aVar) {
                this.f666a = aVar;
                if (aVar != null) {
                    List<String> b = aVar.b();
                    ArrayList arrayList = new ArrayList();
                    boolean z2 = b.size() != this.b.size();
                    Iterator<String> it = b.iterator();
                    while (true) {
                        z = z2;
                        if (!it.hasNext()) {
                            break;
                        }
                        C0043g a2 = g.b.a(g.b.b(b(), it.next()));
                        if (a2 != null) {
                            arrayList.add(a2);
                            if (!z && !this.b.contains(a2)) {
                                z2 = true;
                            }
                        }
                        z2 = z;
                    }
                    if (z) {
                        this.b = arrayList;
                    }
                    if (!z) {
                        i = 0;
                    }
                    return super.b(aVar) | i;
                }
            }
            z = false;
            if (!z) {
            }
            return super.b(aVar) | i;
        }
    }

    /* compiled from: MediaRouter.java */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private final android.support.v7.media.c f665a;
        private final List<C0043g> b = new ArrayList();
        private final c.C0040c c;
        private android.support.v7.media.d d;

        e(android.support.v7.media.c cVar) {
            this.f665a = cVar;
            this.c = cVar.c();
        }

        public android.support.v7.media.c a() {
            g.e();
            return this.f665a;
        }

        public String b() {
            return this.c.a();
        }

        public ComponentName c() {
            return this.c.b();
        }

        boolean a(android.support.v7.media.d dVar) {
            if (this.d != dVar) {
                this.d = dVar;
                return true;
            }
            return false;
        }

        int a(String str) {
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                if (this.b.get(i).c.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public String toString() {
            return "MediaRouter.RouteProviderInfo{ packageName=" + b() + " }";
        }
    }

    /* compiled from: MediaRouter.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public void onRouteSelected(g gVar, C0043g c0043g) {
        }

        public void onRouteUnselected(g gVar, C0043g c0043g) {
        }

        public void onRouteUnselected(g gVar, C0043g c0043g, int i) {
            onRouteUnselected(gVar, c0043g);
        }

        public void onRouteAdded(g gVar, C0043g c0043g) {
        }

        public void onRouteRemoved(g gVar, C0043g c0043g) {
        }

        public void onRouteChanged(g gVar, C0043g c0043g) {
        }

        public void onRouteVolumeChanged(g gVar, C0043g c0043g) {
        }

        public void onRoutePresentationDisplayChanged(g gVar, C0043g c0043g) {
        }

        public void onProviderAdded(g gVar, e eVar) {
        }

        public void onProviderRemoved(g gVar, e eVar) {
        }

        public void onProviderChanged(g gVar, e eVar) {
        }
    }

    /* compiled from: MediaRouter.java */
    /* loaded from: classes.dex */
    public static abstract class c {
        public void a(Bundle bundle) {
        }

        public void a(String str, Bundle bundle) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouter.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final g f655a;
        public final a b;
        public android.support.v7.media.f c = android.support.v7.media.f.b;
        public int d;

        public b(g gVar, a aVar) {
            this.f655a = gVar;
            this.b = aVar;
        }

        public boolean a(C0043g c0043g) {
            return (this.d & 2) != 0 || c0043g.a(this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouter.java */
    /* loaded from: classes.dex */
    public static final class d implements m.a, o.f {

        /* renamed from: a  reason: collision with root package name */
        final Context f656a;
        final o e;
        C0043g f;
        MediaSessionCompat g;
        private final android.support.v4.c.a.a m;
        private final boolean n;
        private m o;
        private C0043g p;
        private C0043g q;
        private c.d r;
        private android.support.v7.media.b t;
        private b u;
        private MediaSessionCompat v;
        final ArrayList<WeakReference<g>> b = new ArrayList<>();
        private final ArrayList<C0043g> h = new ArrayList<>();
        private final Map<android.support.v4.f.i<String, String>, String> i = new HashMap();
        private final ArrayList<e> j = new ArrayList<>();
        private final ArrayList<C0042d> k = new ArrayList<>();
        final n.c c = new n.c();
        private final c l = new c();
        final a d = new a();
        private final Map<String, c.d> s = new HashMap();
        private MediaSessionCompat.e w = new MediaSessionCompat.e() { // from class: android.support.v7.media.g.d.1
            @Override // android.support.v4.media.session.MediaSessionCompat.e
            public void a() {
                if (d.this.g != null) {
                    if (d.this.g.a()) {
                        d.this.a(d.this.g.e());
                    } else {
                        d.this.b(d.this.g.e());
                    }
                }
            }
        };

        d(Context context) {
            this.f656a = context;
            this.m = android.support.v4.c.a.a.a(context);
            this.n = android.support.v4.app.f.a((ActivityManager) context.getSystemService("activity"));
            this.e = o.a(context, this);
            a((android.support.v7.media.c) this.e);
        }

        public void a() {
            this.o = new m(this.f656a, this);
            this.o.a();
        }

        public g a(Context context) {
            int size = this.b.size();
            while (true) {
                int i = size - 1;
                if (i >= 0) {
                    g gVar = this.b.get(i).get();
                    if (gVar == null) {
                        this.b.remove(i);
                        size = i;
                    } else if (gVar.c == context) {
                        return gVar;
                    } else {
                        size = i;
                    }
                } else {
                    g gVar2 = new g(context);
                    this.b.add(new WeakReference<>(gVar2));
                    return gVar2;
                }
            }
        }

        public void a(C0043g c0043g, int i) {
            c.d dVar;
            if (c0043g == this.f && this.r != null) {
                this.r.b(i);
            } else if (!this.s.isEmpty() && (dVar = this.s.get(c0043g.c)) != null) {
                dVar.b(i);
            }
        }

        public void b(C0043g c0043g, int i) {
            if (c0043g == this.f && this.r != null) {
                this.r.c(i);
            }
        }

        public C0043g a(String str) {
            Iterator<C0043g> it = this.h.iterator();
            while (it.hasNext()) {
                C0043g next = it.next();
                if (next.d.equals(str)) {
                    return next;
                }
            }
            return null;
        }

        public List<C0043g> b() {
            return this.h;
        }

        public C0043g c() {
            if (this.p == null) {
                throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
            }
            return this.p;
        }

        public C0043g d() {
            if (this.f == null) {
                throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
            }
            return this.f;
        }

        public void a(C0043g c0043g) {
            c(c0043g, 3);
        }

        public void c(C0043g c0043g, int i) {
            if (this.h.contains(c0043g)) {
                if (!c0043g.h) {
                    Log.w("MediaRouter", "Ignoring attempt to select disabled route: " + c0043g);
                    return;
                } else {
                    d(c0043g, i);
                    return;
                }
            }
            Log.w("MediaRouter", "Ignoring attempt to select removed route: " + c0043g);
        }

        public boolean a(android.support.v7.media.f fVar, int i) {
            if (fVar.c()) {
                return false;
            }
            if ((i & 2) == 0 && this.n) {
                return true;
            }
            int size = this.h.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0043g c0043g = this.h.get(i2);
                if (((i & 1) == 0 || !c0043g.o()) && c0043g.a(fVar)) {
                    return true;
                }
            }
            return false;
        }

        public void e() {
            f.a aVar = new f.a();
            int size = this.b.size();
            boolean z = false;
            boolean z2 = false;
            while (true) {
                int i = size - 1;
                if (i < 0) {
                    break;
                }
                g gVar = this.b.get(i).get();
                if (gVar == null) {
                    this.b.remove(i);
                } else {
                    int size2 = gVar.d.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        b bVar = gVar.d.get(i2);
                        aVar.a(bVar.c);
                        if ((bVar.d & 1) != 0) {
                            z = true;
                            z2 = true;
                        }
                        if ((bVar.d & 4) != 0 && !this.n) {
                            z2 = true;
                        }
                        if ((bVar.d & 8) != 0) {
                            z2 = true;
                        }
                    }
                }
                size = i;
            }
            android.support.v7.media.f a2 = z2 ? aVar.a() : android.support.v7.media.f.b;
            if (this.t == null || !this.t.a().equals(a2) || this.t.b() != z) {
                if (a2.c() && !z) {
                    if (this.t != null) {
                        this.t = null;
                    } else {
                        return;
                    }
                } else {
                    this.t = new android.support.v7.media.b(a2, z);
                }
                if (g.f654a) {
                    Log.d("MediaRouter", "Updated discovery request: " + this.t);
                }
                if (z2 && !z && this.n) {
                    Log.i("MediaRouter", "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY.");
                }
                int size3 = this.j.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.j.get(i3).f665a.a(this.t);
                }
            }
        }

        @Override // android.support.v7.media.m.a
        public void a(android.support.v7.media.c cVar) {
            if (c(cVar) < 0) {
                e eVar = new e(cVar);
                this.j.add(eVar);
                if (g.f654a) {
                    Log.d("MediaRouter", "Provider added: " + eVar);
                }
                this.d.a(513, eVar);
                a(eVar, cVar.f());
                cVar.a(this.l);
                cVar.a(this.t);
            }
        }

        @Override // android.support.v7.media.m.a
        public void b(android.support.v7.media.c cVar) {
            int c2 = c(cVar);
            if (c2 >= 0) {
                cVar.a((c.a) null);
                cVar.a((android.support.v7.media.b) null);
                e eVar = this.j.get(c2);
                a(eVar, (android.support.v7.media.d) null);
                if (g.f654a) {
                    Log.d("MediaRouter", "Provider removed: " + eVar);
                }
                this.d.a(514, eVar);
                this.j.remove(c2);
            }
        }

        void a(android.support.v7.media.c cVar, android.support.v7.media.d dVar) {
            int c2 = c(cVar);
            if (c2 >= 0) {
                a(this.j.get(c2), dVar);
            }
        }

        private int c(android.support.v7.media.c cVar) {
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                if (this.j.get(i).f665a == cVar) {
                    return i;
                }
            }
            return -1;
        }

        private void a(e eVar, android.support.v7.media.d dVar) {
            boolean z;
            int i;
            if (eVar.a(dVar)) {
                int i2 = 0;
                boolean z2 = false;
                if (dVar != null) {
                    if (dVar.c()) {
                        List<android.support.v7.media.a> a2 = dVar.a();
                        int size = a2.size();
                        ArrayList<android.support.v4.f.i> arrayList = new ArrayList();
                        ArrayList<android.support.v4.f.i> arrayList2 = new ArrayList();
                        int i3 = 0;
                        while (i3 < size) {
                            android.support.v7.media.a aVar = a2.get(i3);
                            String a3 = aVar.a();
                            int a4 = eVar.a(a3);
                            if (a4 < 0) {
                                String a5 = a(eVar, a3);
                                boolean z3 = aVar.b() != null;
                                C0043g fVar = z3 ? new f(eVar, a3, a5) : new C0043g(eVar, a3, a5);
                                int i4 = i2 + 1;
                                eVar.b.add(i2, fVar);
                                this.h.add(fVar);
                                if (z3) {
                                    arrayList.add(new android.support.v4.f.i(fVar, aVar));
                                } else {
                                    fVar.a(aVar);
                                    if (g.f654a) {
                                        Log.d("MediaRouter", "Route added: " + fVar);
                                    }
                                    this.d.a(FileUploadPreferences.BATTERY_USAGE_CHARGING_ONLY, fVar);
                                }
                                z = z2;
                                i = i4;
                            } else if (a4 >= i2) {
                                C0043g c0043g = (C0043g) eVar.b.get(a4);
                                int i5 = i2 + 1;
                                Collections.swap(eVar.b, a4, i2);
                                if (c0043g instanceof f) {
                                    arrayList2.add(new android.support.v4.f.i(c0043g, aVar));
                                    z = z2;
                                    i = i5;
                                } else if (a(c0043g, aVar) == 0 || c0043g != this.f) {
                                    z = z2;
                                    i = i5;
                                } else {
                                    z = true;
                                    i = i5;
                                }
                            } else {
                                Log.w("MediaRouter", "Ignoring route descriptor with duplicate id: " + aVar);
                                z = z2;
                                i = i2;
                            }
                            i3++;
                            i2 = i;
                            z2 = z;
                        }
                        for (android.support.v4.f.i iVar : arrayList) {
                            C0043g c0043g2 = (C0043g) iVar.f325a;
                            c0043g2.a((android.support.v7.media.a) iVar.b);
                            if (g.f654a) {
                                Log.d("MediaRouter", "Route added: " + c0043g2);
                            }
                            this.d.a(FileUploadPreferences.BATTERY_USAGE_CHARGING_ONLY, c0043g2);
                        }
                        for (android.support.v4.f.i iVar2 : arrayList2) {
                            C0043g c0043g3 = (C0043g) iVar2.f325a;
                            if (a(c0043g3, (android.support.v7.media.a) iVar2.b) != 0 && c0043g3 == this.f) {
                                z2 = true;
                            }
                        }
                    } else {
                        Log.w("MediaRouter", "Ignoring invalid provider descriptor: " + dVar);
                    }
                }
                for (int size2 = eVar.b.size() - 1; size2 >= i2; size2--) {
                    C0043g c0043g4 = (C0043g) eVar.b.get(size2);
                    c0043g4.a((android.support.v7.media.a) null);
                    this.h.remove(c0043g4);
                }
                a(z2);
                for (int size3 = eVar.b.size() - 1; size3 >= i2; size3--) {
                    C0043g c0043g5 = (C0043g) eVar.b.remove(size3);
                    if (g.f654a) {
                        Log.d("MediaRouter", "Route removed: " + c0043g5);
                    }
                    this.d.a(258, c0043g5);
                }
                if (g.f654a) {
                    Log.d("MediaRouter", "Provider changed: " + eVar);
                }
                this.d.a(515, eVar);
            }
        }

        private int a(C0043g c0043g, android.support.v7.media.a aVar) {
            int a2 = c0043g.a(aVar);
            if (a2 != 0) {
                if ((a2 & 1) != 0) {
                    if (g.f654a) {
                        Log.d("MediaRouter", "Route changed: " + c0043g);
                    }
                    this.d.a(259, c0043g);
                }
                if ((a2 & 2) != 0) {
                    if (g.f654a) {
                        Log.d("MediaRouter", "Route volume changed: " + c0043g);
                    }
                    this.d.a(260, c0043g);
                }
                if ((a2 & 4) != 0) {
                    if (g.f654a) {
                        Log.d("MediaRouter", "Route presentation display changed: " + c0043g);
                    }
                    this.d.a(261, c0043g);
                }
            }
            return a2;
        }

        private String a(e eVar, String str) {
            String flattenToShortString = eVar.c().flattenToShortString();
            String str2 = flattenToShortString + ":" + str;
            if (c(str2) < 0) {
                this.i.put(new android.support.v4.f.i<>(flattenToShortString, str), str2);
                return str2;
            }
            Log.w("MediaRouter", "Either " + str + " isn't unique in " + flattenToShortString + " or we're trying to assign a unique ID for an already added route");
            int i = 2;
            while (true) {
                String format = String.format(Locale.US, "%s_%d", str2, Integer.valueOf(i));
                if (c(format) >= 0) {
                    i++;
                } else {
                    this.i.put(new android.support.v4.f.i<>(flattenToShortString, str), format);
                    return format;
                }
            }
        }

        private int c(String str) {
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                if (this.h.get(i).d.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b(e eVar, String str) {
            return this.i.get(new android.support.v4.f.i(eVar.c().flattenToShortString(), str));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(boolean z) {
            if (this.p != null && !c(this.p)) {
                Log.i("MediaRouter", "Clearing the default route because it is no longer selectable: " + this.p);
                this.p = null;
            }
            if (this.p == null && !this.h.isEmpty()) {
                Iterator<C0043g> it = this.h.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    C0043g next = it.next();
                    if (d(next) && c(next)) {
                        this.p = next;
                        Log.i("MediaRouter", "Found default route: " + this.p);
                        break;
                    }
                }
            }
            if (this.q != null && !c(this.q)) {
                Log.i("MediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.q);
                this.q = null;
            }
            if (this.q == null && !this.h.isEmpty()) {
                Iterator<C0043g> it2 = this.h.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    C0043g next2 = it2.next();
                    if (b(next2) && c(next2)) {
                        this.q = next2;
                        Log.i("MediaRouter", "Found bluetooth route: " + this.q);
                        break;
                    }
                }
            }
            if (this.f != null && !c(this.f)) {
                Log.i("MediaRouter", "Unselecting the current route because it is no longer selectable: " + this.f);
                d(null, 0);
            }
            if (this.f == null) {
                d(f(), 0);
            } else if (z) {
                if (this.f instanceof f) {
                    List<C0043g> a2 = ((f) this.f).a();
                    HashSet hashSet = new HashSet();
                    for (C0043g c0043g : a2) {
                        hashSet.add(c0043g.c);
                    }
                    Iterator<Map.Entry<String, c.d>> it3 = this.s.entrySet().iterator();
                    while (it3.hasNext()) {
                        Map.Entry<String, c.d> next3 = it3.next();
                        if (!hashSet.contains(next3.getKey())) {
                            c.d value = next3.getValue();
                            value.c();
                            value.a();
                            it3.remove();
                        }
                    }
                    for (C0043g c0043g2 : a2) {
                        if (!this.s.containsKey(c0043g2.c)) {
                            c.d a3 = c0043g2.x().a(c0043g2.c, this.f.c);
                            a3.b();
                            this.s.put(c0043g2.c, a3);
                        }
                    }
                }
                h();
            }
        }

        C0043g f() {
            Iterator<C0043g> it = this.h.iterator();
            while (it.hasNext()) {
                C0043g next = it.next();
                if (next != this.p && b(next) && c(next)) {
                    return next;
                }
            }
            return this.p;
        }

        private boolean b(C0043g c0043g) {
            return c0043g.x() == this.e && c0043g.a("android.media.intent.category.LIVE_AUDIO") && !c0043g.a("android.media.intent.category.LIVE_VIDEO");
        }

        private boolean c(C0043g c0043g) {
            return c0043g.f666a != null && c0043g.h;
        }

        private boolean d(C0043g c0043g) {
            return c0043g.x() == this.e && c0043g.c.equals("DEFAULT_ROUTE");
        }

        private void d(C0043g c0043g, int i) {
            if (this.f != c0043g) {
                if (this.f != null) {
                    if (g.f654a) {
                        Log.d("MediaRouter", "Route unselected: " + this.f + " reason: " + i);
                    }
                    this.d.a(263, this.f, i);
                    if (this.r != null) {
                        this.r.a(i);
                        this.r.a();
                        this.r = null;
                    }
                    if (!this.s.isEmpty()) {
                        for (c.d dVar : this.s.values()) {
                            dVar.a(i);
                            dVar.a();
                        }
                        this.s.clear();
                    }
                }
                this.f = c0043g;
                if (this.f != null) {
                    this.r = c0043g.x().a(c0043g.c);
                    if (this.r != null) {
                        this.r.b();
                    }
                    if (g.f654a) {
                        Log.d("MediaRouter", "Route selected: " + this.f);
                    }
                    this.d.a(262, this.f);
                    if (this.f instanceof f) {
                        List<C0043g> a2 = ((f) this.f).a();
                        this.s.clear();
                        for (C0043g c0043g2 : a2) {
                            c.d a3 = c0043g2.x().a(c0043g2.c, this.f.c);
                            a3.b();
                            this.s.put(c0043g2.c, a3);
                        }
                    }
                }
                h();
            }
        }

        @Override // android.support.v7.media.o.f
        public C0043g b(String str) {
            e eVar;
            int a2;
            int c2 = c((android.support.v7.media.c) this.e);
            if (c2 < 0 || (a2 = (eVar = this.j.get(c2)).a(str)) < 0) {
                return null;
            }
            return (C0043g) eVar.b.get(a2);
        }

        public void a(Object obj) {
            if (c(obj) < 0) {
                this.k.add(new C0042d(obj));
            }
        }

        public void b(Object obj) {
            int c2 = c(obj);
            if (c2 >= 0) {
                this.k.remove(c2).b();
            }
        }

        public void a(MediaSessionCompat mediaSessionCompat) {
            this.v = mediaSessionCompat;
            if (Build.VERSION.SDK_INT >= 21) {
                a(mediaSessionCompat != null ? new b(mediaSessionCompat) : null);
            } else if (Build.VERSION.SDK_INT >= 14) {
                if (this.g != null) {
                    b(this.g.e());
                    this.g.b(this.w);
                }
                this.g = mediaSessionCompat;
                if (mediaSessionCompat != null) {
                    mediaSessionCompat.a(this.w);
                    if (mediaSessionCompat.a()) {
                        a(mediaSessionCompat.e());
                    }
                }
            }
        }

        private void a(b bVar) {
            if (this.u != null) {
                this.u.a();
            }
            this.u = bVar;
            if (bVar != null) {
                h();
            }
        }

        public MediaSessionCompat.Token g() {
            if (this.u != null) {
                return this.u.b();
            }
            if (this.v != null) {
                return this.v.c();
            }
            return null;
        }

        private int c(Object obj) {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                if (this.k.get(i).a() == obj) {
                    return i;
                }
            }
            return -1;
        }

        private void h() {
            if (this.f != null) {
                this.c.f685a = this.f.q();
                this.c.b = this.f.r();
                this.c.c = this.f.p();
                this.c.d = this.f.m();
                this.c.e = this.f.l();
                int size = this.k.size();
                for (int i = 0; i < size; i++) {
                    this.k.get(i).c();
                }
                if (this.u != null) {
                    if (this.f == c()) {
                        this.u.a();
                    } else {
                        this.u.a(this.c.c == 1 ? 2 : 0, this.c.b, this.c.f685a);
                    }
                }
            } else if (this.u != null) {
                this.u.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaRouter.java */
        /* loaded from: classes.dex */
        public final class c extends c.a {
            c() {
            }

            @Override // android.support.v7.media.c.a
            public void a(android.support.v7.media.c cVar, android.support.v7.media.d dVar) {
                d.this.a(cVar, dVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaRouter.java */
        /* loaded from: classes.dex */
        public final class b {
            private final MediaSessionCompat b;
            private int c;
            private int d;
            private android.support.v4.media.f e;

            public b(MediaSessionCompat mediaSessionCompat) {
                this.b = mediaSessionCompat;
            }

            public void a(int i, int i2, int i3) {
                if (this.e != null && i == this.c && i2 == this.d) {
                    this.e.a(i3);
                    return;
                }
                this.e = new android.support.v4.media.f(i, i2, i3) { // from class: android.support.v7.media.g.d.b.1
                    @Override // android.support.v4.media.f
                    public void b(final int i4) {
                        d.this.d.post(new Runnable() { // from class: android.support.v7.media.g.d.b.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (d.this.f != null) {
                                    d.this.f.a(i4);
                                }
                            }
                        });
                    }

                    @Override // android.support.v4.media.f
                    public void c(final int i4) {
                        d.this.d.post(new Runnable() { // from class: android.support.v7.media.g.d.b.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (d.this.f != null) {
                                    d.this.f.b(i4);
                                }
                            }
                        });
                    }
                };
                this.b.a(this.e);
            }

            public void a() {
                this.b.b(d.this.c.d);
                this.e = null;
            }

            public MediaSessionCompat.Token b() {
                return this.b.c();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaRouter.java */
        /* renamed from: android.support.v7.media.g$d$d  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C0042d implements n.d {
            private final n b;
            private boolean c;

            public C0042d(Object obj) {
                this.b = n.a(d.this.f656a, obj);
                this.b.a(this);
                c();
            }

            public Object a() {
                return this.b.a();
            }

            public void b() {
                this.c = true;
                this.b.a((n.d) null);
            }

            public void c() {
                this.b.a(d.this.c);
            }

            @Override // android.support.v7.media.n.d
            public void a(int i) {
                if (!this.c && d.this.f != null) {
                    d.this.f.a(i);
                }
            }

            @Override // android.support.v7.media.n.d
            public void b(int i) {
                if (!this.c && d.this.f != null) {
                    d.this.f.b(i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MediaRouter.java */
        /* loaded from: classes.dex */
        public final class a extends Handler {
            private final ArrayList<b> b = new ArrayList<>();

            a() {
            }

            public void a(int i, Object obj) {
                obtainMessage(i, obj).sendToTarget();
            }

            public void a(int i, Object obj, int i2) {
                Message obtainMessage = obtainMessage(i, obj);
                obtainMessage.arg1 = i2;
                obtainMessage.sendToTarget();
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                Object obj = message.obj;
                int i2 = message.arg1;
                if (i == 259 && d.this.d().c().equals(((C0043g) obj).c())) {
                    d.this.a(true);
                }
                b(i, obj);
                try {
                    int size = d.this.b.size();
                    while (true) {
                        int i3 = size - 1;
                        if (i3 < 0) {
                            break;
                        }
                        g gVar = d.this.b.get(i3).get();
                        if (gVar == null) {
                            d.this.b.remove(i3);
                        } else {
                            this.b.addAll(gVar.d);
                        }
                        size = i3;
                    }
                    int size2 = this.b.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        a(this.b.get(i4), i, obj, i2);
                    }
                } finally {
                    this.b.clear();
                }
            }

            private void b(int i, Object obj) {
                switch (i) {
                    case FileUploadPreferences.BATTERY_USAGE_CHARGING_ONLY /* 257 */:
                        d.this.e.a((C0043g) obj);
                        return;
                    case 258:
                        d.this.e.b((C0043g) obj);
                        return;
                    case 259:
                        d.this.e.c((C0043g) obj);
                        return;
                    case 260:
                    case 261:
                    default:
                        return;
                    case 262:
                        d.this.e.d((C0043g) obj);
                        return;
                }
            }

            private void a(b bVar, int i, Object obj, int i2) {
                g gVar = bVar.f655a;
                a aVar = bVar.b;
                switch (65280 & i) {
                    case 256:
                        C0043g c0043g = (C0043g) obj;
                        if (bVar.a(c0043g)) {
                            switch (i) {
                                case FileUploadPreferences.BATTERY_USAGE_CHARGING_ONLY /* 257 */:
                                    aVar.onRouteAdded(gVar, c0043g);
                                    return;
                                case 258:
                                    aVar.onRouteRemoved(gVar, c0043g);
                                    return;
                                case 259:
                                    aVar.onRouteChanged(gVar, c0043g);
                                    return;
                                case 260:
                                    aVar.onRouteVolumeChanged(gVar, c0043g);
                                    return;
                                case 261:
                                    aVar.onRoutePresentationDisplayChanged(gVar, c0043g);
                                    return;
                                case 262:
                                    aVar.onRouteSelected(gVar, c0043g);
                                    return;
                                case 263:
                                    aVar.onRouteUnselected(gVar, c0043g, i2);
                                    return;
                                default:
                                    return;
                            }
                        }
                        return;
                    case 512:
                        e eVar = (e) obj;
                        switch (i) {
                            case 513:
                                aVar.onProviderAdded(gVar, eVar);
                                return;
                            case 514:
                                aVar.onProviderRemoved(gVar, eVar);
                                return;
                            case 515:
                                aVar.onProviderChanged(gVar, eVar);
                                return;
                            default:
                                return;
                        }
                    default:
                        return;
                }
            }
        }
    }
}
