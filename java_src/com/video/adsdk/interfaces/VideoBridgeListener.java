package com.video.adsdk.interfaces;

import com.video.adsdk.interfaces.VideoBridge;
/* loaded from: classes3.dex */
public interface VideoBridgeListener {
    void onSkipButtonClicked();

    void onVideoIsComplete();

    void onVideoIsReadyToPlay(VideoBridge.MovieState movieState, int i);

    void onVideoPlaybackError(int i, int i2);

    void onVideoReportsCurrentState(VideoBridge.MovieState movieState, long j);
}
