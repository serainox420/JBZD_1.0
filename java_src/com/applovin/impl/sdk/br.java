package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinLogger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class br implements x, AppLovinNativeAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    protected final AppLovinSdkImpl f1620a;
    protected final AppLovinLogger b;
    protected final Object c = new Object();
    protected final Map d = a();
    protected final Map e = new HashMap();
    protected final Set f = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1620a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
    }

    private bs h(c cVar) {
        return (bs) this.d.get(cVar);
    }

    abstract bw a(c cVar);

    abstract c a(az azVar);

    abstract Map a();

    abstract void a(Object obj, az azVar);

    abstract void a(Object obj, c cVar, int i);

    public boolean a(c cVar, Object obj) {
        boolean z;
        synchronized (this.c) {
            if (!g(cVar)) {
                b(cVar, obj);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public az b(c cVar) {
        az e;
        synchronized (this.c) {
            e = h(cVar).e();
        }
        return e;
    }

    void b(az azVar) {
        f(a(azVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(c cVar, int i) {
        Object remove;
        this.b.d("PreloadManager", "Failed to pre-load an ad of spec " + cVar + ", error code " + i);
        synchronized (this.c) {
            remove = this.e.remove(cVar);
            this.f.add(cVar);
        }
        if (remove != null) {
            try {
                a(remove, cVar, i);
            } catch (Throwable th) {
                this.f1620a.getLogger().userError("PreloadManager", "Encountered exception while invoking user callback", th);
            }
        }
    }

    public void b(c cVar, Object obj) {
        synchronized (this.c) {
            if (this.e.containsKey(cVar)) {
                this.b.w("PreloadManager", "Possibly missing prior registered preload callback.");
            }
            this.e.put(cVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(az azVar) {
        Object obj;
        synchronized (this.c) {
            c a2 = a(azVar);
            obj = this.e.get(a2);
            this.e.remove(a2);
            this.f.add(a2);
            if (obj == null) {
                h(a2).a(azVar);
                this.b.d("PreloadManager", "Ad enqueued: " + azVar);
            } else {
                this.b.d("PreloadManager", "Additional callback found, skipping enqueue.");
            }
        }
        if (obj != null) {
            this.b.d("PreloadManager", "Called additional callback regarding " + azVar);
            try {
                a(obj, azVar);
            } catch (Throwable th) {
                this.f1620a.getLogger().userError("PreloadManager", "Encountered throwable while notifying user callback", th);
            }
            b(azVar);
        }
        this.b.d("PreloadManager", "Pulled ad from network and saved to preload cache: " + azVar);
    }

    public boolean c(c cVar) {
        boolean c;
        synchronized (this.c) {
            c = h(cVar).c();
        }
        return c;
    }

    public void d(c cVar) {
        int b;
        if (cVar == null) {
            return;
        }
        synchronized (this.c) {
            bs h = h(cVar);
            b = h != null ? h.b() - h.a() : 0;
        }
        if (b <= 0) {
            return;
        }
        for (int i = 0; i < b; i++) {
            f(cVar);
        }
    }

    public boolean e(c cVar) {
        boolean z;
        synchronized (this.c) {
            z = !h(cVar).d();
        }
        return z;
    }

    public void f(c cVar) {
        if (!((Boolean) this.f1620a.a(bx.A)).booleanValue() || c(cVar)) {
            return;
        }
        this.b.d("PreloadManager", "Preloading ad for spec " + cVar + "...");
        this.f1620a.a().a(a(cVar), cs.MAIN, 500L);
    }

    boolean g(c cVar) {
        boolean contains;
        synchronized (this.c) {
            contains = this.f.contains(cVar);
        }
        return contains;
    }
}
