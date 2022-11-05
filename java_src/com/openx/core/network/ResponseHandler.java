package com.openx.core.network;

import com.openx.core.network.BaseNetworkTask;
/* loaded from: classes3.dex */
public interface ResponseHandler extends BaseResponseHandler {
    void processError(String str);

    void processError(String str, Throwable th);

    void processResponse(BaseNetworkTask.GetUrlResult getUrlResult);
}
