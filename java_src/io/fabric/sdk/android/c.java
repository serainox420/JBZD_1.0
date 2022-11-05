package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.a;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Fabric.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static volatile c f5642a;
    static final k b = new b();
    final k c;
    final boolean d;
    private final Context e;
    private final Map<Class<? extends h>, h> f;
    private final ExecutorService g;
    private final Handler h;
    private final f<c> i;
    private final f<?> j;
    private final IdManager k;
    private io.fabric.sdk.android.a l;
    private WeakReference<Activity> m;
    private AtomicBoolean n = new AtomicBoolean(false);

    /* compiled from: Fabric.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f5645a;
        private h[] b;
        private io.fabric.sdk.android.services.concurrency.h c;
        private Handler d;
        private k e;
        private boolean f;
        private String g;
        private String h;
        private f<c> i;

        public a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.f5645a = context;
        }

        public a a(h... hVarArr) {
            if (this.b != null) {
                throw new IllegalStateException("Kits already set.");
            }
            this.b = hVarArr;
            return this;
        }

        public c a() {
            Map b;
            if (this.c == null) {
                this.c = io.fabric.sdk.android.services.concurrency.h.a();
            }
            if (this.d == null) {
                this.d = new Handler(Looper.getMainLooper());
            }
            if (this.e == null) {
                if (this.f) {
                    this.e = new b(3);
                } else {
                    this.e = new b();
                }
            }
            if (this.h == null) {
                this.h = this.f5645a.getPackageName();
            }
            if (this.i == null) {
                this.i = f.d;
            }
            if (this.b != null) {
                b = c.b(Arrays.asList(this.b));
            } else {
                b = new HashMap();
            }
            return new c(this.f5645a, b, this.c, this.d, this.e, this.f, this.i, new IdManager(this.f5645a, this.h, this.g, b.values()));
        }
    }

    static c a() {
        if (f5642a == null) {
            throw new IllegalStateException("Must Initialize Fabric before using singleton()");
        }
        return f5642a;
    }

    c(Context context, Map<Class<? extends h>, h> map, io.fabric.sdk.android.services.concurrency.h hVar, Handler handler, k kVar, boolean z, f fVar, IdManager idManager) {
        this.e = context.getApplicationContext();
        this.f = map;
        this.g = hVar;
        this.h = handler;
        this.c = kVar;
        this.d = z;
        this.i = fVar;
        this.j = a(map.size());
        this.k = idManager;
        a(c(context));
    }

    public static c a(Context context, h... hVarArr) {
        if (f5642a == null) {
            synchronized (c.class) {
                if (f5642a == null) {
                    c(new a(context).a(hVarArr).a());
                }
            }
        }
        return f5642a;
    }

    private static void c(c cVar) {
        f5642a = cVar;
        cVar.j();
    }

    public c a(Activity activity) {
        this.m = new WeakReference<>(activity);
        return this;
    }

    public Activity b() {
        if (this.m != null) {
            return this.m.get();
        }
        return null;
    }

    private void j() {
        this.l = new io.fabric.sdk.android.a(this.e);
        this.l.a(new a.b() { // from class: io.fabric.sdk.android.c.1
            @Override // io.fabric.sdk.android.a.b
            public void onActivityCreated(Activity activity, Bundle bundle) {
                c.this.a(activity);
            }

            @Override // io.fabric.sdk.android.a.b
            public void onActivityStarted(Activity activity) {
                c.this.a(activity);
            }

            @Override // io.fabric.sdk.android.a.b
            public void onActivityResumed(Activity activity) {
                c.this.a(activity);
            }
        });
        a(this.e);
    }

    public String c() {
        return "1.3.16.dev";
    }

    public String d() {
        return "io.fabric.sdk.android:fabric";
    }

    void a(Context context) {
        StringBuilder sb;
        Future<Map<String, j>> b2 = b(context);
        Collection<h> g = g();
        l lVar = new l(b2, g);
        ArrayList<h> arrayList = new ArrayList(g);
        Collections.sort(arrayList);
        lVar.injectParameters(context, this, f.d, this.k);
        for (h hVar : arrayList) {
            hVar.injectParameters(context, this, this.j, this.k);
        }
        lVar.initialize();
        if (h().a("Fabric", 3)) {
            sb = new StringBuilder("Initializing ").append(d()).append(" [Version: ").append(c()).append("], with the following kits:\n");
        } else {
            sb = null;
        }
        for (h hVar2 : arrayList) {
            hVar2.initializationTask.addDependency(lVar.initializationTask);
            a(this.f, hVar2);
            hVar2.initialize();
            if (sb != null) {
                sb.append(hVar2.getIdentifier()).append(" [Version: ").append(hVar2.getVersion()).append("]\n");
            }
        }
        if (sb != null) {
            h().a("Fabric", sb.toString());
        }
    }

    void a(Map<Class<? extends h>, h> map, h hVar) {
        Class<?>[] a2;
        io.fabric.sdk.android.services.concurrency.b bVar = hVar.dependsOnAnnotation;
        if (bVar != null) {
            for (Class<?> cls : bVar.a()) {
                if (cls.isInterface()) {
                    for (h hVar2 : map.values()) {
                        if (cls.isAssignableFrom(hVar2.getClass())) {
                            hVar.initializationTask.addDependency(hVar2.initializationTask);
                        }
                    }
                } else if (map.get(cls) == null) {
                    throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
                } else {
                    hVar.initializationTask.addDependency(map.get(cls).initializationTask);
                }
            }
        }
    }

    private Activity c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    public io.fabric.sdk.android.a e() {
        return this.l;
    }

    public ExecutorService f() {
        return this.g;
    }

    public Collection<h> g() {
        return this.f.values();
    }

    public static <T extends h> T a(Class<T> cls) {
        return (T) a().f.get(cls);
    }

    public static k h() {
        return f5642a == null ? b : f5642a.c;
    }

    public static boolean i() {
        if (f5642a == null) {
            return false;
        }
        return f5642a.d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Class<? extends h>, h> b(Collection<? extends h> collection) {
        HashMap hashMap = new HashMap(collection.size());
        a(hashMap, collection);
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(Map<Class<? extends h>, h> map, Collection<? extends h> collection) {
        for (h hVar : collection) {
            map.put(hVar.getClass(), hVar);
            if (hVar instanceof i) {
                a(map, ((i) hVar).getKits());
            }
        }
    }

    f<?> a(final int i) {
        return new f() { // from class: io.fabric.sdk.android.c.2

            /* renamed from: a  reason: collision with root package name */
            final CountDownLatch f5644a;

            {
                this.f5644a = new CountDownLatch(i);
            }

            @Override // io.fabric.sdk.android.f
            public void a(Object obj) {
                this.f5644a.countDown();
                if (this.f5644a.getCount() == 0) {
                    c.this.n.set(true);
                    c.this.i.a((f) c.this);
                }
            }

            @Override // io.fabric.sdk.android.f
            public void a(Exception exc) {
                c.this.i.a(exc);
            }
        };
    }

    Future<Map<String, j>> b(Context context) {
        return f().submit(new e(context.getPackageCodePath()));
    }
}
