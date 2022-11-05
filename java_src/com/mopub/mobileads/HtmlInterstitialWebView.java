package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
/* loaded from: classes3.dex */
public class HtmlInterstitialWebView extends BaseHtmlWebView {
    private Handler b;

    public HtmlInterstitialWebView(Context context, AdReport adReport) {
        super(context, adReport);
        this.b = new Handler();
    }

    public void init(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2, String str3) {
        super.init(z);
        setWebViewClient(new b(new a(customEventInterstitialListener), this, str2, str, str3));
    }

    /* loaded from: classes3.dex */
    static class a implements HtmlWebViewListener {

        /* renamed from: a  reason: collision with root package name */
        private final CustomEventInterstitial.CustomEventInterstitialListener f4423a;

        public a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f4423a = customEventInterstitialListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
            this.f4423a.onInterstitialLoaded();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode moPubErrorCode) {
            this.f4423a.onInterstitialFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f4423a.onInterstitialClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
        }
    }
}
