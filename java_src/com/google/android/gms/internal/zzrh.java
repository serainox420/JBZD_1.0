package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@zzme
@TargetApi(21)
/* loaded from: classes.dex */
public class zzrh extends zzrg {
    public zzrh(zzqw zzqwVar, boolean z) {
        super(zzqwVar, z);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return zza(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
