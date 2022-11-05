package com.flurry.android.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.flurry.sdk.bb;
import com.flurry.sdk.d;
import com.flurry.sdk.fh;
import com.flurry.sdk.i;
import com.flurry.sdk.jy;
import com.flurry.sdk.kh;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
import com.flurry.sdk.ma;
import com.flurry.sdk.u;
/* loaded from: classes2.dex */
public final class FlurryAdInterstitial {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2392a = FlurryAdInterstitial.class.getSimpleName();
    private u b;
    private final kh<d> c = new kh<d>() { // from class: com.flurry.android.ads.FlurryAdInterstitial.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(d dVar) {
            final FlurryAdInterstitialListener flurryAdInterstitialListener;
            final d dVar2 = dVar;
            if (dVar2.f2524a != FlurryAdInterstitial.this.b || dVar2.b == null || (flurryAdInterstitialListener = FlurryAdInterstitial.this.d) == null) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.android.ads.FlurryAdInterstitial.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass2.f2395a[dVar2.b.ordinal()]) {
                        case 1:
                            flurryAdInterstitialListener.onFetched(FlurryAdInterstitial.this);
                            return;
                        case 2:
                            flurryAdInterstitialListener.onError(FlurryAdInterstitial.this, FlurryAdErrorType.FETCH, dVar2.c.z);
                            return;
                        case 3:
                            flurryAdInterstitialListener.onRendered(FlurryAdInterstitial.this);
                            return;
                        case 4:
                            flurryAdInterstitialListener.onError(FlurryAdInterstitial.this, FlurryAdErrorType.RENDER, dVar2.c.z);
                            return;
                        case 5:
                            flurryAdInterstitialListener.onDisplay(FlurryAdInterstitial.this);
                            return;
                        case 6:
                            flurryAdInterstitialListener.onClose(FlurryAdInterstitial.this);
                            return;
                        case 7:
                            flurryAdInterstitialListener.onAppExit(FlurryAdInterstitial.this);
                            return;
                        case 8:
                            flurryAdInterstitialListener.onClicked(FlurryAdInterstitial.this);
                            return;
                        case 9:
                            flurryAdInterstitialListener.onVideoCompleted(FlurryAdInterstitial.this);
                            return;
                        case 10:
                            flurryAdInterstitialListener.onError(FlurryAdInterstitial.this, FlurryAdErrorType.CLICK, dVar2.c.z);
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };
    private FlurryAdInterstitialListener d;

    /* renamed from: com.flurry.android.ads.FlurryAdInterstitial$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2395a = new int[d.a.values().length];

        static {
            try {
                f2395a[d.a.kOnFetched.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2395a[d.a.kOnFetchFailed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2395a[d.a.kOnRendered.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2395a[d.a.kOnRenderFailed.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2395a[d.a.kOnOpen.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2395a[d.a.kOnClose.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2395a[d.a.kOnAppExit.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2395a[d.a.kOnClicked.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2395a[d.a.kOnVideoCompleted.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2395a[d.a.kOnClickFailed.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public FlurryAdInterstitial(Context context, String str) {
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
            this.b = new u(context, str);
            km.a(f2392a, "InterstitialAdObject created: " + this.b);
            ki.a().a("com.flurry.android.impl.ads.AdStateEvent", this.c);
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
        }
    }

    public final void destroy() {
        try {
            ki.a().b("com.flurry.android.impl.ads.AdStateEvent", this.c);
            this.d = null;
            if (this.b != null) {
                km.a(f2392a, "InterstitialAdObject ready to destroy: " + this.b);
                this.b.a();
                this.b = null;
                km.a(f2392a, "InterstitialAdObject destroyed: " + ((Object) null));
            }
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
        }
    }

    public final void setListener(FlurryAdInterstitialListener flurryAdInterstitialListener) {
        try {
            this.d = flurryAdInterstitialListener;
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
        }
    }

    public final void setTargeting(FlurryAdTargeting flurryAdTargeting) {
        try {
            this.b.j = flurryAdTargeting;
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
        }
    }

    public final void fetchAd() {
        try {
            km.a(f2392a, "InterstitialAdObject ready to fetch ad: " + this.b);
            this.b.v();
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
        }
    }

    public final void displayAd() {
        try {
            final u uVar = this.b;
            synchronized (uVar) {
                if (u.a.INIT.equals(uVar.k)) {
                    fh.b(uVar, bb.kNotReady);
                } else if (u.a.READY.equals(uVar.k)) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.u.2
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            u.a(u.this);
                        }
                    });
                } else if (u.a.DISPLAY.equals(uVar.k) || u.a.NEXT.equals(uVar.k)) {
                    fh.b(uVar);
                }
            }
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
        }
    }

    public final boolean isReady() {
        try {
            return this.b.u();
        } catch (Throwable th) {
            km.a(f2392a, "Exception: ", th);
            return false;
        }
    }

    public final String getAdSpace() {
        if (this.b == null) {
            km.b(f2392a, "Ad object is null");
            return null;
        }
        return this.b.c;
    }
}
