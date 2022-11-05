package com.loopme.common;

import android.os.CountDownTimer;
/* loaded from: classes2.dex */
public class AdFetcherTimer extends CountDownTimer {
    private static final String LOG_TAG = AdFetcherTimer.class.getSimpleName();
    private Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onTimeout();
    }

    public AdFetcherTimer(long j, Listener listener) {
        super(j, 60000L);
        this.mListener = listener;
        Logging.out(LOG_TAG, "Start fetcher timeout");
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        if (this.mListener != null) {
            this.mListener.onTimeout();
        }
    }
}
