package com.loopme.common;

import android.os.CountDownTimer;
/* loaded from: classes2.dex */
public class ExpirationTimer extends CountDownTimer {
    private static final String LOG_TAG = ExpirationTimer.class.getSimpleName();
    private Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onExpired();
    }

    public ExpirationTimer(long j, Listener listener) {
        super(j, 60000L);
        if (listener == null) {
            Logging.out(LOG_TAG, "Listener should not be null");
        }
        Logging.out(LOG_TAG, "Start schedule expiration");
        this.mListener = listener;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        if (this.mListener != null) {
            this.mListener.onExpired();
        }
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
    }
}
