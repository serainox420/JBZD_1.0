package com.mopub.volley;
/* loaded from: classes3.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a  reason: collision with root package name */
    private int f4672a;
    private int b;
    private final int c;
    private final float d;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.f4672a = i;
        this.c = i2;
        this.d = f;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f4672a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.b;
    }

    public float getBackoffMultiplier() {
        return this.d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.b++;
        this.f4672a = (int) (this.f4672a + (this.f4672a * this.d));
        if (!a()) {
            throw volleyError;
        }
    }

    protected boolean a() {
        return this.b <= this.c;
    }
}
