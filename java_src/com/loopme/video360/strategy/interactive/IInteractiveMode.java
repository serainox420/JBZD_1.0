package com.loopme.video360.strategy.interactive;

import android.content.Context;
import android.view.MotionEvent;
/* loaded from: classes2.dex */
public interface IInteractiveMode {
    boolean handleTouchEvent(MotionEvent motionEvent);

    void onPause(Context context);

    void onResume(Context context);
}
