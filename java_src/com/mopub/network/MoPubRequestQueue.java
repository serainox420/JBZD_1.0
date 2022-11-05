package com.mopub.network;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
public class MoPubRequestQueue extends RequestQueue {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Request<?>, a> f4654a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
        this.f4654a = new HashMap(10);
    }

    public void addDelayedRequest(Request<?> request, int i) {
        Preconditions.checkNotNull(request);
        a(request, new a(this, request, i));
    }

    @VisibleForTesting
    void a(Request<?> request, a aVar) {
        Preconditions.checkNotNull(aVar);
        if (this.f4654a.containsKey(request)) {
            cancel(request);
        }
        aVar.a();
        this.f4654a.put(request, aVar);
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(RequestQueue.RequestFilter requestFilter) {
        Preconditions.checkNotNull(requestFilter);
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, a>> it = this.f4654a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, a> next = it.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().b();
                it.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(final Object obj) {
        Preconditions.checkNotNull(obj);
        super.cancelAll(obj);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.1
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == obj;
            }
        });
    }

    public void cancel(final Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.2
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request2) {
                return request == request2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final int f4657a;
        final Handler b;
        final Runnable c;

        a(MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
            this(request, i, new Handler());
        }

        @VisibleForTesting
        a(final Request<?> request, int i, Handler handler) {
            this.f4657a = i;
            this.b = handler;
            this.c = new Runnable() { // from class: com.mopub.network.MoPubRequestQueue.a.1
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRequestQueue.this.f4654a.remove(request);
                    MoPubRequestQueue.this.add(request);
                }
            };
        }

        void a() {
            this.b.postDelayed(this.c, this.f4657a);
        }

        void b() {
            this.b.removeCallbacks(this.c);
        }
    }
}
