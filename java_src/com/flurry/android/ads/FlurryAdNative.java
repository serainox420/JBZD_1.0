package com.flurry.android.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.flurry.sdk.bb;
import com.flurry.sdk.d;
import com.flurry.sdk.de;
import com.flurry.sdk.f;
import com.flurry.sdk.fi;
import com.flurry.sdk.hi;
import com.flurry.sdk.i;
import com.flurry.sdk.jy;
import com.flurry.sdk.kh;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
import com.flurry.sdk.ma;
import com.flurry.sdk.x;
import com.millennialmedia.NativeAd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class FlurryAdNative {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2396a = FlurryAdNative.class.getSimpleName();
    private x c;
    private FlurryAdNativeListener e;
    private final List<FlurryAdNativeAsset> b = new ArrayList();
    private final kh<d> d = new kh<d>() { // from class: com.flurry.android.ads.FlurryAdNative.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(d dVar) {
            final d dVar2 = dVar;
            if (dVar2.f2524a != FlurryAdNative.this.c || dVar2.b == null) {
                return;
            }
            if (d.a.kOnFetched.equals(dVar2.b)) {
                FlurryAdNative.b(FlurryAdNative.this);
            }
            final FlurryAdNativeListener flurryAdNativeListener = FlurryAdNative.this.e;
            if (flurryAdNativeListener == null) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.android.ads.FlurryAdNative.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass2.f2399a[dVar2.b.ordinal()]) {
                        case 1:
                            f.a().a("nativeAdReady");
                            flurryAdNativeListener.onFetched(FlurryAdNative.this);
                            return;
                        case 2:
                            if (dVar2.c == bb.kUnfilled) {
                                f.a().a("nativeAdUnfilled");
                            }
                            flurryAdNativeListener.onError(FlurryAdNative.this, FlurryAdErrorType.FETCH, dVar2.c.z);
                            return;
                        case 3:
                            flurryAdNativeListener.onShowFullscreen(FlurryAdNative.this);
                            return;
                        case 4:
                            flurryAdNativeListener.onCloseFullscreen(FlurryAdNative.this);
                            return;
                        case 5:
                            flurryAdNativeListener.onAppExit(FlurryAdNative.this);
                            return;
                        case 6:
                            flurryAdNativeListener.onClicked(FlurryAdNative.this);
                            return;
                        case 7:
                            flurryAdNativeListener.onError(FlurryAdNative.this, FlurryAdErrorType.CLICK, dVar2.c.z);
                            return;
                        case 8:
                            flurryAdNativeListener.onImpressionLogged(FlurryAdNative.this);
                            return;
                        case 9:
                            flurryAdNativeListener.onExpanded(FlurryAdNative.this);
                            return;
                        case 10:
                            flurryAdNativeListener.onCollapsed(FlurryAdNative.this);
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };

    /* renamed from: com.flurry.android.ads.FlurryAdNative$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2399a = new int[d.a.values().length];

        static {
            try {
                f2399a[d.a.kOnFetched.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2399a[d.a.kOnFetchFailed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2399a[d.a.kOnOpen.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2399a[d.a.kOnClose.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2399a[d.a.kOnAppExit.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2399a[d.a.kOnClicked.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2399a[d.a.kOnClickFailed.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2399a[d.a.kOnImpressionLogged.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2399a[d.a.kOnExpanded.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2399a[d.a.kOnCollapsed.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public FlurryAdNative(Context context, String str) {
        if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        if (context == null) {
            throw new IllegalArgumentException("Context cannot be null!");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Ad space must be specified!");
        }
        try {
            if (i.a() == null) {
                throw new IllegalStateException("Could not find FlurryAds module. Please make sure the library is included.");
            }
            this.c = new x(context, str);
            km.a(f2396a, "NativeAdObject created: " + this.c);
            ArrayList arrayList = new ArrayList();
            arrayList.add(1);
            this.c.l = arrayList;
            ki.a().a("com.flurry.android.impl.ads.AdStateEvent", this.d);
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void destroy() {
        try {
            ki.a().b("com.flurry.android.impl.ads.AdStateEvent", this.d);
            this.e = null;
            if (this.c != null) {
                km.a(f2396a, "NativeAdObject ready to destroy: " + this.c);
                this.c.a();
                this.c = null;
                km.a(f2396a, "NativeAdObject destroyed: " + ((Object) null));
            }
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void setListener(FlurryAdNativeListener flurryAdNativeListener) {
        try {
            this.e = flurryAdNativeListener;
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void setTargeting(FlurryAdTargeting flurryAdTargeting) {
        try {
            this.c.j = flurryAdTargeting;
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void setSupportedStyles(List<Integer> list) {
        try {
            this.c.l = list;
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void fetchAd() {
        try {
            km.a(f2396a, "NativeAdObject ready to fetch ad: " + this.c);
            f.a().a("nativeAdFetch");
            this.c.w();
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final boolean isReady() {
        try {
            return this.c.u();
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
            return false;
        }
    }

    public final boolean isExpired() {
        try {
            return this.c.t();
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
            return false;
        }
    }

    public final void setTrackingView(View view) {
        try {
            this.c.a(view);
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void setExpandableTrackingView(View view, View view2) {
        try {
            x xVar = this.c;
            xVar.a(view);
            xVar.n = new WeakReference<>(view2);
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void setCollapsableTrackingView(View view, View view2) {
        try {
            x xVar = this.c;
            xVar.a(view);
            xVar.o = new WeakReference<>(view2);
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final void removeTrackingView() {
        try {
            this.c.x();
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
        }
    }

    public final int getStyle() {
        try {
            x xVar = this.c;
            if (x.a.READY.equals(xVar.k)) {
                return xVar.i.b.b.z.f2529a;
            }
            return 0;
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
            return 0;
        }
    }

    public final FlurryAdNativeAsset getAsset(String str) {
        FlurryAdNativeAsset flurryAdNativeAsset;
        FlurryAdNativeAsset flurryAdNativeAsset2;
        if (i.a() != null && !TextUtils.isEmpty(str)) {
            boolean z = false;
            try {
                if (NativeAd.COMPONENT_ID_CALL_TO_ACTION.equals(str)) {
                    return a();
                }
                synchronized (this.b) {
                    Iterator<FlurryAdNativeAsset> it = this.b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            flurryAdNativeAsset = null;
                            break;
                        }
                        flurryAdNativeAsset = it.next();
                        if (str.equals(flurryAdNativeAsset.getName())) {
                            z = true;
                            break;
                        }
                    }
                }
                if (!z && str.equals("videoUrl")) {
                    synchronized (this.b) {
                        Iterator<FlurryAdNativeAsset> it2 = this.b.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                flurryAdNativeAsset2 = null;
                                break;
                            }
                            flurryAdNativeAsset2 = it2.next();
                            if ("vastAd".equals(flurryAdNativeAsset2.getName())) {
                                break;
                            }
                        }
                    }
                    return flurryAdNativeAsset2;
                }
                return flurryAdNativeAsset;
            } catch (Throwable th) {
                km.a(f2396a, "Exception: ", th);
                return null;
            }
        }
        return null;
    }

    public final List<FlurryAdNativeAsset> getAssetList() {
        if (i.a() == null) {
            return Collections.emptyList();
        }
        try {
            ArrayList arrayList = new ArrayList();
            synchronized (this.b) {
                arrayList.addAll(this.b);
            }
            return Collections.unmodifiableList(arrayList);
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
            return Collections.emptyList();
        }
    }

    public final boolean isVideoAd() {
        try {
            return this.c.v();
        } catch (Throwable th) {
            km.a(f2396a, "Exception: ", th);
            return false;
        }
    }

    public final String getAdSpace() {
        if (this.c == null) {
            km.b(f2396a, "Ad object is null");
            return null;
        }
        return this.c.c;
    }

    private FlurryAdNativeAsset a() {
        boolean z;
        FlurryAdNativeAsset flurryAdNativeAsset;
        FlurryAdNativeAsset flurryAdNativeAsset2 = null;
        synchronized (this.b) {
            Iterator<FlurryAdNativeAsset> it = this.b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                FlurryAdNativeAsset next = it.next();
                if ("clickToCall".equals(next.getName())) {
                    z = true;
                    flurryAdNativeAsset2 = next;
                    break;
                }
            }
        }
        if (!z) {
            synchronized (this.b) {
                Iterator<FlurryAdNativeAsset> it2 = this.b.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        flurryAdNativeAsset = flurryAdNativeAsset2;
                        break;
                    }
                    flurryAdNativeAsset = it2.next();
                    if (NativeAd.COMPONENT_ID_CALL_TO_ACTION.equals(flurryAdNativeAsset.getName())) {
                        break;
                    }
                }
            }
            return flurryAdNativeAsset;
        }
        return flurryAdNativeAsset2;
    }

    static /* synthetic */ void b(FlurryAdNative flurryAdNative) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (flurryAdNative.c != null) {
            Iterator<String> it = fi.d().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                String next = it.next();
                if (next != null && next.startsWith("Flurry_Mopub")) {
                    z = false;
                    break;
                }
            }
            if (z) {
                synchronized (flurryAdNative.b) {
                    Iterator<de> it2 = flurryAdNative.c.y().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z2 = true;
                            break;
                        }
                        de next2 = it2.next();
                        if (next2.f2530a.equals("showRating")) {
                            z2 = next2.c.equals("true");
                            break;
                        }
                    }
                }
                z3 = z2;
            }
            synchronized (flurryAdNative.b) {
                for (de deVar : flurryAdNative.c.y()) {
                    if (!deVar.f2530a.equals("showRating") && (z3 || (!deVar.f2530a.equals("appRating") && !deVar.f2530a.equals("secRatingImg") && !deVar.f2530a.equals("secHqRatingIMg")))) {
                        flurryAdNative.b.add(new FlurryAdNativeAsset(deVar, flurryAdNative.c.b));
                    }
                }
                new hi().g();
                switch (flurryAdNative.c.f().getResources().getDisplayMetrics().densityDpi) {
                    case 120:
                    case 160:
                        flurryAdNative.b.add(new FlurryAdNativeAsset(hi.a("downArrowImage", "android/down_arrow.png"), flurryAdNative.c.b));
                        flurryAdNative.b.add(new FlurryAdNativeAsset(hi.a("upArrowImage", "android/up_arrow.png"), flurryAdNative.c.b));
                        break;
                    case 240:
                        flurryAdNative.b.add(new FlurryAdNativeAsset(hi.a("downArrowImage", "android/down_arrow2x.png"), flurryAdNative.c.b));
                        flurryAdNative.b.add(new FlurryAdNativeAsset(hi.a("upArrowImage", "android/up_arrow2x.png"), flurryAdNative.c.b));
                        break;
                    default:
                        flurryAdNative.b.add(new FlurryAdNativeAsset(hi.a("downArrowImage", "android/down_arrow3x.png"), flurryAdNative.c.b));
                        flurryAdNative.b.add(new FlurryAdNativeAsset(hi.a("upArrowImage", "android/up_arrow3x.png"), flurryAdNative.c.b));
                        break;
                }
            }
        }
    }
}
