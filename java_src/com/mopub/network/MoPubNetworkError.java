package com.mopub.network;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
/* loaded from: classes3.dex */
public class MoPubNetworkError extends VolleyError {

    /* renamed from: a  reason: collision with root package name */
    private final Reason f4652a;
    private final Integer b;

    /* loaded from: classes3.dex */
    public enum Reason {
        WARMING_UP,
        NO_FILL,
        BAD_HEADER_DATA,
        BAD_BODY,
        TRACKING_FAILURE,
        UNSPECIFIED
    }

    public MoPubNetworkError(Reason reason) {
        this.f4652a = reason;
        this.b = null;
    }

    public MoPubNetworkError(NetworkResponse networkResponse, Reason reason) {
        super(networkResponse);
        this.f4652a = reason;
        this.b = null;
    }

    public MoPubNetworkError(Throwable th, Reason reason) {
        super(th);
        this.f4652a = reason;
        this.b = null;
    }

    public MoPubNetworkError(String str, Reason reason) {
        this(str, reason, (Integer) null);
    }

    public MoPubNetworkError(String str, Throwable th, Reason reason) {
        super(str, th);
        this.f4652a = reason;
        this.b = null;
    }

    public MoPubNetworkError(String str, Reason reason, Integer num) {
        super(str);
        this.f4652a = reason;
        this.b = num;
    }

    public Reason getReason() {
        return this.f4652a;
    }

    public Integer getRefreshTimeMillis() {
        return this.b;
    }
}
