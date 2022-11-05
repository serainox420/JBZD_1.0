package com.loopme.common;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes2.dex */
public class SwipeListener implements View.OnTouchListener {
    private float initialX;
    private Listener mListener;
    private int mViewWidth;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onSwipe(boolean z);
    }

    public SwipeListener(int i, Listener listener) {
        this.mViewWidth = i;
        this.mListener = listener;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.initialX = motionEvent.getX();
                break;
            case 1:
                float x = motionEvent.getX();
                if (this.initialX < x) {
                    float f = x - this.initialX;
                    if (this.mListener != null && f > this.mViewWidth / 2) {
                        this.mListener.onSwipe(true);
                    }
                }
                if (this.initialX > x) {
                    float f2 = this.initialX - x;
                    if (this.mListener != null && f2 > this.mViewWidth / 2) {
                        this.mListener.onSwipe(false);
                        break;
                    }
                }
                break;
            case 2:
                return true;
        }
        return false;
    }
}
