package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.HtmlInterstitialWebView;
/* loaded from: classes.dex */
public class HtmlInterstitialWebViewFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static HtmlInterstitialWebViewFactory f4519a = new HtmlInterstitialWebViewFactory();

    public static HtmlInterstitialWebView create(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2) {
        return f4519a.internalCreate(context, adReport, customEventInterstitialListener, z, str, str2);
    }

    public HtmlInterstitialWebView internalCreate(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2) {
        HtmlInterstitialWebView htmlInterstitialWebView = new HtmlInterstitialWebView(context, adReport);
        htmlInterstitialWebView.init(customEventInterstitialListener, z, str, str2, adReport.getDspCreativeId());
        return htmlInterstitialWebView;
    }

    @Deprecated
    public static void setInstance(HtmlInterstitialWebViewFactory htmlInterstitialWebViewFactory) {
        f4519a = htmlInterstitialWebViewFactory;
    }
}
