package com.loopme;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.loopme.adview.AdView;
import com.loopme.constants.StretchOption;
/* loaded from: classes2.dex */
public interface IViewController {
    void buildVideoAdView(Context context, ViewGroup viewGroup, AdView adView);

    boolean handleTouchEvent(MotionEvent motionEvent);

    void initVRLibrary(Context context);

    void onDestroy();

    void onPause();

    void onResume();

    void rebuildView(ViewGroup viewGroup, AdView adView);

    void setStretchParam(StretchOption stretchOption);

    void setVideoSize(int i, int i2);

    void setViewSize(int i, int i2);
}
