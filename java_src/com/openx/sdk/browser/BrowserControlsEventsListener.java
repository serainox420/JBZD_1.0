package com.openx.sdk.browser;
/* loaded from: classes3.dex */
public interface BrowserControlsEventsListener {
    boolean canGoBack();

    boolean canGoForward();

    void closeBrowser();

    String getCurrentURL();

    void onGoBack();

    void onGoForward();

    void onRelaod();

    void setCreatorOfView(Object obj);
}
