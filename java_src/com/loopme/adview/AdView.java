package com.loopme.adview;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.loopme.adview.Bridge;
import com.loopme.common.Logging;
import com.loopme.constants.VideoState;
import com.loopme.constants.WebviewState;
/* loaded from: classes2.dex */
public class AdView extends WebView implements Bridge.Listener, BridgeInterface {
    public static final String DEFAULT_CHROME_USER_AGENT = "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36";
    private volatile Bridge mBridge;
    private Bridge.Listener mBridgeListener;
    private int mCurrentVideoState;
    private int mViewState;
    private static final String LOG_TAG = AdView.class.getSimpleName();
    public static final String CHROME_USER_AGENT = initUserAgent();

    public AdView(Context context) {
        super(context);
        this.mCurrentVideoState = 0;
        this.mViewState = 3;
        init();
    }

    private static String initUserAgent() {
        String property = System.getProperty("http.agent");
        if (TextUtils.isEmpty(property)) {
            return DEFAULT_CHROME_USER_AGENT;
        }
        return property;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        return false;
    }

    public void addBridgeListener(Bridge.Listener listener) {
        this.mBridgeListener = listener;
    }

    private void init() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        settings.setSupportZoom(false);
        settings.setUserAgentString(CHROME_USER_AGENT);
        setWebChromeClient(new AdViewChromeClient());
        this.mBridge = new Bridge(this);
        setWebViewClient(this.mBridge);
    }

    public int getCurrentVideoState() {
        return this.mCurrentVideoState;
    }

    @Override // com.loopme.adview.BridgeInterface
    public void setWebViewState(int i) {
        if (this.mViewState != i) {
            this.mViewState = i;
            Logging.out(LOG_TAG, "WEBVIEW : " + WebviewState.toString(i));
            loadUrl(new BridgeCommandBuilder().webviewState(this.mViewState));
        }
    }

    @Override // com.loopme.adview.BridgeInterface
    public void setFullscreenMode(boolean z) {
        loadUrl(new BridgeCommandBuilder().fullscreenMode(z));
    }

    public int getCurrentWebViewState() {
        return this.mViewState;
    }

    @Override // com.loopme.adview.BridgeInterface
    public void send360Event(String str) {
        loadUrl(new BridgeCommandBuilder().event360(str));
    }

    @Override // com.loopme.adview.BridgeInterface
    public void setVideoState(int i) {
        if (this.mCurrentVideoState != i) {
            this.mCurrentVideoState = i;
            Logging.out(LOG_TAG, "VIDEO : " + VideoState.toString(i));
            loadUrl(new BridgeCommandBuilder().videoState(i));
        }
    }

    @Override // com.loopme.adview.BridgeInterface
    public void setVideoDuration(int i) {
        loadUrl(new BridgeCommandBuilder().videoDuration(i));
    }

    @Override // com.loopme.adview.BridgeInterface
    public void setVideoCurrentTime(int i) {
        loadUrl(new BridgeCommandBuilder().videoCurrentTime(i));
    }

    @Override // com.loopme.adview.BridgeInterface
    public void setVideoMute(boolean z) {
        Logging.out(LOG_TAG, "MUTE : " + z);
        loadUrl(new BridgeCommandBuilder().videoMute(z));
    }

    public void shake() {
        Logging.out(LOG_TAG, "SHAKE");
        loadUrl(new BridgeCommandBuilder().shake(true));
    }

    @Override // com.loopme.adview.BridgeInterface
    public void sendNativeCallFinished() {
        loadUrl(new BridgeCommandBuilder().isNativeCallFinished(true));
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsClose() {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsClose();
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsLoadSuccess() {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsLoadSuccess();
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsLoadFail(String str) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsLoadFail(str);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsFullscreenMode(boolean z) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsFullscreenMode(z);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onNonLoopMe(String str) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onNonLoopMe(str);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsVideoLoad(String str) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsVideoLoad(str);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsVideoMute(boolean z) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsVideoMute(z);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsVideoPlay(int i) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsVideoPlay(i);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsVideoPause(int i) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsVideoPause(i);
        }
    }

    @Override // com.loopme.adview.Bridge.Listener
    public void onJsVideoStretch(boolean z) {
        if (this.mBridgeListener != null) {
            this.mBridgeListener.onJsVideoStretch(z);
        }
    }
}
