package com.facebook.ads.internal.view.d.c;

import android.net.Uri;
import android.view.View;
/* loaded from: classes.dex */
public interface c {
    void a();

    void a(boolean z);

    void b();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    d getState();

    d getTargetState();

    View getView();

    float getVolume();

    void pause();

    void seekTo(int i);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(e eVar);

    void setup(Uri uri);

    void start();
}
