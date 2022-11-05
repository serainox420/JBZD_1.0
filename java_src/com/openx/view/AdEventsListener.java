package com.openx.view;

import com.openx.core.network.BaseResponseHandler;
import com.openx.errors.AdError;
/* loaded from: classes3.dex */
public interface AdEventsListener extends BaseResponseHandler {
    void onAdClicked();

    void onAdClosed();

    void onAdDidLoad();

    void onAdFailedToLoad(AdError adError);
}
