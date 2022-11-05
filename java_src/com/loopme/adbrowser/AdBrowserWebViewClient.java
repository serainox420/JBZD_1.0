package com.loopme.adbrowser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import com.loopme.common.Logging;
import com.loopme.debugging.ErrorLog;
import java.net.URISyntaxException;
/* loaded from: classes2.dex */
public class AdBrowserWebViewClient extends WebViewClient {
    private static final String GEO_HOST = "maps.google.com";
    private static final String GEO_SCHEME = "geo";
    private static final String HEADER_PLAIN_TEXT = "plain/text";
    private static final String HTTPS_SCHEME = "https";
    private static final String HTTP_SCHEME = "http";
    private static final String INTENT_SCHEME = "intent";
    private static final String LOG_TAG = AdBrowserWebViewClient.class.getSimpleName();
    private static final String MAILTO_SCHEME = "mailto";
    private static final String MARKET_HOST = "play.google.com";
    private static final String MARKET_SCHEME = "market";
    public static final String PLAY_STORE_URL = "https://play.google.com/store/apps/details?id=";
    private static final String TEL_SCHEME = "tel";
    private static final String YOUTUBE_HOST1 = "www.youtube.com";
    private static final String YOUTUBE_HOST2 = "m.youtube.com";
    private static final String YOUTUBE_SCHEME = "vnd.youtube";
    private Listener mEmptyListener = new Listener() { // from class: com.loopme.adbrowser.AdBrowserWebViewClient.1
        @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
        public void onPageStarted() {
        }

        @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
        public void onPageFinished(boolean z) {
        }

        @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
        public void onReceiveError() {
        }

        @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
        public void onLeaveApp() {
        }
    };
    private Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onLeaveApp();

        void onPageFinished(boolean z);

        void onPageStarted();

        void onReceiveError();
    }

    public AdBrowserWebViewClient(Listener listener) {
        if (listener == null) {
            Logging.out(LOG_TAG, "Error: Wrong listener");
            this.mListener = this.mEmptyListener;
            return;
        }
        this.mListener = listener;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Logging.out(LOG_TAG, "shouldOverrideUrlLoading url=" + str);
        Context context = webView.getContext();
        try {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                return false;
            }
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if (TextUtils.isEmpty(scheme)) {
                ErrorLog.post("Wrong redirect (" + str + ")", "js");
                return false;
            }
            if (scheme.equalsIgnoreCase("tel")) {
                resolveAndStartActivity(new Intent("android.intent.action.DIAL", parse), context);
            } else if (scheme.equalsIgnoreCase("mailto")) {
                String trim = str.replaceFirst("mailto:", "").trim();
                Intent intent = new Intent("android.intent.action.SEND", parse);
                intent.setType(HEADER_PLAIN_TEXT).putExtra("android.intent.extra.EMAIL", new String[]{trim});
                resolveAndStartActivity(intent, context);
            } else if (scheme.equalsIgnoreCase("geo")) {
                resolveAndStartActivity(new Intent("android.intent.action.VIEW", parse), context);
            } else if (scheme.equalsIgnoreCase(YOUTUBE_SCHEME)) {
                leaveApp(str, context);
            } else if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https")) {
                return checkHost(str, host, context);
            } else {
                if (scheme.equalsIgnoreCase("intent")) {
                    handleIntentScheme(str, context);
                } else if (!scheme.equalsIgnoreCase(MARKET_SCHEME)) {
                    return true;
                } else {
                    handleMarketScheme(str, context);
                }
            }
            return true;
        } catch (NullPointerException e) {
            e.printStackTrace();
            ErrorLog.post("Wrong redirect (" + str + ")", "js");
            return false;
        }
    }

    private boolean checkHost(String str, String str2, Context context) {
        if (str2.equalsIgnoreCase(GEO_HOST)) {
            resolveAndStartActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), context);
        } else if (str2.equalsIgnoreCase(MARKET_HOST) || str2.equalsIgnoreCase(YOUTUBE_HOST1) || str2.equalsIgnoreCase(YOUTUBE_HOST2)) {
            leaveApp(str, context);
        } else {
            return false;
        }
        return true;
    }

    private void handleMarketScheme(String str, Context context) {
        try {
            Intent parseUri = Intent.parseUri(str, 0);
            parseUri.addFlags(DriveFile.MODE_READ_ONLY);
            if (isActivityResolved(parseUri, context)) {
                context.startActivity(parseUri);
            } else {
                str = PLAY_STORE_URL + Uri.parse(str).getQueryParameter("id");
                leaveApp(str, context);
            }
        } catch (Exception e) {
            this.mListener.onReceiveError();
            ErrorLog.post("Wrong redirect (" + str + ")", "js");
        }
    }

    private void handleIntentScheme(String str, Context context) {
        try {
            Intent parseUri = Intent.parseUri(str, 1);
            parseUri.addFlags(DriveFile.MODE_READ_ONLY);
            if (isActivityResolved(parseUri, context)) {
                context.startActivity(parseUri);
            } else {
                str = PLAY_STORE_URL + parseUri.getPackage();
                leaveApp(str, context);
            }
        } catch (URISyntaxException e) {
            this.mListener.onReceiveError();
            ErrorLog.post("Wrong redirect (" + str + ")", "js");
        }
    }

    private void leaveApp(String str, Context context) {
        resolveAndStartActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), context);
        this.mListener.onLeaveApp();
    }

    private void resolveAndStartActivity(Intent intent, Context context) {
        if (isActivityResolved(intent, context)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
            return;
        }
        this.mListener.onReceiveError();
    }

    private boolean isActivityResolved(Intent intent, Context context) {
        return context.getPackageManager().resolveActivity(intent, 65536) != null;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.mListener.onPageStarted();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.mListener.onPageFinished(webView.canGoBack());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        Logging.out(LOG_TAG, "onReceivedError: " + str);
        this.mListener.onReceiveError();
        ErrorLog.post("Wrong redirect " + str2 + " (" + str + ")", "js");
    }
}
