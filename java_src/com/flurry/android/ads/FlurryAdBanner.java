package com.flurry.android.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.flurry.sdk.bb;
import com.flurry.sdk.d;
import com.flurry.sdk.fh;
import com.flurry.sdk.i;
import com.flurry.sdk.jy;
import com.flurry.sdk.kh;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
import com.flurry.sdk.ma;
import com.flurry.sdk.q;
/* loaded from: classes2.dex */
public final class FlurryAdBanner {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2387a = FlurryAdBanner.class.getSimpleName();
    private q b;
    private final kh<d> c = new kh<d>() { // from class: com.flurry.android.ads.FlurryAdBanner.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(d dVar) {
            final FlurryAdBannerListener flurryAdBannerListener;
            final d dVar2 = dVar;
            if (dVar2.f2524a != FlurryAdBanner.this.b || dVar2.b == null || (flurryAdBannerListener = FlurryAdBanner.this.d) == null) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.android.ads.FlurryAdBanner.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass2.f2390a[dVar2.b.ordinal()]) {
                        case 1:
                            flurryAdBannerListener.onFetched(FlurryAdBanner.this);
                            return;
                        case 2:
                            flurryAdBannerListener.onError(FlurryAdBanner.this, FlurryAdErrorType.FETCH, dVar2.c.z);
                            return;
                        case 3:
                            flurryAdBannerListener.onRendered(FlurryAdBanner.this);
                            return;
                        case 4:
                            flurryAdBannerListener.onError(FlurryAdBanner.this, FlurryAdErrorType.RENDER, dVar2.c.z);
                            return;
                        case 5:
                            flurryAdBannerListener.onShowFullscreen(FlurryAdBanner.this);
                            return;
                        case 6:
                            flurryAdBannerListener.onCloseFullscreen(FlurryAdBanner.this);
                            return;
                        case 7:
                            flurryAdBannerListener.onAppExit(FlurryAdBanner.this);
                            return;
                        case 8:
                            flurryAdBannerListener.onClicked(FlurryAdBanner.this);
                            return;
                        case 9:
                            flurryAdBannerListener.onVideoCompleted(FlurryAdBanner.this);
                            return;
                        case 10:
                            flurryAdBannerListener.onError(FlurryAdBanner.this, FlurryAdErrorType.CLICK, dVar2.c.z);
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };
    private FlurryAdBannerListener d;

    /* renamed from: com.flurry.android.ads.FlurryAdBanner$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2390a = new int[d.a.values().length];

        static {
            try {
                f2390a[d.a.kOnFetched.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2390a[d.a.kOnFetchFailed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2390a[d.a.kOnRendered.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2390a[d.a.kOnRenderFailed.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2390a[d.a.kOnOpen.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2390a[d.a.kOnClose.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2390a[d.a.kOnAppExit.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2390a[d.a.kOnClicked.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2390a[d.a.kOnVideoCompleted.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2390a[d.a.kOnClickFailed.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public FlurryAdBanner(Context context, ViewGroup viewGroup, String str) {
        if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        if (context == null) {
            throw new IllegalArgumentException("Context cannot be null!");
        }
        if (!(context instanceof Activity)) {
            throw new IllegalArgumentException("Context must be an Activity context!");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Ad space must be specified!");
        }
        try {
            if (i.a() == null) {
                throw new IllegalStateException("Could not find FlurryAds module. Please make sure the library is included.");
            }
            this.b = new q(context, viewGroup, str);
            km.a(f2387a, "BannerAdObject created: " + this.b);
            ki.a().a("com.flurry.android.impl.ads.AdStateEvent", this.c);
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final void destroy() {
        try {
            ki.a().b("com.flurry.android.impl.ads.AdStateEvent", this.c);
            this.d = null;
            if (this.b != null) {
                km.a(f2387a, "BannerAdObject ready to destroy: " + this.b);
                this.b.a();
                this.b = null;
                km.a(f2387a, "BannerAdObject destroyed: " + ((Object) null));
            }
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final void setListener(FlurryAdBannerListener flurryAdBannerListener) {
        try {
            this.d = flurryAdBannerListener;
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final void setTargeting(FlurryAdTargeting flurryAdTargeting) {
        try {
            this.b.j = flurryAdTargeting;
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final void fetchAd() {
        try {
            km.a(f2387a, "BannerAdObject ready to fetch ad: " + this.b);
            this.b.w();
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final void displayAd() {
        try {
            final q qVar = this.b;
            synchronized (qVar) {
                if (q.a.INIT.equals(qVar.k)) {
                    fh.b(qVar, bb.kNotReady);
                } else if (q.a.READY.equals(qVar.k)) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.q.3
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            q.a(q.this);
                        }
                    });
                } else if (q.a.DISPLAY.equals(qVar.k) || q.a.NEXT.equals(qVar.k)) {
                    fh.b(qVar);
                }
            }
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final void fetchAndDisplayAd() {
        try {
            this.b.x();
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
        }
    }

    public final boolean isReady() {
        try {
            return this.b.v();
        } catch (Throwable th) {
            km.a(f2387a, "Exception: ", th);
            return false;
        }
    }

    public final String getAdSpace() {
        if (this.b == null) {
            km.b(f2387a, "Ad object is null");
            return null;
        }
        return this.b.c;
    }
}
