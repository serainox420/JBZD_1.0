package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.ac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3104a = y.class.getSimpleName();
    private final kh<ac> b = new kh<ac>() { // from class: com.flurry.sdk.y.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ac acVar) {
            if (!ac.a.RESUME.equals(acVar.f2420a)) {
                return;
            }
            y.this.c();
        }
    };
    private final kh<be> c = new kh<be>() { // from class: com.flurry.sdk.y.2
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(be beVar) {
            y.this.a(beVar.f2476a);
        }
    };
    private final TreeSet<au> d = new TreeSet<>();
    private final String e;

    public y(String str) {
        this.e = str;
        ki.a().a("com.flurry.android.sdk.AssetCacheManagerStatusEvent", this.b);
        ki.a().a("com.flurry.android.impl.ads.FreqCapEvent", this.c);
    }

    public final synchronized int a() {
        d();
        return this.d.size();
    }

    public final synchronized void a(Collection<au> collection) {
        if (collection != null) {
            this.d.addAll(collection);
        }
    }

    public final synchronized List<au> b() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        au pollFirst = this.d.pollFirst();
        if (pollFirst != null) {
            arrayList.add(pollFirst);
            String str = pollFirst.b.b.i;
            if (!TextUtils.isEmpty(str)) {
                Iterator<au> it = this.d.iterator();
                while (it.hasNext()) {
                    au next = it.next();
                    if (!str.equals(next.b.b.i)) {
                        break;
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    public final synchronized void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Iterator<au> it = this.d.iterator();
            while (it.hasNext()) {
                au next = it.next();
                if (next.b.b.i.equals(str)) {
                    km.a(3, f3104a, "Removed grouped ad unit -- adspace: " + next.i());
                    it.remove();
                }
            }
        }
    }

    public final synchronized void a(bf bfVar) {
        if (bfVar != null) {
            Iterator<au> it = this.d.iterator();
            while (it.hasNext()) {
                au next = it.next();
                List<cz> list = next.b.b.g;
                if (list != null) {
                    for (cz czVar : list) {
                        if (bfVar.f2477a.equals(czVar.f2523a) && bfVar.b.equals(czVar.b)) {
                            km.a(3, f3104a, "Removed frequency capped ad unit -- adspace: " + next.i());
                            it.remove();
                        }
                    }
                }
            }
        }
    }

    private synchronized void d() {
        Iterator<au> it = this.d.iterator();
        while (it.hasNext()) {
            au next = it.next();
            if (!ly.a(next.b.b.d)) {
                km.a(3, f3104a, "Removed expired ad unit -- adspace: " + next.i());
                it.remove();
            }
        }
    }

    public final synchronized void c() {
        final ArrayList arrayList = new ArrayList(this.d);
        jy.a().b(new ma() { // from class: com.flurry.sdk.y.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                i.a().i.a(arrayList);
            }
        });
    }
}
