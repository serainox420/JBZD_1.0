package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.MoPubNative;
import java.util.ArrayList;
import java.util.List;
/* compiled from: NativeAdSource.java */
/* loaded from: classes3.dex */
class c {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final int[] f4626a = {1000, 3000, 5000, 25000, 60000, 300000};
    @VisibleForTesting
    boolean b;
    @VisibleForTesting
    boolean c;
    @VisibleForTesting
    int d;
    @VisibleForTesting
    int e;
    private final List<k<NativeAd>> f;
    private final Handler g;
    private final Runnable h;
    private final MoPubNative.MoPubNativeNetworkListener i;
    private a j;
    private RequestParameters k;
    private MoPubNative l;
    private final AdRendererRegistry m;

    /* compiled from: NativeAdSource.java */
    /* loaded from: classes3.dex */
    interface a {
        void onAdsAvailable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c() {
        this(new ArrayList(1), new Handler(), new AdRendererRegistry());
    }

    @VisibleForTesting
    c(List<k<NativeAd>> list, Handler handler, AdRendererRegistry adRendererRegistry) {
        this.f = list;
        this.g = handler;
        this.h = new Runnable() { // from class: com.mopub.nativeads.c.1
            @Override // java.lang.Runnable
            public void run() {
                c.this.c = false;
                c.this.g();
            }
        };
        this.m = adRendererRegistry;
        this.i = new MoPubNative.MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.c.2
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeLoad(NativeAd nativeAd) {
                if (c.this.l != null) {
                    c.this.b = false;
                    c.this.d++;
                    c.this.e();
                    c.this.f.add(new k(nativeAd));
                    if (c.this.f.size() == 1 && c.this.j != null) {
                        c.this.j.onAdsAvailable();
                    }
                    c.this.g();
                }
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeFail(NativeErrorCode nativeErrorCode) {
                c.this.b = false;
                if (c.this.e >= c.f4626a.length - 1) {
                    c.this.e();
                    return;
                }
                c.this.d();
                c.this.c = true;
                c.this.g.postDelayed(c.this.h, c.this.f());
            }
        };
        this.d = 0;
        e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.m.getAdRendererCount();
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        return this.m.getViewTypeForAd(nativeAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MoPubAdRenderer moPubAdRenderer) {
        this.m.registerAdRenderer(moPubAdRenderer);
        if (this.l != null) {
            this.l.registerAdRenderer(moPubAdRenderer);
        }
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.m.getRendererForViewType(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.j = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, String str, RequestParameters requestParameters) {
        a(requestParameters, new MoPubNative(activity, str, this.i));
    }

    @VisibleForTesting
    void a(RequestParameters requestParameters, MoPubNative moPubNative) {
        b();
        for (MoPubAdRenderer moPubAdRenderer : this.m.getRendererIterable()) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
        this.k = requestParameters;
        this.l = moPubNative;
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.l != null) {
            this.l.destroy();
            this.l = null;
        }
        this.k = null;
        for (k<NativeAd> kVar : this.f) {
            kVar.f4640a.destroy();
        }
        this.f.clear();
        this.g.removeMessages(0);
        this.b = false;
        this.d = 0;
        e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!this.b && !this.c) {
            this.g.post(this.h);
        }
        while (!this.f.isEmpty()) {
            k<NativeAd> remove = this.f.remove(0);
            if (uptimeMillis - remove.b < 900000) {
                return remove.f4640a;
            }
        }
        return null;
    }

    @VisibleForTesting
    void d() {
        if (this.e < f4626a.length - 1) {
            this.e++;
        }
    }

    @VisibleForTesting
    void e() {
        this.e = 0;
    }

    @VisibleForTesting
    int f() {
        if (this.e >= f4626a.length) {
            this.e = f4626a.length - 1;
        }
        return f4626a[this.e];
    }

    @VisibleForTesting
    void g() {
        if (!this.b && this.l != null && this.f.size() < 1) {
            this.b = true;
            this.l.makeRequest(this.k, Integer.valueOf(this.d));
        }
    }
}
