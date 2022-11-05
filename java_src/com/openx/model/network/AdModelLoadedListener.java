package com.openx.model.network;

import com.openx.core.network.BaseResponseHandler;
import com.openx.errors.AdError;
import com.openx.model.AdGroup;
/* loaded from: classes3.dex */
public interface AdModelLoadedListener extends BaseResponseHandler {
    void adModelLoadAdFail(AdError adError);

    void adModelLoadAdSuccess(AdGroup adGroup);

    void adModelNonCriticalError(AdError adError);
}
