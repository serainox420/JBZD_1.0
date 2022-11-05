package com.google.android.gms.ads.mediation.customevent;
/* loaded from: classes2.dex */
public interface CustomEventListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i);

    void onAdLeftApplication();

    void onAdOpened();
}
