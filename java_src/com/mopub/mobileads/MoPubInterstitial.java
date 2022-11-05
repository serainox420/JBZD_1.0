package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;
/* loaded from: classes3.dex */
public class MoPubInterstitial implements CustomEventInterstitialAdapter.a {

    /* renamed from: a  reason: collision with root package name */
    private MoPubInterstitialView f4430a;
    private CustomEventInterstitialAdapter b;
    private InterstitialAdListener c;
    private Activity d;
    private volatile a e;

    /* loaded from: classes3.dex */
    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public enum a {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MoPubInterstitial(Activity activity, String str) {
        this.d = activity;
        this.f4430a = new MoPubInterstitialView(this.d);
        this.f4430a.setAdUnitId(str);
        this.e = a.IDLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(a aVar) {
        return a(aVar, false);
    }

    @VisibleForTesting
    synchronized boolean a(a aVar, boolean z) {
        boolean z2 = true;
        synchronized (this) {
            Preconditions.checkNotNull(aVar);
            switch (this.e) {
                case LOADING:
                    switch (aVar) {
                        case LOADING:
                            if (!z) {
                                MoPubLog.d("Already loading an interstitial.");
                            }
                            z2 = false;
                            break;
                        case SHOWING:
                            MoPubLog.d("Interstitial is not ready to be shown yet.");
                            z2 = false;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        case IDLE:
                            e();
                            this.e = a.IDLE;
                            break;
                        case READY:
                            this.e = a.READY;
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                case SHOWING:
                    switch (aVar) {
                        case LOADING:
                            if (!z) {
                                MoPubLog.d("Interstitial already showing. Not loading another.");
                            }
                            z2 = false;
                            break;
                        case SHOWING:
                            MoPubLog.d("Already showing an interstitial. Cannot show it again.");
                            z2 = false;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        case IDLE:
                            if (z) {
                                MoPubLog.d("Cannot force refresh while showing an interstitial.");
                                z2 = false;
                                break;
                            } else {
                                e();
                                this.e = a.IDLE;
                                break;
                            }
                        default:
                            z2 = false;
                            break;
                    }
                case DESTROYED:
                    MoPubLog.d("MoPubInterstitial destroyed. Ignoring all requests.");
                    z2 = false;
                    break;
                case IDLE:
                    switch (aVar) {
                        case LOADING:
                            e();
                            this.e = a.LOADING;
                            if (z) {
                                this.f4430a.forceRefresh();
                                break;
                            } else {
                                this.f4430a.loadAd();
                                break;
                            }
                        case SHOWING:
                            MoPubLog.d("No interstitial loading or loaded.");
                            z2 = false;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                case READY:
                    switch (aVar) {
                        case LOADING:
                            MoPubLog.d("Interstitial already loaded. Not loading another.");
                            if (this.c != null) {
                                this.c.onInterstitialLoaded(this);
                            }
                            z2 = false;
                            break;
                        case SHOWING:
                            d();
                            this.e = a.SHOWING;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        case IDLE:
                            if (!z) {
                                z2 = false;
                                break;
                            } else {
                                e();
                                this.e = a.IDLE;
                                break;
                            }
                        default:
                            z2 = false;
                            break;
                    }
                default:
                    z2 = false;
                    break;
            }
        }
        return z2;
    }

    private void c() {
        e();
        this.f4430a.setBannerAdListener(null);
        this.f4430a.destroy();
        this.e = a.DESTROYED;
    }

    public void load() {
        a(a.LOADING);
    }

    public boolean show() {
        return a(a.SHOWING);
    }

    public void forceRefresh() {
        a(a.IDLE, true);
        a(a.LOADING, true);
    }

    public boolean isReady() {
        return this.e == a.READY;
    }

    boolean a() {
        return this.e == a.DESTROYED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer b() {
        return this.f4430a.getAdTimeoutDelay();
    }

    private void d() {
        if (this.b != null) {
            this.b.b();
        }
    }

    private void e() {
        if (this.b != null) {
            this.b.c();
            this.b = null;
        }
    }

    public void setKeywords(String str) {
        this.f4430a.setKeywords(str);
    }

    public String getKeywords() {
        return this.f4430a.getKeywords();
    }

    public Activity getActivity() {
        return this.d;
    }

    public Location getLocation() {
        return this.f4430a.getLocation();
    }

    public void destroy() {
        a(a.DESTROYED);
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        this.c = interstitialAdListener;
    }

    public InterstitialAdListener getInterstitialAdListener() {
        return this.c;
    }

    public void setTesting(boolean z) {
        this.f4430a.setTesting(z);
    }

    public boolean getTesting() {
        return this.f4430a.getTesting();
    }

    public void setLocalExtras(Map<String, Object> map) {
        this.f4430a.setLocalExtras(map);
    }

    public Map<String, Object> getLocalExtras() {
        return this.f4430a.getLocalExtras();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialLoaded() {
        if (!a()) {
            a(a.READY);
            if (this.c != null) {
                this.c.onInterstitialLoaded(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialFailed(MoPubErrorCode moPubErrorCode) {
        if (!a() && !this.f4430a.b(moPubErrorCode)) {
            a(a.IDLE);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialShown() {
        if (!a()) {
            this.f4430a.a();
            if (this.c != null) {
                this.c.onInterstitialShown(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialClicked() {
        if (!a()) {
            this.f4430a.b();
            if (this.c != null) {
                this.c.onInterstitialClicked(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialDismissed() {
        if (!a()) {
            a(a.IDLE);
            if (this.c != null) {
                this.c.onInterstitialDismissed(this);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class MoPubInterstitialView extends MoPubView {
        public MoPubInterstitialView(Context context) {
            super(context);
            setAutorefreshEnabled(false);
        }

        @Override // com.mopub.mobileads.MoPubView
        public AdFormat getAdFormat() {
            return AdFormat.INTERSTITIAL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.mopub.mobileads.MoPubView
        public void a(String str, Map<String, String> map) {
            if (this.b != null) {
                if (!TextUtils.isEmpty(str)) {
                    if (MoPubInterstitial.this.b != null) {
                        MoPubInterstitial.this.b.c();
                    }
                    MoPubLog.d("Loading custom event interstitial adapter.");
                    MoPubInterstitial.this.b = CustomEventInterstitialAdapterFactory.create(MoPubInterstitial.this, str, map, this.b.getBroadcastIdentifier(), this.b.getAdReport());
                    MoPubInterstitial.this.b.a(MoPubInterstitial.this);
                    MoPubInterstitial.this.b.a();
                    return;
                }
                MoPubLog.d("Couldn't invoke custom event because the server did not specify one.");
                b(MoPubErrorCode.ADAPTER_NOT_FOUND);
            }
        }

        protected void a() {
            MoPubLog.d("Tracking impression for interstitial.");
            if (this.b != null) {
                this.b.f();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.mopub.mobileads.MoPubView
        public void a(MoPubErrorCode moPubErrorCode) {
            MoPubInterstitial.this.a(a.IDLE);
            if (MoPubInterstitial.this.c != null) {
                MoPubInterstitial.this.c.onInterstitialFailed(MoPubInterstitial.this, moPubErrorCode);
            }
        }
    }
}
