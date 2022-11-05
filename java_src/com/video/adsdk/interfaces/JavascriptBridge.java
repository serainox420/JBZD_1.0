package com.video.adsdk.interfaces;

import android.webkit.WebView;
import com.video.adsdk.interfaces.VideoBridge;
/* loaded from: classes3.dex */
public interface JavascriptBridge {
    void addListener(JavascriptBridgeListener javascriptBridgeListener);

    void cancel();

    void clearView();

    void finalReturn(int i);

    WebView getWebView();

    void loadUrl(String str);

    void movieClick();

    void movieDidFinish(long j);

    void moviePulse(VideoBridge.MovieState movieState, long j);

    void movieStateDidChange(VideoBridge.MovieState movieState, long j);

    void prefetchingComplete();

    void removeListener(JavascriptBridgeListener javascriptBridgeListener);

    void setParam(String str, String str2);

    void troubleshoot(String str, int i);
}
