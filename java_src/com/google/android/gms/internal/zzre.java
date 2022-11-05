package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
@zzme
@TargetApi(11)
/* loaded from: classes.dex */
public class zzre extends zzrg {
    public zzre(zzqw zzqwVar, boolean z) {
        super(zzqwVar, z);
    }

    @Override // com.google.android.gms.internal.zzqx, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zza(webView, str, (Map<String, String>) null);
    }
}
