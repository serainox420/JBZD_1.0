package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes3.dex */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a  reason: collision with root package name */
    protected Request<?> f4662a;
    protected T b;
    protected BackoffPolicy c;
    protected Handler d;

    /* loaded from: classes3.dex */
    public interface RequestFactory {
    }

    abstract Request<?> a();

    public RequestManager(Looper looper) {
        this.d = new Handler(looper);
    }

    public boolean isAtCapacity() {
        return this.f4662a != null;
    }

    public void makeRequest(T t, BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.b = t;
        this.c = backoffPolicy;
        b();
    }

    public void cancelRequest() {
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue != null && this.f4662a != null) {
            requestQueue.cancel(this.f4662a);
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public void b() {
        this.f4662a = a();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.d("MoPubRequest queue is null. Clearing request.");
            c();
        } else if (this.c.getRetryCount() == 0) {
            requestQueue.add(this.f4662a);
        } else {
            requestQueue.addDelayedRequest(this.f4662a, this.c.getBackoffMs());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public void c() {
        this.f4662a = null;
        this.b = null;
        this.c = null;
    }
}
