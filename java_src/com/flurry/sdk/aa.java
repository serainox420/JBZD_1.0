package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.am;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class aa {
    private static final String c = aa.class.getSimpleName();
    final ap<byte[]> b;
    private final long g;
    private final int h;

    /* renamed from: a  reason: collision with root package name */
    final Map<String, af> f2411a = new HashMap();
    private final Map<String, af> d = new LinkedHashMap();
    private final Map<String, am> e = new LinkedHashMap();
    private a f = a.INIT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        INIT,
        ACTIVE,
        PAUSED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(String str, long j, long j2) {
        int i = 1;
        this.b = new ap<>(new lc(), str, j);
        this.g = j2;
        this.h = Runtime.getRuntime().availableProcessors() > 1 ? 2 : i;
    }

    public final synchronized boolean a() {
        boolean z;
        if (!a.ACTIVE.equals(this.f)) {
            if (!a.PAUSED.equals(this.f)) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    private synchronized boolean g() {
        return a.ACTIVE.equals(this.f);
    }

    private synchronized boolean h() {
        return a.PAUSED.equals(this.f);
    }

    public final synchronized List<af> b() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        synchronized (this.f2411a) {
            arrayList.addAll(this.f2411a.values());
        }
        return arrayList;
    }

    public final synchronized void a(af afVar) {
        if (afVar != null) {
            if (!TextUtils.isEmpty(afVar.f2424a) && !this.f2411a.containsKey(afVar.f2424a)) {
                km.a(3, c, "Precaching: adding cached asset info from persisted storage: " + afVar.f2424a + " asset exp: " + afVar.f + " saved time: " + afVar.c);
                synchronized (this.f2411a) {
                    this.f2411a.put(afVar.f2424a, afVar);
                }
            }
        }
    }

    public final synchronized void c() {
        if (!g()) {
            km.a(3, c, "Precaching: Starting AssetCache");
            this.b.a();
            jy.a().b(new ma() { // from class: com.flurry.sdk.aa.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    aa.a(aa.this);
                    aa.b(aa.this);
                }
            });
            this.f = a.ACTIVE;
        }
    }

    public final synchronized void d() {
        if (a()) {
            km.a(3, c, "Precaching: Stopping AssetCache");
            km.a(3, c, "Precaching: Cancelling in-progress downloads");
            synchronized (this.e) {
                for (Map.Entry<String, am> entry : this.e.entrySet()) {
                    entry.getValue().b();
                }
                this.e.clear();
            }
            synchronized (this.d) {
                for (Map.Entry<String, af> entry2 : this.d.entrySet()) {
                    af value = entry2.getValue();
                    if (!al.COMPLETE.equals(c(value))) {
                        km.a(3, c, "Precaching: Download cancelled: " + value.c);
                        b(value, al.CANCELLED);
                    }
                }
            }
            this.b.b();
            this.f = a.INIT;
        }
    }

    public final synchronized void e() {
        if (a() && h()) {
            km.a(3, c, "Precaching: Resuming AssetCache");
            jy.a().b(new ma() { // from class: com.flurry.sdk.aa.2
                @Override // com.flurry.sdk.ma
                public final void a() {
                    aa.a(aa.this);
                    aa.b(aa.this);
                }
            });
            this.f = a.ACTIVE;
        }
    }

    public final boolean a(String str, as asVar, long j) {
        if (a() && !TextUtils.isEmpty(str) && asVar != null) {
            if (!as.IMAGE.equals(asVar) && !as.VIDEO.equals(asVar)) {
                return false;
            }
            af c2 = c(str);
            if (c2 == null) {
                af afVar = new af(str, asVar, j);
                synchronized (this.f2411a) {
                    this.f2411a.put(afVar.f2424a, afVar);
                }
                b(afVar);
            } else if (!al.COMPLETE.equals(c(c2))) {
                b(c2);
            }
            return true;
        }
        return false;
    }

    public final void a(String str) {
        if (a() && !TextUtils.isEmpty(str)) {
            synchronized (this.f2411a) {
                this.f2411a.remove(str);
            }
            this.b.c(str);
        }
    }

    public final al b(String str) {
        return !a() ? al.NONE : c(c(str));
    }

    private af c(String str) {
        af afVar;
        if (a() && !TextUtils.isEmpty(str)) {
            synchronized (this.f2411a) {
                afVar = this.f2411a.get(str);
            }
            if (afVar != null) {
                if (afVar.b()) {
                    km.a(3, c, "Precaching: expiring cached asset: " + afVar.f2424a + " asset exp: " + afVar.f + " device epoch" + System.currentTimeMillis());
                    a(afVar.f2424a);
                    afVar = null;
                } else {
                    c(afVar);
                    afVar.c();
                }
            }
            return afVar;
        }
        return null;
    }

    private List<af> i() {
        ArrayList arrayList;
        synchronized (this.f2411a) {
            arrayList = new ArrayList(this.f2411a.values());
        }
        return arrayList;
    }

    private void b(af afVar) {
        if (afVar != null) {
            al c2 = c(afVar);
            if (!al.COMPLETE.equals(c2)) {
                if (al.IN_PROGRESS.equals(c2) || al.QUEUED.equals(c2)) {
                    synchronized (this.d) {
                        if (!this.d.containsKey(afVar.f2424a)) {
                            this.d.put(afVar.f2424a, afVar);
                        }
                    }
                } else {
                    km.a(3, c, "Precaching: Queueing asset:" + afVar.f2424a);
                    f.a().a("precachingDownloadRequested");
                    b(afVar, al.QUEUED);
                    synchronized (this.d) {
                        this.d.put(afVar.f2424a, afVar);
                    }
                }
                jy.a().b(new ma() { // from class: com.flurry.sdk.aa.3
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        aa.b(aa.this);
                    }
                });
            }
        }
    }

    private al c(af afVar) {
        if (afVar == null) {
            return al.NONE;
        }
        if (afVar.b()) {
            return al.NONE;
        }
        if (al.COMPLETE.equals(afVar.a()) && !this.b.d(afVar.f2424a)) {
            b(afVar, al.EVICTED);
        }
        return afVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(af afVar, al alVar) {
        if (afVar != null && alVar != null && !alVar.equals(afVar.a())) {
            km.a(3, c, "Asset status changed for asset:" + afVar.f2424a + " from:" + afVar.a() + " to:" + alVar);
            afVar.a(alVar);
            ae aeVar = new ae();
            aeVar.f2423a = afVar.f2424a;
            aeVar.b = alVar;
            aeVar.b();
        }
    }

    static /* synthetic */ void a(aa aaVar) {
        for (af afVar : aaVar.i()) {
            if (!al.COMPLETE.equals(aaVar.c(afVar))) {
                km.a(3, c, "Precaching: expiring cached asset: " + afVar.f2424a + " asset exp: " + afVar.f + " device epoch: " + System.currentTimeMillis());
                aaVar.a(afVar.f2424a);
            }
        }
    }

    static /* synthetic */ void b(aa aaVar) {
        if (aaVar.g()) {
            km.a(3, c, "Precaching: Download files");
            synchronized (aaVar.d) {
                Iterator<af> it = aaVar.d.values().iterator();
                while (it.hasNext()) {
                    final af next = it.next();
                    if (aaVar.b.d(next.f2424a)) {
                        km.a(3, c, "Precaching: Asset already cached.  Skipping download:" + next.f2424a);
                        it.remove();
                        b(next, al.COMPLETE);
                    } else if (al.IN_PROGRESS.equals(aaVar.c(next))) {
                        continue;
                    } else if (jw.a().b(aaVar) >= aaVar.h) {
                        km.a(3, c, "Precaching: Download limit reached");
                        return;
                    } else {
                        f.a().a("precachingDownloadStarted");
                        km.a(3, c, "Precaching: Submitting for download: " + next.f2424a);
                        ar arVar = new ar(aaVar.b, next.f2424a);
                        arVar.b = next.f2424a;
                        arVar.c = 40000;
                        arVar.d = aaVar.b;
                        arVar.f2439a = new am.a() { // from class: com.flurry.sdk.aa.4
                            @Override // com.flurry.sdk.am.a
                            public final void a(am amVar) {
                                synchronized (aa.this.e) {
                                    aa.this.e.remove(next.f2424a);
                                }
                                aa.a(aa.this, next);
                                if (!amVar.f) {
                                    km.a(3, aa.c, "Precaching: Download error: " + next.f2424a);
                                    aa.b(next, al.ERROR);
                                    f.a().a("precachingDownloadError");
                                } else {
                                    long j = amVar.e;
                                    km.a(3, aa.c, "Precaching: Download success: " + next.f2424a + " size: " + j);
                                    next.a(j);
                                    aa.b(next, al.COMPLETE);
                                    f.a().a("precachingDownloadSuccess");
                                }
                                jy.a().b(new ma() { // from class: com.flurry.sdk.aa.4.1
                                    @Override // com.flurry.sdk.ma
                                    public final void a() {
                                        aa.b(aa.this);
                                    }
                                });
                            }
                        };
                        arVar.a();
                        synchronized (aaVar.e) {
                            aaVar.e.put(next.f2424a, arVar);
                        }
                        b(next, al.IN_PROGRESS);
                    }
                }
                km.a(3, c, "Precaching: No more files to download");
            }
        }
    }

    static /* synthetic */ void a(aa aaVar, af afVar) {
        if (afVar != null) {
            synchronized (aaVar.d) {
                aaVar.d.remove(afVar.f2424a);
            }
        }
    }
}
