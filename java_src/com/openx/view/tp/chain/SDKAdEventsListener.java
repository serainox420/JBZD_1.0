package com.openx.view.tp.chain;

import com.openx.errors.AdError;
/* loaded from: classes3.dex */
public interface SDKAdEventsListener {
    void onAdClicked(SDK sdk);

    void onAdClosed(SDK sdk);

    void onAdDidLoad(SDK sdk, Object obj);

    void onAdFailedToLoad(SDK sdk, AdError adError);
}
