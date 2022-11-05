package com.mopub.common;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import java.util.EnumSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BrowserWebViewClient.java */
/* loaded from: classes3.dex */
public class a extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumSet<UrlAction> f4359a = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
    private MoPubBrowser b;

    public a(MoPubBrowser moPubBrowser) {
        this.b = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        MoPubLog.d("MoPubBrowser error: " + str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new UrlHandler.Builder().withSupportedUrlActions(f4359a).withoutMoPubBrowser().withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.common.a.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                    a.this.b.getWebView().loadUrl(str2);
                } else {
                    a.this.b.finish();
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(String str2, UrlAction urlAction) {
            }
        }).build().handleResolvedUrl(this.b.getApplicationContext(), str, true, null);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.b.getForwardButton().setImageDrawable(Drawables.UNRIGHT_ARROW.createDrawable(this.b));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.b.getBackButton().setImageDrawable(webView.canGoBack() ? Drawables.LEFT_ARROW.createDrawable(this.b) : Drawables.UNLEFT_ARROW.createDrawable(this.b));
        this.b.getForwardButton().setImageDrawable(webView.canGoForward() ? Drawables.RIGHT_ARROW.createDrawable(this.b) : Drawables.UNRIGHT_ARROW.createDrawable(this.b));
    }
}
