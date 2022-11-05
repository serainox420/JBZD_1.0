package com.facebook.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.v;
import com.facebook.ads.internal.adapters.w;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.server.a;
import com.facebook.ads.internal.util.am;
import com.facebook.ads.internal.util.p;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class i implements a.InterfaceC0099a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2169a;
    private final String b;
    private final com.facebook.ads.internal.server.a c;
    private final e d;
    private final c e;
    private final AdSize f;
    private final int g;
    private boolean h;
    private final Handler i;
    private final Runnable j;
    private a k;
    private com.facebook.ads.internal.f.d l;

    /* loaded from: classes.dex */
    public interface a {
        void a(com.facebook.ads.internal.b bVar);

        void a(List<v> list);
    }

    /* loaded from: classes.dex */
    private static final class b extends am<i> {
        public b(i iVar) {
            super(iVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            i a2 = a();
            if (a2 == null) {
                return;
            }
            if (p.a(a2.f2169a)) {
                a2.a();
            } else {
                a2.i.postDelayed(a2.j, 5000L);
            }
        }
    }

    public i(Context context, String str, e eVar, AdSize adSize, c cVar, int i, EnumSet<NativeAd.MediaCacheFlag> enumSet) {
        this.f2169a = context;
        this.b = str;
        this.d = eVar;
        this.f = adSize;
        this.e = cVar;
        this.g = i;
        this.c = new com.facebook.ads.internal.server.a(context);
        this.c.a(this);
        this.h = true;
        this.i = new Handler();
        this.j = new b(this);
        com.facebook.ads.internal.d.a.a(context).a();
    }

    private List<v> d() {
        com.facebook.ads.internal.f.d dVar = this.l;
        com.facebook.ads.internal.f.a d = dVar.d();
        final ArrayList arrayList = new ArrayList(dVar.c());
        for (com.facebook.ads.internal.f.a aVar = d; aVar != null; aVar = dVar.d()) {
            AdAdapter a2 = com.facebook.ads.internal.adapters.d.a(aVar.a(), AdPlacementType.NATIVE);
            if (a2 != null && a2.getPlacementType() == AdPlacementType.NATIVE) {
                HashMap hashMap = new HashMap();
                hashMap.put("data", aVar.b());
                hashMap.put("definition", dVar.a());
                ((v) a2).a(this.f2169a, new w() { // from class: com.facebook.ads.internal.i.1
                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar) {
                        arrayList.add(vVar);
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar, AdError adError) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void b(v vVar) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void c(v vVar) {
                    }
                }, com.facebook.ads.internal.g.g.a(this.f2169a), hashMap);
            }
        }
        return arrayList;
    }

    public void a() {
        this.c.a(new com.facebook.ads.internal.f.f(this.f2169a, this.b, this.f, this.d, this.e, this.g, AdSettings.isTestMode(this.f2169a)));
    }

    @Override // com.facebook.ads.internal.server.a.InterfaceC0099a
    public void a(com.facebook.ads.internal.b bVar) {
        if (this.h) {
            this.i.postDelayed(this.j, 1800000L);
        }
        if (this.k != null) {
            this.k.a(bVar);
        }
    }

    public void a(a aVar) {
        this.k = aVar;
    }

    @Override // com.facebook.ads.internal.server.a.InterfaceC0099a
    public void a(com.facebook.ads.internal.server.e eVar) {
        com.facebook.ads.internal.f.d b2 = eVar.b();
        if (b2 == null) {
            throw new IllegalStateException("no placement in response");
        }
        if (this.h) {
            long b3 = b2.a().b();
            if (b3 == 0) {
                b3 = 1800000;
            }
            this.i.postDelayed(this.j, b3);
        }
        this.l = b2;
        List<v> d = d();
        if (this.k == null) {
            return;
        }
        if (d.isEmpty()) {
            this.k.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
        } else {
            this.k.a(d);
        }
    }

    public void b() {
    }

    public void c() {
        this.h = false;
        this.i.removeCallbacks(this.j);
    }
}
