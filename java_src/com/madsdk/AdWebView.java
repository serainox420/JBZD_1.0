package com.madsdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import com.madsdk.javascript.JavascriptInterface;
import com.madsdk.javascript.MraidEventsListener;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
/* loaded from: classes2.dex */
public class AdWebView extends WebView {
    private static final String ENCODING = "UTF-8";
    private static final int MAX_CLICK_DURATION = 200;
    private static final String MIME_TYPE = "text/html";
    private long startClickTime;

    public AdWebView(Context context, MraidEventsListener mraidEventsListener, WebViewClient webViewClient) {
        super(context);
        init(mraidEventsListener, webViewClient);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void init(MraidEventsListener mraidEventsListener, WebViewClient webViewClient) {
        getSettings().setJavaScriptEnabled(true);
        JavascriptInterface javascriptInterface = new JavascriptInterface();
        javascriptInterface.setMraidEventsListener(mraidEventsListener);
        addJavascriptInterface(javascriptInterface, "jsInterface");
        setWebViewClient(webViewClient);
    }

    public void loadAd(String str) {
        String injectMraidJs = injectMraidJs(str);
        getSettings().setDefaultTextEncodingName(AudienceNetworkActivity.WEBVIEW_ENCODING);
        loadDataWithBaseURL(null, injectMraidJs, "text/html", "UTF-8", null);
    }

    private String injectMraidJs(String str) {
        String[] split;
        if (str.split("</head>").length > 1) {
            for (int i = 0; i < split.length - 1; i++) {
                str = split[i] + getMraidJs() + "</head>" + split[i + 1];
            }
        }
        return str;
    }

    private String getMraidJs() {
        try {
            InputStream openRawResource = getResources().openRawResource(R.raw.madsdkmraid);
            byte[] bArr = new byte[openRawResource.available()];
            openRawResource.read(bArr);
            openRawResource.close();
            return new String(bArr);
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.startClickTime = Calendar.getInstance().getTimeInMillis();
                break;
            case 1:
                if (Calendar.getInstance().getTimeInMillis() - this.startClickTime < 200) {
                    super.performClick();
                    break;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }
}
