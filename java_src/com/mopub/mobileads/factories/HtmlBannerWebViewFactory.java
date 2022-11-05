package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.HtmlBannerWebView;
/* loaded from: classes.dex */
public class HtmlBannerWebViewFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static HtmlBannerWebViewFactory f4518a = new HtmlBannerWebViewFactory();

    public static HtmlBannerWebView create(Context context, AdReport adReport, CustomEventBanner.CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2) {
        return f4518a.internalCreate(context, adReport, customEventBannerListener, z, str, str2);
    }

    public HtmlBannerWebView internalCreate(Context context, AdReport adReport, CustomEventBanner.CustomEventBannerListener customEventBannerListener, boolean z, String str, String str2) {
        HtmlBannerWebView htmlBannerWebView = new HtmlBannerWebView(context, adReport);
        htmlBannerWebView.init(customEventBannerListener, z, str, str2, adReport.getDspCreativeId());
        return htmlBannerWebView;
    }

    @Deprecated
    public static void setInstance(HtmlBannerWebViewFactory htmlBannerWebViewFactory) {
        f4518a = htmlBannerWebViewFactory;
    }
}
