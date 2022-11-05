package com.video.adsdk.interfaces;

import android.webkit.JsResult;
/* loaded from: classes3.dex */
public interface JavascriptBridgeListener {
    void onDisplay();

    void onFinish(int i);

    void onOpenURLInBrowser(String str, boolean z);

    void onPageError(int i, String str, String str2);

    void onPageLoaded(String str);

    void onPageStartingLoad(String str);

    void onPageTimeOut(String str, String str2);

    void onPlayMovie(String str);

    void onPrefetchURL(String str, long j);

    void onSetBackgroundColor(int i);

    void onShowDialog(String str, JsResult jsResult);

    void onShowSkip();

    void onTrack(String str);
}
