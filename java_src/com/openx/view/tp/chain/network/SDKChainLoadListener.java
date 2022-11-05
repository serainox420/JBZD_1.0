package com.openx.view.tp.chain.network;

import com.openx.core.network.BaseResponseHandler;
import com.openx.errors.AdError;
import com.openx.view.tp.chain.parser.ChainResponse;
/* loaded from: classes3.dex */
public interface SDKChainLoadListener extends BaseResponseHandler {
    void onSDKChainLoadFail(AdError adError);

    void onSDKChainLoadNonCriticalError(AdError adError);

    void onSDKChainLoadSuccess(ChainResponse chainResponse);
}
