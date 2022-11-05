package com.mopub.volley.toolbox;

import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3.dex */
public class RequestFuture<T> implements Response.ErrorListener, Response.Listener<T>, Future<T> {

    /* renamed from: a  reason: collision with root package name */
    private Request<?> f4705a;
    private boolean b = false;
    private T c;
    private VolleyError d;

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    private RequestFuture() {
    }

    public void setRequest(Request<?> request) {
        this.f4705a = request;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean z) {
        boolean z2 = false;
        synchronized (this) {
            if (this.f4705a != null && !isDone()) {
                this.f4705a.cancel();
                z2 = true;
            }
        }
        return z2;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        try {
            return a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    private synchronized T a(Long l) throws InterruptedException, ExecutionException, TimeoutException {
        T t;
        if (this.d != null) {
            throw new ExecutionException(this.d);
        }
        if (this.b) {
            t = this.c;
        } else {
            if (l == null) {
                wait(0L);
            } else if (l.longValue() > 0) {
                wait(l.longValue());
            }
            if (this.d != null) {
                throw new ExecutionException(this.d);
            }
            if (!this.b) {
                throw new TimeoutException();
            }
            t = this.c;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        if (this.f4705a == null) {
            return false;
        }
        return this.f4705a.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z;
        if (!this.b && this.d == null) {
            if (!isCancelled()) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    @Override // com.mopub.volley.Response.Listener
    public synchronized void onResponse(T t) {
        this.b = true;
        this.c = t;
        notifyAll();
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public synchronized void onErrorResponse(VolleyError volleyError) {
        this.d = volleyError;
        notifyAll();
    }
}
