package com.mdotm.android.listener;
/* loaded from: classes3.dex */
public interface InterstitialActionListener {
    void loadPendingCompanion();

    void onClick();

    void onDismiss();

    void onFailed();

    void onLeave();

    void onRewardedVideoComplete(boolean z, String str);
}
