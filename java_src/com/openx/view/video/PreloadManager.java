package com.openx.view.video;

import com.openx.view.WebViewBase;
/* loaded from: classes3.dex */
public class PreloadManager {

    /* loaded from: classes3.dex */
    public interface PreloadedListener {
        void preloaded(WebViewBase webViewBase);

        void stoppedLoading();

        void timedOut(WebViewBase webViewBase);
    }
}
