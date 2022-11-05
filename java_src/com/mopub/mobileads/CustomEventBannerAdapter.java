package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.google.firebase.a.a;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.factories.CustomEventBannerFactory;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class CustomEventBannerAdapter implements CustomEventBanner.CustomEventBannerListener {
    public static final int DEFAULT_BANNER_TIMEOUT_DELAY = 10000;

    /* renamed from: a  reason: collision with root package name */
    private boolean f4416a;
    private MoPubView b;
    private Context c;
    private CustomEventBanner d;
    private Map<String, Object> e;
    private Map<String, String> f;
    private final Handler g;
    private final Runnable h;
    private boolean i;

    public CustomEventBannerAdapter(MoPubView moPubView, String str, Map<String, String> map, long j, AdReport adReport) {
        Preconditions.checkNotNull(map);
        this.g = new Handler();
        this.b = moPubView;
        this.c = moPubView.getContext();
        this.h = new Runnable() { // from class: com.mopub.mobileads.CustomEventBannerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.d("Third-party network timed out.");
                CustomEventBannerAdapter.this.onBannerFailed(MoPubErrorCode.NETWORK_TIMEOUT);
                CustomEventBannerAdapter.this.invalidate();
            }
        };
        MoPubLog.d("Attempting to invoke custom event: " + str);
        try {
            this.d = CustomEventBannerFactory.create(str);
            this.f = new TreeMap(map);
            this.e = this.b.getLocalExtras();
            if (this.b.getLocation() != null) {
                this.e.put(a.b.LOCATION, this.b.getLocation());
            }
            this.e.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(j));
            this.e.put(DataKeys.AD_REPORT_KEY, adReport);
            this.e.put(DataKeys.AD_WIDTH, Integer.valueOf(this.b.getAdWidth()));
            this.e.put(DataKeys.AD_HEIGHT, Integer.valueOf(this.b.getAdHeight()));
        } catch (Exception e) {
            MoPubLog.d("Couldn't locate or instantiate custom event: " + str + ".");
            this.b.b(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    @ReflectionTarget
    void loadAd() {
        if (!a() && this.d != null) {
            this.g.postDelayed(this.h, c());
            try {
                this.d.a(this.c, this, this.e, this.f);
            } catch (Exception e) {
                MoPubLog.d("Loading a custom event banner threw an exception.", e);
                onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @ReflectionTarget
    void invalidate() {
        if (this.d != null) {
            try {
                this.d.a();
            } catch (Exception e) {
                MoPubLog.d("Invalidating a custom event banner threw an exception", e);
            }
        }
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.f4416a = true;
    }

    boolean a() {
        return this.f4416a;
    }

    private void b() {
        this.g.removeCallbacks(this.h);
    }

    private int c() {
        if (this.b == null || this.b.getAdTimeoutDelay() == null || this.b.getAdTimeoutDelay().intValue() < 0) {
            return 10000;
        }
        return this.b.getAdTimeoutDelay().intValue() * 1000;
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerLoaded(View view) {
        if (!a()) {
            b();
            if (this.b != null) {
                this.b.h();
                this.b.setAdContentView(view);
                if (!(view instanceof HtmlBannerWebView)) {
                    this.b.c();
                }
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerFailed(MoPubErrorCode moPubErrorCode) {
        if (!a() && this.b != null) {
            if (moPubErrorCode == null) {
                moPubErrorCode = MoPubErrorCode.UNSPECIFIED;
            }
            b();
            this.b.b(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerExpanded() {
        if (!a()) {
            this.i = this.b.getAutorefreshEnabled();
            this.b.setAutorefreshEnabled(false);
            this.b.e();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerCollapsed() {
        if (!a()) {
            this.b.setAutorefreshEnabled(this.i);
            this.b.f();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerClicked() {
        if (!a() && this.b != null) {
            this.b.b();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onLeaveApplication() {
        onBannerClicked();
    }
}
