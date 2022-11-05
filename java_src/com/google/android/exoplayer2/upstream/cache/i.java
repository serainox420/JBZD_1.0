package com.google.android.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import com.google.android.exoplayer2.upstream.cache.Cache;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
/* compiled from: SimpleCache.java */
/* loaded from: classes2.dex */
public final class i implements Cache {

    /* renamed from: a  reason: collision with root package name */
    private final File f3486a;
    private final d b;
    private final HashMap<String, e> c;
    private final g d;
    private final HashMap<String, ArrayList<Cache.a>> e;
    private long f;
    private Cache.CacheException g;

    public i(File file, d dVar) {
        this(file, dVar, null);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.exoplayer2.upstream.cache.i$1] */
    public i(File file, d dVar, byte[] bArr) {
        this.f = 0L;
        this.f3486a = file;
        this.b = dVar;
        this.c = new HashMap<>();
        this.d = new g(file, bArr);
        this.e = new HashMap<>();
        final ConditionVariable conditionVariable = new ConditionVariable();
        new Thread("SimpleCache.initialize()") { // from class: com.google.android.exoplayer2.upstream.cache.i.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (i.this) {
                    conditionVariable.open();
                    try {
                        i.this.b();
                    } catch (Cache.CacheException e) {
                        i.this.g = e;
                    }
                    i.this.b.a();
                }
            }
        }.start();
        conditionVariable.block();
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long a() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: d */
    public synchronized j a(String str, long j) throws InterruptedException, Cache.CacheException {
        j b;
        while (true) {
            b = b(str, j);
            if (b == null) {
                wait();
            }
        }
        return b;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: e */
    public synchronized j b(String str, long j) throws Cache.CacheException {
        j jVar;
        if (this.g != null) {
            throw this.g;
        }
        j f = f(str, j);
        if (f.d) {
            jVar = this.d.b(str).b(f);
            a(f, jVar);
        } else if (!this.c.containsKey(str)) {
            this.c.put(str, f);
            jVar = f;
        } else {
            jVar = null;
        }
        return jVar;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized File a(String str, long j, long j2) throws Cache.CacheException {
        com.google.android.exoplayer2.util.a.b(this.c.containsKey(str));
        if (!this.f3486a.exists()) {
            c();
            this.f3486a.mkdirs();
        }
        this.b.a(this, str, j, j2);
        return j.a(this.f3486a, this.d.c(str), j, System.currentTimeMillis());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void a(File file) throws Cache.CacheException {
        boolean z = true;
        synchronized (this) {
            j a2 = j.a(file, this.d);
            com.google.android.exoplayer2.util.a.b(a2 != null);
            com.google.android.exoplayer2.util.a.b(this.c.containsKey(a2.f3482a));
            if (file.exists()) {
                if (file.length() == 0) {
                    file.delete();
                } else {
                    Long valueOf = Long.valueOf(a(a2.f3482a));
                    if (valueOf.longValue() != -1) {
                        if (a2.b + a2.c > valueOf.longValue()) {
                            z = false;
                        }
                        com.google.android.exoplayer2.util.a.b(z);
                    }
                    a(a2);
                    this.d.b();
                    notifyAll();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void a(e eVar) {
        com.google.android.exoplayer2.util.a.b(eVar == this.c.remove(eVar.f3482a));
        notifyAll();
    }

    private j f(String str, long j) throws Cache.CacheException {
        f b = this.d.b(str);
        if (b == null) {
            return j.b(str, j);
        }
        while (true) {
            j b2 = b.b(j);
            if (b2.d && !b2.e.exists()) {
                c();
            } else {
                return b2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() throws Cache.CacheException {
        if (!this.f3486a.exists()) {
            this.f3486a.mkdirs();
            return;
        }
        this.d.a();
        File[] listFiles = this.f3486a.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!file.getName().equals("cached_content_index.exi")) {
                    j a2 = file.length() > 0 ? j.a(file, this.d) : null;
                    if (a2 != null) {
                        a(a2);
                    } else {
                        file.delete();
                    }
                }
            }
            this.d.d();
            this.d.b();
        }
    }

    private void a(j jVar) {
        this.d.a(jVar.f3482a).a(jVar);
        this.f += jVar.c;
        b(jVar);
    }

    private void a(e eVar, boolean z) throws Cache.CacheException {
        f b = this.d.b(eVar.f3482a);
        com.google.android.exoplayer2.util.a.b(b.a(eVar));
        this.f -= eVar.c;
        if (z && b.c()) {
            this.d.d(b.b);
            this.d.b();
        }
        c(eVar);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void b(e eVar) throws Cache.CacheException {
        a(eVar, true);
    }

    private void c() throws Cache.CacheException {
        LinkedList linkedList = new LinkedList();
        for (f fVar : this.d.c()) {
            Iterator<j> it = fVar.b().iterator();
            while (it.hasNext()) {
                j next = it.next();
                if (!next.e.exists()) {
                    linkedList.add(next);
                }
            }
        }
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            a((e) it2.next(), false);
        }
        this.d.d();
        this.d.b();
    }

    private void c(e eVar) {
        ArrayList<Cache.a> arrayList = this.e.get(eVar.f3482a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).b(this, eVar);
            }
        }
        this.b.b(this, eVar);
    }

    private void b(j jVar) {
        ArrayList<Cache.a> arrayList = this.e.get(jVar.f3482a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, jVar);
            }
        }
        this.b.a(this, jVar);
    }

    private void a(j jVar, e eVar) {
        ArrayList<Cache.a> arrayList = this.e.get(jVar.f3482a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, jVar, eVar);
            }
        }
        this.b.a(this, jVar, eVar);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void c(String str, long j) throws Cache.CacheException {
        this.d.a(str, j);
        this.d.b();
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long a(String str) {
        return this.d.e(str);
    }
}
