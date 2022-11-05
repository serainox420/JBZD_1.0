package com.openx.view.mraid.network;

import com.openx.core.network.BaseResponseHandler;
/* loaded from: classes3.dex */
public interface RedirectURLListener extends BaseResponseHandler {
    void onFailed();

    void onSuccess(String str, String str2);
}
