package com.facebook.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.adapters.v;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.c.a;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.i;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
/* loaded from: classes.dex */
public class NativeAdsManager {

    /* renamed from: a  reason: collision with root package name */
    private static final c f2049a = c.ADS;
    private final Context b;
    private final String c;
    private final int d;
    private final List<NativeAd> e;
    private int f;
    private Listener g;
    private i h;
    private boolean i;
    private boolean j;

    /* loaded from: classes.dex */
    public interface Listener {
        void onAdError(AdError adError);

        void onAdsLoaded();
    }

    public NativeAdsManager(Context context, String str, int i) {
        if (context == null) {
            throw new IllegalArgumentException("context can not be null");
        }
        this.b = context;
        this.c = str;
        this.d = Math.max(i, 0);
        this.e = new ArrayList(i);
        this.f = -1;
        this.j = false;
        this.i = false;
        if (Build.VERSION.SDK_INT >= 18) {
            return;
        }
        CookieSyncManager.createInstance(context);
    }

    public void disableAutoRefresh() {
        this.i = true;
        if (this.h != null) {
            this.h.c();
        }
    }

    public int getUniqueNativeAdCount() {
        return this.e.size();
    }

    public boolean isLoaded() {
        return this.j;
    }

    public void loadAds() {
        loadAds(EnumSet.of(NativeAd.MediaCacheFlag.NONE));
    }

    public void loadAds(final EnumSet<NativeAd.MediaCacheFlag> enumSet) {
        e eVar = e.NATIVE_UNKNOWN;
        int i = this.d;
        if (this.h != null) {
            this.h.b();
        }
        this.h = new i(this.b, this.c, eVar, null, f2049a, i, enumSet);
        if (this.i) {
            this.h.c();
        }
        this.h.a(new i.a() { // from class: com.facebook.ads.NativeAdsManager.1
            @Override // com.facebook.ads.internal.i.a
            public void a(b bVar) {
                if (NativeAdsManager.this.g != null) {
                    NativeAdsManager.this.g.onAdError(bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.i.a
            public void a(final List<v> list) {
                com.facebook.ads.internal.c.b bVar = new com.facebook.ads.internal.c.b(NativeAdsManager.this.b);
                for (v vVar : list) {
                    if (enumSet.contains(NativeAd.MediaCacheFlag.ICON) && vVar.k() != null) {
                        bVar.a(vVar.k().getUrl());
                    }
                    if (enumSet.contains(NativeAd.MediaCacheFlag.IMAGE) && vVar.l() != null) {
                        bVar.a(vVar.l().getUrl());
                    }
                    if (enumSet.contains(NativeAd.MediaCacheFlag.VIDEO) && !TextUtils.isEmpty(vVar.w())) {
                        bVar.b(vVar.w());
                    }
                }
                bVar.a(new a() { // from class: com.facebook.ads.NativeAdsManager.1.1
                    @Override // com.facebook.ads.internal.c.a
                    public void a() {
                        NativeAdsManager.this.j = true;
                        NativeAdsManager.this.e.clear();
                        NativeAdsManager.this.f = 0;
                        for (v vVar2 : list) {
                            NativeAdsManager.this.e.add(new NativeAd(NativeAdsManager.this.b, vVar2, null));
                        }
                        if (NativeAdsManager.this.g != null) {
                            NativeAdsManager.this.g.onAdsLoaded();
                        }
                    }
                });
            }
        });
        this.h.a();
    }

    public NativeAd nextNativeAd() {
        if (this.e.size() == 0) {
            return null;
        }
        int i = this.f;
        this.f = i + 1;
        NativeAd nativeAd = this.e.get(i % this.e.size());
        return i >= this.e.size() ? new NativeAd(nativeAd) : nativeAd;
    }

    public void setListener(Listener listener) {
        this.g = listener;
    }
}
