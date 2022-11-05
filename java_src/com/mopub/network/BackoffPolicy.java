package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes3.dex */
public abstract class BackoffPolicy {

    /* renamed from: a  reason: collision with root package name */
    protected int f4649a;
    protected int b;
    protected int c;
    protected int d;
    protected int e;

    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return this.f4649a;
    }

    public int getRetryCount() {
        return this.d;
    }

    public boolean hasAttemptRemaining() {
        return this.d < this.e;
    }
}
