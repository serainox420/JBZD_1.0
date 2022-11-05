package com.loopme.adview;
/* loaded from: classes2.dex */
public interface BridgeInterface {
    void send360Event(String str);

    void sendNativeCallFinished();

    void setFullscreenMode(boolean z);

    void setVideoCurrentTime(int i);

    void setVideoDuration(int i);

    void setVideoMute(boolean z);

    void setVideoState(int i);

    void setWebViewState(int i);
}
