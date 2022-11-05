package com.openx.view;
/* loaded from: classes3.dex */
public interface AdResponseHandler {
    void processError(String str);

    void processError(String str, Throwable th);

    void processResponse(String str);
}
