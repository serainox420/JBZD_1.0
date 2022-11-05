package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.XIncentivizedEventListener;
/* loaded from: classes3.dex */
public abstract class InterstitialAdapter extends AdAdapter {
    protected InterstitialAdapterListener c;

    /* loaded from: classes3.dex */
    public interface InterstitialAdapterListener {
        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onClosed();

        void onExpired();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);

        void showFailed(InterstitialAd.InterstitialErrorStatus interstitialErrorStatus);

        void shown();
    }

    public abstract void init(Context context, InterstitialAdapterListener interstitialAdapterListener);

    public abstract void show(Context context, InterstitialAd.DisplayOptions displayOptions);
}
