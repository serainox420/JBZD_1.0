package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.util.List;
/* loaded from: classes.dex */
class r extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinLogger f1565a;
    private final AdViewControllerImpl b;

    public r(AdViewControllerImpl adViewControllerImpl, AppLovinSdk appLovinSdk) {
        this.f1565a = appLovinSdk.getLogger();
        this.b = adViewControllerImpl;
    }

    private void a(o oVar, Uri uri) {
        AppLovinAd a2 = oVar.a();
        ViewParent parent = oVar.getParent();
        if (!(parent instanceof AppLovinAdView) || a2 == null) {
            this.f1565a.e("AdWebViewClient", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
        } else {
            this.b.a(a2, (AppLovinAdView) parent, this.b, uri);
        }
    }

    void a(WebView webView, String str) {
        this.f1565a.d("AdWebViewClient", "Processing click on ad URL \"" + str + "\"");
        if (str == null || !(webView instanceof o)) {
            return;
        }
        Uri parse = Uri.parse(str);
        o oVar = (o) webView;
        String scheme = parse.getScheme();
        String host = parse.getHost();
        String path = parse.getPath();
        if (!AppLovinSdk.URI_SCHEME.equals(scheme) || !AppLovinSdk.URI_HOST.equals(host)) {
            a(oVar, parse);
        } else if (AppLovinAdService.URI_NEXT_AD.equals(path)) {
            a(oVar);
        } else if (AppLovinAdService.URI_CLOSE_AD.equals(path)) {
            b(oVar);
        } else if (AppLovinAdServiceImpl.URI_NO_OP.equals(path)) {
        } else {
            if (AppLovinAdServiceImpl.URI_TRACK_CLICK_IMMEDIATELY.equals(path)) {
                a(oVar, Uri.parse(AppLovinAdServiceImpl.URI_TRACK_CLICK_IMMEDIATELY));
            } else if (path == null || !path.startsWith("/launch/")) {
                this.f1565a.w("AdWebViewClient", "Unknown URL: " + str);
                this.f1565a.w("AdWebViewClient", "Path: " + path);
            } else {
                List<String> pathSegments = parse.getPathSegments();
                if (pathSegments == null || pathSegments.size() <= 1) {
                    return;
                }
                String str2 = pathSegments.get(pathSegments.size() - 1);
                try {
                    Context context = webView.getContext();
                    context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str2));
                    a(oVar, (Uri) null);
                } catch (Exception e) {
                    this.f1565a.e("AdWebViewClient", "Threw Exception Trying to Launch App for Package: " + str2, e);
                }
            }
        }
    }

    void a(o oVar) {
        ViewParent parent = oVar.getParent();
        if (parent instanceof AppLovinAdView) {
            ((AppLovinAdView) parent).loadNextAd();
        }
    }

    void b(o oVar) {
        this.b.a();
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.b.onAdHtmlLoaded(webView);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        a(webView, str);
        return true;
    }
}
