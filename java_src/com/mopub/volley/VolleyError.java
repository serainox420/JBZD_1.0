package com.mopub.volley;
/* loaded from: classes3.dex */
public class VolleyError extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private long f4682a;
    public final NetworkResponse networkResponse;

    public VolleyError() {
        this.networkResponse = null;
    }

    public VolleyError(NetworkResponse networkResponse) {
        this.networkResponse = networkResponse;
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th) {
        super(str, th);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.networkResponse = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.f4682a = j;
    }

    public long getNetworkTimeMs() {
        return this.f4682a;
    }
}
