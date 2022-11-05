package com.mopub.volley;
/* loaded from: classes3.dex */
public interface RetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError) throws VolleyError;
}
