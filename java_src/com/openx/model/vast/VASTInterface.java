package com.openx.model.vast;
/* loaded from: classes3.dex */
public interface VASTInterface {
    void close();

    void closeLinear();

    void collapse();

    void exitFullScreen();

    void expand();

    void fullScreen();

    void mute();

    void onWindowFocusChanged(boolean z);

    void orientationChanged(int i);

    void pause();

    void resume();

    void rewind();

    void skip();

    void start();

    void touch();

    void unmute();
}
