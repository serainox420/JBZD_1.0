package com.loopme.adview;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Vibrator;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.loopme.common.Logging;
import com.loopme.debugging.ErrorLog;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.net.URI;
import java.net.URISyntaxException;
/* loaded from: classes2.dex */
public class Bridge extends WebViewClient {
    private static final String LOG_TAG = Bridge.class.getSimpleName();
    private static final String LOOPME = "loopme";
    private static final String QUERY_PARAM_CURRENT_TIME = "currentTime";
    private static final String QUERY_PARAM_FULLSCREEN_MODE = "mode";
    private static final String QUERY_PARAM_MUTE = "mute";
    private static final String QUERY_PARAM_SRC = "src";
    private static final String VIDEO = "video";
    private static final String VIDEO_DISABLE_STRETCH = "/disableStretching";
    private static final String VIDEO_ENABLE_STRETCH = "/enableStretching";
    private static final String VIDEO_LOAD = "/load";
    private static final String VIDEO_MUTE = "/mute";
    private static final String VIDEO_PAUSE = "/pause";
    private static final String VIDEO_PLAY = "/play";
    private static final String WEBVIEW = "webview";
    private static final String WEBVIEW_CLOSE = "/close";
    private static final String WEBVIEW_FAIL = "/fail";
    private static final String WEBVIEW_FULLSCREEN = "/fullscreenMode";
    private static final String WEBVIEW_SUCCESS = "/success";
    private static final String WEBVIEW_VIBRATE = "/vibrate";
    private Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onJsClose();

        void onJsFullscreenMode(boolean z);

        void onJsLoadFail(String str);

        void onJsLoadSuccess();

        void onJsVideoLoad(String str);

        void onJsVideoMute(boolean z);

        void onJsVideoPause(int i);

        void onJsVideoPlay(int i);

        void onJsVideoStretch(boolean z);

