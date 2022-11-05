package com.mopub.network;

import com.mopub.common.VisibleForTesting;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;
/* loaded from: classes3.dex */
public class ScribeBackoffPolicy extends BackoffPolicy {
    public ScribeBackoffPolicy() {
        this(60000, 5, 2);
    }

    @VisibleForTesting
    ScribeBackoffPolicy(int i, int i2, int i3) {
        this.c = i;
        this.e = i2;
        this.b = i3;
    }

    @Override // com.mopub.network.BackoffPolicy
    public void backoff(VolleyError volleyError) throws VolleyError {
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
        if (volleyError instanceof NoConnectionError) {
            a();
            return;
        }
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (networkResponse != null && (networkResponse.statusCode == 503 || networkResponse.statusCode == 504)) {
            a();
            return;
        }
        throw volleyError;
    }

    private void a() {
        this.f4649a = (int) (Math.pow(this.b, this.d) * this.c);
        this.d++;
    }
}
