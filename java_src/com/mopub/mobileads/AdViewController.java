package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.mopub.network.AdRequest;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class AdViewController {
    private static final FrameLayout.LayoutParams b = new FrameLayout.LayoutParams(-2, -2, 17);
    private static final WeakHashMap<View, Boolean> c = new WeakHashMap<>();
    private Context e;
    private MoPubView f;
    private WebViewAdUrlGenerator g;
    private AdResponse h;
    private boolean k;
    private boolean m;
    private String n;
    private String r;
    private Location s;
    private boolean t;
    private boolean u;
    private String v;
    private AdRequest x;
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    int f4407a = 1;
    private Map<String, Object> o = new HashMap();
    private boolean p = true;
    private boolean q = true;
    private int w = -1;
    private final long d = Utils.generateUniqueId();
    private final AdRequest.Listener j = new AdRequest.Listener() { // from class: com.mopub.mobileads.AdViewController.1
        @Override // com.mopub.network.AdRequest.Listener
        public void onSuccess(AdResponse adResponse) {
            AdViewController.this.a(adResponse);
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AdViewController.this.a(volleyError);
        }
    };
    private final Runnable i = new Runnable() { // from class: com.mopub.mobileads.AdViewController.2
        @Override // java.lang.Runnable
        public void run() {
            AdViewController.this.l();
        }
    };
    private Integer y = 60000;
    private Handler l = new Handler();

    public static void setShouldHonorServerDimensions(View view) {
        c.put(view, true);
    }

    private static boolean b(View view) {
        return c.get(view) != null;
    }

    public AdViewController(Context context, MoPubView moPubView) {
        this.e = context;
        this.f = moPubView;
        this.g = new WebViewAdUrlGenerator(this.e.getApplicationContext(), MraidNativeCommandHandler.isStorePictureSupported(this.e));
    }

    @VisibleForTesting
    void a(AdResponse adResponse) {
        this.f4407a = 1;
        this.h = adResponse;
        this.w = this.h.getAdTimeoutMillis() == null ? this.w : this.h.getAdTimeoutMillis().intValue();
        this.y = this.h.getRefreshTimeMillis();
        a();
        a(this.f, adResponse.getCustomEventClassName(), adResponse.getServerExtras());
        j();
    }

    @VisibleForTesting
    void a(VolleyError volleyError) {
        if (volleyError instanceof MoPubNetworkError) {
            MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
            if (moPubNetworkError.getRefreshTimeMillis() != null) {
                this.y = moPubNetworkError.getRefreshTimeMillis();
            }
        }
        MoPubErrorCode a2 = a(volleyError, this.e);
        if (a2 == MoPubErrorCode.SERVER_ERROR) {
            this.f4407a++;
        }
        a();
        b(a2);
    }

    @VisibleForTesting
    void a(MoPubView moPubView, String str, Map<String, String> map) {
        Preconditions.checkNotNull(map);
        if (moPubView == null) {
            MoPubLog.d("Can't load an ad in this ad view because it was destroyed.");
        } else {
            moPubView.a(str, map);
        }
    }

    @VisibleForTesting
    static MoPubErrorCode a(VolleyError volleyError, Context context) {
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (volleyError instanceof MoPubNetworkError) {
            switch (((MoPubNetworkError) volleyError).getReason()) {
                case WARMING_UP:
                    return MoPubErrorCode.WARMUP;
                case NO_FILL:
                    return MoPubErrorCode.NO_FILL;
                default:
                    return MoPubErrorCode.UNSPECIFIED;
            }
        } else if (networkResponse == null) {
            if (!DeviceUtils.isNetworkAvailable(context)) {
                return MoPubErrorCode.NO_CONNECTION;
            }
            return MoPubErrorCode.UNSPECIFIED;
        } else if (volleyError.networkResponse.statusCode >= 400) {
            return MoPubErrorCode.SERVER_ERROR;
        } else {
            return MoPubErrorCode.UNSPECIFIED;
        }
    }

    public MoPubView getMoPubView() {
        return this.f;
    }

    public void loadAd() {
        this.f4407a = 1;
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.u = true;
        if (TextUtils.isEmpty(this.v)) {
            MoPubLog.d("Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
        } else if (!n()) {
            MoPubLog.d("Can't load an ad because there is no network connectivity.");
            j();
        } else {
            a(i());
        }
    }

    void a(String str) {
        if (str != null) {
            MoPubLog.d("Loading url: " + str);
            if (this.m) {
                if (!TextUtils.isEmpty(this.v)) {
                    MoPubLog.i("Already loading an ad for " + this.v + ", wait to finish.");
                    return;
                }
                return;
            }
            this.n = str;
            this.m = true;
            b(this.n);
        }
    }

    public void reload() {
        MoPubLog.d("Reload ad: " + this.n);
        a(this.n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(MoPubErrorCode moPubErrorCode) {
        this.m = false;
        Log.v("MoPub", "MoPubErrorCode: " + (moPubErrorCode == null ? "" : moPubErrorCode.toString()));
        String failoverUrl = this.h == null ? "" : this.h.getFailoverUrl();
        if (!TextUtils.isEmpty(failoverUrl)) {
            MoPubLog.d("Loading failover url: " + failoverUrl);
            a(failoverUrl);
            return true;
        }
        b(MoPubErrorCode.NO_FILL);
        return false;
    }

    void a() {
        this.m = false;
        if (this.x != null) {
            if (!this.x.isCanceled()) {
                this.x.cancel();
            }
            this.x = null;
        }
    }

    public String getKeywords() {
        return this.r;
    }

    public void setKeywords(String str) {
        this.r = str;
    }

    public Location getLocation() {
        return this.s;
    }

    public void setLocation(Location location) {
        this.s = location;
    }

    public String getAdUnitId() {
        return this.v;
    }

    public void setAdUnitId(String str) {
        this.v = str;
    }

    public long getBroadcastIdentifier() {
        return this.d;
    }

    public int getAdWidth() {
        if (this.h == null || this.h.getWidth() == null) {
            return 0;
        }
        return this.h.getWidth().intValue();
    }

    public int getAdHeight() {
        if (this.h == null || this.h.getHeight() == null) {
            return 0;
        }
        return this.h.getHeight().intValue();
    }

    public boolean getAutorefreshEnabled() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.q = this.p;
        b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        b(this.q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.q = z;
        b(z);
    }

    private void b(boolean z) {
        if (this.u && this.p != z) {
            MoPubLog.d("Refresh " + (z ? "enabled" : "disabled") + " for ad unit (" + this.v + ").");
        }
        this.p = z;
        if (this.u && this.p) {
            j();
        } else if (!this.p) {
            m();
        }
    }

    public AdReport getAdReport() {
        if (this.v == null || this.h == null) {
            return null;
        }
        return new AdReport(this.v, ClientMetadata.getInstance(this.e), this.h);
    }

    public boolean getTesting() {
        return this.t;
    }

    public void setTesting(boolean z) {
        this.t = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (!this.k) {
            if (this.x != null) {
                this.x.cancel();
                this.x = null;
            }
            b(false);
            m();
            this.f = null;
            this.e = null;
            this.g = null;
            this.k = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer e() {
        return Integer.valueOf(this.w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.h != null) {
            TrackingRequest.makeTrackingHttpRequest(this.h.getImpressionTrackingUrl(), this.e, BaseEvent.Name.IMPRESSION_REQUEST);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.h != null) {
            TrackingRequest.makeTrackingHttpRequest(this.h.getClickTrackingUrl(), this.e, BaseEvent.Name.CLICK_REQUEST);
        }
    }

    void b(String str) {
        MoPubView moPubView = getMoPubView();
        if (moPubView == null || this.e == null) {
            MoPubLog.d("Can't load an ad in this ad view because it was destroyed.");
            a();
            return;
        }
        AdRequest adRequest = new AdRequest(str, moPubView.getAdFormat(), this.v, this.e, this.j);
        Networking.getRequestQueue(this.e).add(adRequest);
        this.x = adRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        a();
        loadAd();
    }

    String i() {
        if (this.g == null) {
            return null;
        }
        return this.g.mo553withAdUnitId(this.v).withKeywords(this.r).withLocation(this.s).generateUrlString(Constants.HOST);
    }

    void b(MoPubErrorCode moPubErrorCode) {
        MoPubLog.i("Ad failed to load.");
        a();
        MoPubView moPubView = getMoPubView();
        if (moPubView != null) {
            j();
            moPubView.a(moPubErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        m();
        if (this.p && this.y != null && this.y.intValue() > 0) {
            this.l.postDelayed(this.i, Math.min(600000L, this.y.intValue() * ((long) Math.pow(1.5d, this.f4407a))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<String, Object> map) {
        this.o = map != null ? new TreeMap(map) : new TreeMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> k() {
        return this.o != null ? new TreeMap(this.o) : new TreeMap();
    }

    private void m() {
        this.l.removeCallbacks(this.i);
    }

    private boolean n() {
        if (this.e == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(this.e, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.e.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final View view) {
        this.l.post(new Runnable() { // from class: com.mopub.mobileads.AdViewController.3
            @Override // java.lang.Runnable
            public void run() {
                MoPubView moPubView = AdViewController.this.getMoPubView();
                if (moPubView != null) {
                    moPubView.removeAllViews();
                    moPubView.addView(view, AdViewController.this.c(view));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FrameLayout.LayoutParams c(View view) {
        Integer num;
        Integer num2 = null;
        if (this.h != null) {
            num = this.h.getWidth();
            num2 = this.h.getHeight();
        } else {
            num = null;
        }
        return (num == null || num2 == null || !b(view) || num.intValue() <= 0 || num2.intValue() <= 0) ? b : new FrameLayout.LayoutParams(Dips.asIntPixels(num.intValue(), this.e), Dips.asIntPixels(num2.intValue(), this.e), 17);
    }
}