        void onNonLoopMe(String str);
    }

    public Bridge(Listener listener) {
        if (listener != null) {
            this.mListener = listener;
        } else {
            Logging.out(LOG_TAG, "VideoBridgeListener should not be null");
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Logging.out(LOG_TAG, "shouldOverrideUrlLoading " + str);
        if (TextUtils.isEmpty(str)) {
            ErrorLog.post("Broken redirect in bridge: " + str, "js");
            return false;
        }
        Context context = webView.getContext();
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            if (TextUtils.isEmpty(scheme)) {
                return false;
            }
            if (scheme.equalsIgnoreCase("loopme")) {
                ((AdView) webView).sendNativeCallFinished();
                String host = uri.getHost();
                String path = uri.getPath();
                if (TextUtils.isEmpty(host) || TextUtils.isEmpty(path)) {
                    return false;
                }
                if (host.equalsIgnoreCase(WEBVIEW)) {
                    handleWebviewCommands(path, str, context);
                } else if (host.equalsIgnoreCase("video")) {
                    handleVideoCommands(path, str);
                }
            } else if (this.mListener != null) {
                this.mListener.onNonLoopMe(str);
            }
            return true;
        } catch (URISyntaxException e) {
            Logging.out(LOG_TAG, e.getMessage());
            e.printStackTrace();
            ErrorLog.post("Broken redirect in bridge: " + str, "js");
            return false;
        }
    }

    private void handleWebviewCommands(String str, String str2, Context context) {
        if (str != null && this.mListener != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1559462668:
                    if (str.equals(WEBVIEW_SUCCESS)) {
                        c = 3;
                        break;
                    }
                    break;
                case 46540749:
                    if (str.equals(WEBVIEW_FAIL)) {
                        c = 2;
                        break;
                    }
                    break;
                case 759018080:
                    if (str.equals(WEBVIEW_VIBRATE)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1440326441:
                    if (str.equals(WEBVIEW_CLOSE)) {
                        c = 0;
                        break;
                    }
                    break;
                case 1980913133:
                    if (str.equals(WEBVIEW_FULLSCREEN)) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.mListener.onJsClose();
                    return;
                case 1:
                    handleVibrate(context);
                    return;
                case 2:
                    this.mListener.onJsLoadFail("Ad received specific URL loopme://webview/fail");
                    return;
                case 3:
                    this.mListener.onJsLoadSuccess();
                    return;
                case 4:
                    handleFullscreenMode(str2);
                    return;
                default:
                    return;
            }
        }
    }

    private void handleFullscreenMode(String str) {
        try {
            String detectQueryParameter = detectQueryParameter(Uri.parse(str), QUERY_PARAM_FULLSCREEN_MODE);
            if (!isValidBooleanParameter(detectQueryParameter)) {
                ErrorLog.post("Empty parameter in js command: fullscreen mode", "js");
            } else {
                this.mListener.onJsFullscreenMode(Boolean.parseBoolean(detectQueryParameter));
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        } catch (UnsupportedOperationException e2) {
            e2.printStackTrace();
        }
    }

    private boolean isValidBooleanParameter(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equalsIgnoreCase("true") || str.equalsIgnoreCase(Consts.False);
    }

    private void handleVibrate(Context context) {
        try {
            Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
            if (vibrator != null) {
                vibrator.vibrate(500L);
            }
        } catch (Exception e) {
            Logging.out(LOG_TAG, "Missing permission for vibrate");
        }
    }

    private void handleVideoCommands(String str, String str2) {
        int i = 0;
        if (str != null && this.mListener != null) {
            try {
                Uri parse = Uri.parse(str2);
                char c = 65535;
                switch (str.hashCode()) {
                    case -1713007921:
                        if (str.equals(VIDEO_ENABLE_STRETCH)) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1419143306:
                        if (str.equals(VIDEO_DISABLE_STRETCH)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 46732693:
                        if (str.equals(VIDEO_LOAD)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 46768840:
                        if (str.equals(VIDEO_MUTE)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 46848995:
                        if (str.equals(VIDEO_PLAY)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1452010279:
                        if (str.equals(VIDEO_PAUSE)) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        String detectQueryParameter = detectQueryParameter(parse, "src");
                        if (!TextUtils.isEmpty(detectQueryParameter)) {
                            this.mListener.onJsVideoLoad(detectQueryParameter);
                            return;
                        } else {
                            ErrorLog.post("Empty parameter in js command: src", "js");
                            return;
                        }
                    case 1:
                        String detectQueryParameter2 = detectQueryParameter(parse, "mute");
                        if (isValidBooleanParameter(detectQueryParameter2)) {
                            this.mListener.onJsVideoMute(Boolean.parseBoolean(detectQueryParameter2));
                            return;
                        } else {
                            ErrorLog.post("Empty parameter in js command: mute", "js");
                            return;
                        }
                    case 2:
                        String detectQueryParameter3 = detectQueryParameter(parse, QUERY_PARAM_CURRENT_TIME);
                        if (detectQueryParameter3 != null) {
                            i = Integer.parseInt(detectQueryParameter3);
                        }
                        this.mListener.onJsVideoPlay(i);
                        return;
                    case 3:
                        String detectQueryParameter4 = detectQueryParameter(parse, QUERY_PARAM_CURRENT_TIME);
                        if (detectQueryParameter4 != null) {
                            i = Integer.parseInt(detectQueryParameter4);
                        }
                        this.mListener.onJsVideoPause(i);
                        return;
                    case 4:
                        this.mListener.onJsVideoStretch(true);
                        return;
                    case 5:
                        this.mListener.onJsVideoStretch(false);
                        return;
                    default:
                        return;
                }
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    private String detectQueryParameter(Uri uri, String str) {
        try {
            return uri.getQueryParameter(str);
        } catch (NullPointerException e) {
            e.printStackTrace();
            return null;
        } catch (UnsupportedOperationException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (this.mListener != null) {
            this.mListener.onJsLoadFail("onReceivedError " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        Logging.out(LOG_TAG, "onPageStarted");
        super.onPageStarted(webView, str, bitmap);
    }
}
