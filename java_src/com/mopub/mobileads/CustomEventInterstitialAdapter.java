package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.google.firebase.a.a;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.factories.CustomEventInterstitialFactory;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class CustomEventInterstitialAdapter implements CustomEventInterstitial.CustomEventInterstitialListener {
    public static final int DEFAULT_INTERSTITIAL_TIMEOUT_DELAY = 30000;

    /* renamed from: a  reason: collision with root package name */
    private final MoPubInterstitial f4418a;
    private boolean b;
    private a c;
    private CustomEventInterstitial d;
    private Context e;
    private Map<String, Object> f;
    private Map<String, String> g;
    private final Handler h;
    private final Runnable i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface a {
        void onCustomEventInterstitialClicked();

        void onCustomEventInterstitialDismissed();

        void onCustomEventInterstitialFailed(MoPubErrorCode moPubErrorCode);

        void onCustomEventInterstitialLoaded();

        void onCustomEventInterstitialShown();
    }

    public CustomEventInterstitialAdapter(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        Preconditions.checkNotNull(map);
        this.h = new Handler();
        this.f4418a = moPubInterstitial;
        this.e = this.f4418a.getActivity();
        this.i = new Runnable() { // from class: com.mopub.mobileads.CustomEventInterstitialAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.d("Third-party network timed out.");
                CustomEventInterstitialAdapter.this.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
                CustomEventInterstitialAdapter.this.c();
            }
        };
        MoPubLog.d("Attempting to invoke custom event: " + str);
        try {
            this.d = CustomEventInterstitialFactory.create(str);
            this.g = new TreeMap(map);
            this.f = this.f4418a.getLocalExtras();
            if (this.f4418a.getLocation() != null) {
                this.f.put(a.b.LOCATION, this.f4418a.getLocation());
            }
            this.f.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(j));
            this.f.put(DataKeys.AD_REPORT_KEY, adReport);
        } catch (Exception e) {
            MoPubLog.d("Couldn't locate or instantiate custom event: " + str + ".");
            this.f4418a.onCustomEventInterstitialFailed(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (!d() && this.d != null) {
            this.h.postDelayed(this.i, f());
            try {
                this.d.loadInterstitial(this.e, this, this.f, this.g);
            } catch (Exception e) {
                MoPubLog.d("Loading a custom event interstitial threw an exception.", e);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (!d() && this.d != null) {
            try {
                this.d.showInterstitial();
            } catch (Exception e) {
                MoPubLog.d("Showing a custom event interstitial threw an exception.", e);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.d != null) {
            try {
                this.d.onInvalidate();
            } catch (Exception e) {
                MoPubLog.d("Invalidating a custom event interstitial threw an exception.", e);
            }
        }
        this.d = null;
        this.e = null;
        this.g = null;
        this.f = null;
        this.c = null;
        this.b = true;
    }

    boolean d() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.c = aVar;
    }

    private void e() {
        this.h.removeCallbacks(this.i);
    }

    private int f() {
        if (this.f4418a == null || this.f4418a.b() == null || this.f4418a.b().intValue() < 0) {
            return 30000;
        }
        return this.f4418a.b().intValue() * 1000;
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialLoaded() {
        if (!d()) {
            e();
            if (this.c != null) {
                this.c.onCustomEventInterstitialLoaded();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
        if (!d() && this.c != null) {
            if (moPubErrorCode == null) {
                moPubErrorCode = MoPubErrorCode.UNSPECIFIED;
            }
            e();
            this.c.onCustomEventInterstitialFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialShown() {
        if (!d() && this.c != null) {
            this.c.onCustomEventInterstitialShown();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialClicked() {
        if (!d() && this.c != null) {
            this.c.onCustomEventInterstitialClicked();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onLeaveApplication() {
        onInterstitialClicked();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialDismissed() {
        if (!d() && this.c != null) {
            this.c.onCustomEventInterstitialDismissed();
        }
    }
}
