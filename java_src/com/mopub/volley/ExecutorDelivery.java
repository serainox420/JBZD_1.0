package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f4673a;

    public ExecutorDelivery(final Handler handler) {
        this.f4673a = new Executor() { // from class: com.mopub.volley.ExecutorDelivery.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public ExecutorDelivery(Executor executor) {
        this.f4673a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f4673a.execute(new a(request, response, runnable));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f4673a.execute(new a(request, Response.error(volleyError), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        private final Request b;
        private final Response c;
        private final Runnable d;

        public a(Request request, Response response, Runnable runnable) {
            this.b = request;
            this.c = response;
            this.d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.b.isCanceled()) {
                this.b.b("canceled-at-delivery");
                return;
            }
            if (this.c.isSuccess()) {
                this.b.deliverResponse(this.c.result);
            } else {
                this.b.deliverError(this.c.error);
            }
            if (this.c.intermediate) {
                this.b.addMarker("intermediate-response");
            } else {
                this.b.b("done");
            }
            if (this.d != null) {
                this.d.run();
            }
        }
    }
}
