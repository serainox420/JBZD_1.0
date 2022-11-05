package com.intentsoftware.addapptr.banners;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.b.a;
import com.intentsoftware.addapptr.b.c;
import com.intentsoftware.addapptr.c.k;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes2.dex */
public class NexageBanner extends BannerAd {
    private static final String BASE_URL = "http://bos.ads.nexage.com/adServe";
    private FrameLayout bannerContainer;
    private WebView bannerView;
    private String currentUrl;
    private boolean failed;
    private c htmlDownloader;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, final BannerSize bannerSize, k kVar) {
        String str2;
        super.load(activity, str, bannerSize, kVar);
        if (com.intentsoftware.addapptr.c.getGoogleAdvertisingIdString() == null) {
            notifyListenerThatAdFailedToLoad("no google advertising id");
            return;
        }
        String str3 = "";
        String[] split = str.split(":");
        String str4 = split[0];
        if (split.length > 1) {
            str3 = split[1];
        }
        if (bannerSize == BannerSize.Banner300x250) {
            str2 = "medrec";
        } else if (bannerSize == BannerSize.Banner768x90) {
            str2 = "leader";
        } else if (bannerSize == BannerSize.Banner320x53) {
            str2 = "header";
        } else {
            notifyListenerThatAdFailedToLoad("unsupported size");
            return;
        }
        this.currentUrl = createUrl(str4, str2, str3);
        this.htmlDownloader = new c(activity, this.currentUrl, new c.a() { // from class: com.intentsoftware.addapptr.banners.NexageBanner.1
            @Override // com.intentsoftware.addapptr.b.c.a
            public void onHtmlDownloadingError() {
                NexageBanner.this.notifyListenerThatAdFailedToLoad("html download error");
            }

            @Override // com.intentsoftware.addapptr.b.c.a
            public void onHtmlDownloaded(String str5) {
                if (str5.matches("<body>.{0,5}</body>")) {
                    NexageBanner.this.notifyListenerThatAdFailedToLoad("body too short");
                    return;
                }
                NexageBanner.this.bannerContainer = new FrameLayout(NexageBanner.this.getActivity());
                NexageBanner.this.bannerView = new WebView(NexageBanner.this.getActivity().getApplicationContext());
                NexageBanner.this.bannerView.setWebViewClient(NexageBanner.this.createWebViewClient());
                NexageBanner.this.bannerView.setVerticalScrollBarEnabled(false);
                NexageBanner.this.bannerView.setHorizontalScrollBarEnabled(false);
                if (Build.VERSION.SDK_INT >= 21) {
                    NexageBanner.this.bannerView.getSettings().setMixedContentMode(2);
                }
                float f = NexageBanner.this.getActivity().getResources().getDisplayMetrics().density;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) ((bannerSize.getWidth() * f) + 0.5f), (int) ((f * bannerSize.getHeight()) + 0.5f));
                NexageBanner.this.bannerView.loadDataWithBaseURL(NexageBanner.this.currentUrl, "<html><head><style>body {width: 100%; height: 100%; padding:0; margin:0; display: table; } center {display: table-cell; vertical-align: middle;}</style></head><body><center>" + str5 + "</center></body></html>", null, AudienceNetworkActivity.WEBVIEW_ENCODING, NexageBanner.this.currentUrl);
                NexageBanner.this.bannerContainer.addView(NexageBanner.this.bannerView, layoutParams);
            }
        });
    }

    private String createUrl(String str, String str2, String str3) {
        Uri parse = Uri.parse(BASE_URL);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(parse.getScheme());
        builder.authority(parse.getAuthority());
        builder.path(parse.getPath());
        String property = System.getProperty("http.agent");
        builder.appendQueryParameter("dcn", str);
        builder.appendQueryParameter("pos", str2);
        builder.appendQueryParameter("ua", property);
        builder.appendQueryParameter(CommonConstants.REQUESTPARAM_IP, a.getIP());
        builder.appendQueryParameter("d(id24)", com.intentsoftware.addapptr.c.getGoogleAdvertisingIdString());
        builder.appendQueryParameter("grp", str3);
        return builder.build().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebViewClient createWebViewClient() {
        return new WebViewClient() { // from class: com.intentsoftware.addapptr.banners.NexageBanner.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (Uri.parse(str).getHost() != null) {
                    NexageBanner.this.notifyListenerThatAdWasClicked();
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    NexageBanner.this.getActivity().startActivity(intent);
                    return true;
                }
                return false;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (!NexageBanner.this.failed) {
                    NexageBanner.this.notifyListenerThatAdWasLoaded();
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (!NexageBanner.this.failed) {
                    NexageBanner.this.stopLoading();
                    NexageBanner.this.notifyListenerThatAdFailedToLoad("webview received error: " + ((Object) webResourceError.getDescription()));
                    NexageBanner.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (!NexageBanner.this.failed) {
                    NexageBanner.this.stopLoading();
                    NexageBanner.this.notifyListenerThatAdFailedToLoad("webview received HTTP error: " + webResourceResponse.getReasonPhrase());
                    NexageBanner.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.cancel();
                if (!NexageBanner.this.failed) {
                    NexageBanner.this.stopLoading();
                    NexageBanner.this.notifyListenerThatAdFailedToLoad("webview received SSL error: " + sslError.toString());
                    NexageBanner.this.failed = true;
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                if (!NexageBanner.this.failed) {
                    NexageBanner.this.stopLoading();
                    NexageBanner.this.notifyListenerThatAdFailedToLoad("webview received error: " + str);
                    NexageBanner.this.failed = true;
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerContainer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLoading() {
        if (this.htmlDownloader != null) {
            this.htmlDownloader.cancel(true);
            this.htmlDownloader = null;
        }
        if (this.bannerView != null) {
            this.bannerView.stopLoading();
            this.bannerView = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        stopLoading();
        this.bannerContainer = null;
    }
}
