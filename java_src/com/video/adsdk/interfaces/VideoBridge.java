package com.video.adsdk.interfaces;

import android.view.View;
/* loaded from: classes3.dex */
public interface VideoBridge {

    /* loaded from: classes3.dex */
    public enum MovieState {
        MOVIESTATE_INITIALIZED,
        MOVIESTATE_BUFFERING,
        MOVIESTATE_PLAYING_NO_SKIP,
        MOVIESTATE_PLAYING_SKIP,
        MOVIESTATE_PAUSED,
        MOVIESTATE_COMPLETED,
        MOVIESTATE_STARTED,
        MOVIESTATE_RESUMED,
        MOVIESTATE_STOPPED_BY_USER
    }

    void addListener(VideoBridgeListener videoBridgeListener);

    MovieState getCurrentMovieState();

    int getCurrentSecond();

    boolean isClosableByUI();

    void pause();

    void play();

    void removeListener(VideoBridgeListener videoBridgeListener);

    void removeWebView();

    void setBackgroundColor(int i);

    void setFileDownloader(FileDownloader fileDownloader);

    void setUrl(String str);

    void setWebview(View view);

    void showSkip();

    void shutdown();

    void stop();
}
