package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBanner;
/* loaded from: classes3.dex */
public class HtmlBannerWebView extends BaseHtmlWebView {
    public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";

    public HtmlBannerWebView(Context context, AdReport adReport) {
        super(context, adReport);
    }

    public void init(CustomEventBanner.CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2, String str3) {
        super.init(z);
        setWebViewClient(new b(new a(customEventBannerListener), this, str2, str, str3));
    }

    /* loaded from: classes3.dex */
    static class a implements HtmlWebViewListener {

        /* renamed from: a  reason: collision with root package name */
        private final CustomEventBanner.CustomEventBannerListener f4422a;

        public a(CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.f4422a = customEventBannerListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
            this.f4422a.onBannerLoaded(baseHtmlWebView);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode moPubErrorCode) {
            this.f4422a.onBannerFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f4422a.onBannerClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
            this.f4422a.onBannerCollapsed();
        }
    }
}
