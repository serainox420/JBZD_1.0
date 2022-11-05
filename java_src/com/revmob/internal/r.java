package com.revmob.internal;

import android.content.Context;
import android.os.Build;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
/* loaded from: classes3.dex */
public class r extends WebView {
    public r(Context context, s sVar) {
        this(context, null, null, sVar);
    }

    public r(Context context, String str, String str2, WebViewClient webViewClient) {
        super(context);
        setScrollContainer(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setLoadsImagesAutomatically(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        setBackgroundColor(0);
        getSettings().setSaveFormData(false);
        getSettings().setSavePassword(false);
        getSettings().setAllowFileAccess(false);
        if (Build.VERSION.SDK_INT >= 11) {
            getSettings().setAllowContentAccess(false);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(false);
            getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
        if (webViewClient != null) {
            setWebViewClient(webViewClient);
        }
        setWebChromeClient(new WebChromeClient());
        if (str2 != null && !str2.equals("")) {
            loadDataWithBaseURL(null, str2, "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        } else if (str == null) {
        } else {
            loadUrl(str);
        }
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str.length() + 100);
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case '#':
                    sb.append("%23");
                    break;
                case '$':
                case '&':
                default:
                    sb.append(charAt);
                    break;
                case '%':
                    sb.append("%25");
                    break;
                case '\'':
                    sb.append("%27");
                    break;
            }
        }
        super.loadData(sb.toString(), str2, str3);
    }
}
