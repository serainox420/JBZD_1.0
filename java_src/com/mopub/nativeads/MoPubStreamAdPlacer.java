package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
import com.mopub.nativeads.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;

    /* renamed from: a  reason: collision with root package name */
    private static final MoPubNativeAdLoadedListener f4604a = new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.1
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
        }
    };
    private final Activity b;
    private final Handler c;
    private final Runnable d;
    private final PositioningSource e;
    private final c f;
    private final HashMap<NativeAd, WeakReference<View>> g;
    private final WeakHashMap<View, NativeAd> h;
    private boolean i;
    private f j;
    private boolean k;
    private boolean l;
    private f m;
    private String n;
    private MoPubNativeAdLoadedListener o;
    private int p;
    private int q;
    private int r;
    private boolean s;

    public MoPubStreamAdPlacer(Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new c(), new h(activity));
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new c(), new a(moPubClientPositioning));
    }

    @VisibleForTesting
    MoPubStreamAdPlacer(Activity activity, c cVar, PositioningSource positioningSource) {
        this.o = f4604a;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(cVar, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.b = activity;
        this.e = positioningSource;
        this.f = cVar;
        this.m = f.a();
        this.h = new WeakHashMap<>();
        this.g = new HashMap<>();
        this.c = new Handler();
        this.d = new Runnable() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.2
            @Override // java.lang.Runnable
            public void run() {
                if (MoPubStreamAdPlacer.this.s) {
                    MoPubStreamAdPlacer.this.c();
                    MoPubStreamAdPlacer.this.s = false;
                }
            }
        };
        this.p = 0;
        this.q = 0;
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.f.a(moPubAdRenderer);
        }
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f.getAdRendererForViewType(i);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener = f4604a;
        }
        this.o = moPubNativeAdLoadedListener;
    }

    public void loadAds(String str) {
        loadAds(str, null);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            if (this.f.a() == 0) {
                MoPubLog.w("You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
                return;
            }
            this.n = str;
            this.l = false;
            this.i = false;
            this.k = false;
            this.e.loadPositions(str, new PositioningSource.PositioningListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.3
                @Override // com.mopub.nativeads.PositioningSource.PositioningListener
                public void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
                    MoPubStreamAdPlacer.this.a(moPubClientPositioning);
                }

                @Override // com.mopub.nativeads.PositioningSource.PositioningListener
                public void onFailed() {
                    MoPubLog.d("Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
                }
            });
            this.f.a(new c.a() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.4
                @Override // com.mopub.nativeads.c.a
                public void onAdsAvailable() {
                    MoPubStreamAdPlacer.this.a();
                }
            });
            this.f.a(this.b, str, requestParameters);
        }
    }

    @VisibleForTesting
    void a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        f a2 = f.a(moPubClientPositioning);
        if (this.k) {
            a(a2);
        } else {
            this.j = a2;
        }
        this.i = true;
    }

    @VisibleForTesting
    void a() {
        if (this.l) {
            b();
            return;
        }
        if (this.i) {
            a(this.j);
        }
        this.k = true;
    }

    private void a(f fVar) {
        removeAdsInRange(0, this.r);
        this.m = fVar;
        c();
        this.l = true;
    }

    public void placeAdsInRange(int i, int i2) {
        this.p = i;
        this.q = Math.min(i2, i + 100);
        b();
    }

    public boolean isAd(int i) {
        return this.m.c(i);
    }

    public void clearAds() {
        removeAdsInRange(0, this.r);
        this.f.b();
    }

    public void destroy() {
        this.c.removeMessages(0);
        this.f.b();
        this.m.c();
    }

    public Object getAdData(int i) {
        return this.m.d(i);
    }

    public View getAdView(int i, View view, ViewGroup viewGroup) {
        NativeAd d = this.m.d(i);
        if (d == null) {
            return null;
        }
        if (view == null) {
            view = d.createAdView(this.b, viewGroup);
        }
        bindAdView(d, view);
        return view;
    }

    public void bindAdView(NativeAd nativeAd, View view) {
        View view2;
        WeakReference<View> weakReference = this.g.get(nativeAd);
        if (weakReference == null) {
            view2 = null;
        } else {
            view2 = weakReference.get();
        }
        if (!view.equals(view2)) {
            a(view2);
            a(view);
            a(nativeAd, view);
            nativeAd.renderAdView(view);
        }
    }

    public int removeAdsInRange(int i, int i2) {
        int[] b = this.m.b();
        int f = this.m.f(i);
        int f2 = this.m.f(i2);
        ArrayList arrayList = new ArrayList();
        for (int length = b.length - 1; length >= 0; length--) {
            int i3 = b[length];
            if (i3 >= f && i3 < f2) {
                arrayList.add(Integer.valueOf(i3));
                if (i3 < this.p) {
                    this.p--;
                }
                this.r--;
            }
        }
        int a2 = this.m.a(f, f2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.o.onAdRemoved(((Integer) it.next()).intValue());
        }
        return a2;
    }

    public int getAdViewTypeCount() {
        return this.f.a();
    }

    public int getAdViewType(int i) {
        NativeAd d = this.m.d(i);
        if (d == null) {
            return 0;
        }
        return this.f.getViewTypeForAd(d);
    }

    public int getOriginalPosition(int i) {
        return this.m.e(i);
    }

    public int getAdjustedPosition(int i) {
        return this.m.f(i);
    }

    public int getOriginalCount(int i) {
        return this.m.g(i);
    }

    public int getAdjustedCount(int i) {
        return this.m.h(i);
    }

    public void setItemCount(int i) {
        this.r = this.m.h(i);
        if (this.l) {
            b();
        }
    }

    public void insertItem(int i) {
        this.m.i(i);
    }

    public void removeItem(int i) {
        this.m.j(i);
    }

    public void moveItem(int i, int i2) {
        this.m.b(i, i2);
    }

    private void b() {
        if (!this.s) {
            this.s = true;
            this.c.post(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (a(this.p, this.q)) {
            a(this.q, this.q + 6);
        }
    }

    private boolean a(int i, int i2) {
        int i3 = i2 - 1;
        while (i <= i3 && i != -1 && i < this.r) {
            if (this.m.a(i)) {
                if (!a(i)) {
                    return false;
                }
                i3++;
            }
            i = this.m.b(i);
        }
        return true;
    }

    private boolean a(int i) {
        NativeAd c = this.f.c();
        if (c == null) {
            return false;
        }
        this.m.a(i, c);
        this.r++;
        this.o.onAdLoaded(i);
        return true;
    }

    private void a(View view) {
        NativeAd nativeAd;
        if (view != null && (nativeAd = this.h.get(view)) != null) {
            nativeAd.clear(view);
            this.h.remove(view);
            this.g.remove(nativeAd);
        }
    }

    private void a(NativeAd nativeAd, View view) {
        this.g.put(nativeAd, new WeakReference<>(view));
        this.h.put(view, nativeAd);
        nativeAd.prepare(view);
    }
}
