package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.factories.HtmlBannerWebViewFactory;
import java.util.Map;
/* loaded from: classes3.dex */
public class HtmlBanner extends CustomEventBanner {

    /* renamed from: a  reason: collision with root package name */
    private HtmlBannerWebView f4421a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventBanner
    public void a(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        if (a(map2)) {
            String str = map2.get(DataKeys.HTML_RESPONSE_BODY_KEY);
            String str2 = map2.get(DataKeys.REDIRECT_URL_KEY);
            String str3 = map2.get(DataKeys.CLICKTHROUGH_URL_KEY);
            Boolean valueOf = Boolean.valueOf(map2.get(DataKeys.SCROLLABLE_KEY));
            try {
                this.f4421a = HtmlBannerWebViewFactory.create(context, (AdReport) map.get(DataKeys.AD_REPORT_KEY), customEventBannerListener, valueOf.booleanValue(), str2, str3);
                AdViewController.setShouldHonorServerDimensions(this.f4421a);
                this.f4421a.a(str);
                return;
            } catch (ClassCastException e) {
                MoPubLog.e("LocalExtras contained an incorrect type.");
                customEventBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
        }
        customEventBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventBanner
    public void a() {
        if (this.f4421a != null) {
            this.f4421a.destroy();
        }
    }

    private boolean a(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }
}
