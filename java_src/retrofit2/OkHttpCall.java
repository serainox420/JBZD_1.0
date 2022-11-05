package retrofit2;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okio.c;
import okio.e;
import okio.g;
import okio.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class OkHttpCall<T> implements Call<T> {
    private final Object[] args;
    private volatile boolean canceled;
    private Throwable creationFailure;
    private boolean executed;
    private okhttp3.Call rawCall;
    private final ServiceMethod<T, ?> serviceMethod;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpCall(ServiceMethod<T, ?> serviceMethod, Object[] objArr) {
        this.serviceMethod = serviceMethod;
        this.args = objArr;
    }

    @Override // retrofit2.Call
    /* renamed from: clone */
    public OkHttpCall<T> mo575clone() {
        return new OkHttpCall<>(this.serviceMethod, this.args);
    }

    @Override // retrofit2.Call
    public synchronized Request request() {
        Request request;
        okhttp3.Call call = this.rawCall;
        if (call != null) {
            request = call.request();
        } else if (this.creationFailure != null) {
            if (this.creationFailure instanceof IOException) {
                throw new RuntimeException("Unable to create request.", this.creationFailure);
            }
            throw ((RuntimeException) this.creationFailure);
        } else {
            try {
                okhttp3.Call createRawCall = createRawCall();
                this.rawCall = createRawCall;
                request = createRawCall.request();
            } catch (IOException e) {
                this.creationFailure = e;
                throw new RuntimeException("Unable to create request.", e);
            } catch (RuntimeException e2) {
                this.creationFailure = e2;
                throw e2;
            }
        }
        return request;
    }

    @Override // retrofit2.Call
    public void enqueue(final Callback<T> callback) {
        Throwable th;
        okhttp3.Call call;
        if (callback == null) {
            throw new NullPointerException("callback == null");
        }
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            okhttp3.Call call2 = this.rawCall;
            th = this.creationFailure;
            if (call2 == null && th == null) {
                call = createRawCall();
                this.rawCall = call;
            } else {
                call = call2;
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.enqueue(new okhttp3.Callback() { // from class: retrofit2.OkHttpCall.1
            @Override // okhttp3.Callback
            public void onResponse(okhttp3.Call call3, okhttp3.Response response) throws IOException {
                try {
                    callSuccess(OkHttpCall.this.parseResponse(response));
                } catch (Throwable th2) {
                    callFailure(th2);
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(okhttp3.Call call3, IOException iOException) {
                try {
                    callback.onFailure(OkHttpCall.this, iOException);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }

            private void callFailure(Throwable th2) {
                try {
                    callback.onFailure(OkHttpCall.this, th2);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }

            private void callSuccess(Response<T> response) {
                try {
                    callback.onResponse(OkHttpCall.this, response);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        });
    }

    @Override // retrofit2.Call
    public synchronized boolean isExecuted() {
        return this.executed;
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        okhttp3.Call call;
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            if (this.creationFailure != null) {
                if (this.creationFailure instanceof IOException) {
                    throw ((IOException) this.creationFailure);
                }
                throw ((RuntimeException) this.creationFailure);
            }
            call = this.rawCall;
            if (call == null) {
                try {
                    call = createRawCall();
                    this.rawCall = call;
                } catch (IOException | RuntimeException e) {
                    this.creationFailure = e;
                    throw e;
                }
            }
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    private okhttp3.Call createRawCall() throws IOException {
        okhttp3.Call newCall = this.serviceMethod.callFactory.newCall(this.serviceMethod.toRequest(this.args));
        if (newCall == null) {
            throw new NullPointerException("Call.Factory returned null.");
        }
        return newCall;
    }

    Response<T> parseResponse(okhttp3.Response response) throws IOException {
        ResponseBody body = response.body();
        okhttp3.Response build = response.newBuilder().body(new NoContentResponseBody(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                return Response.error(Utils.buffer(body), build);
            } finally {
                body.close();
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return Response.success((Object) null, build);
        } else {
            ExceptionCatchingRequestBody exceptionCatchingRequestBody = new ExceptionCatchingRequestBody(body);
            try {
                return Response.success(this.serviceMethod.toResponse(exceptionCatchingRequestBody), build);
            } catch (RuntimeException e) {
                exceptionCatchingRequestBody.throwIfCaught();
                throw e;
            }
        }
    }

    @Override // retrofit2.Call
    public void cancel() {
        okhttp3.Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        boolean z = true;
        if (!this.canceled) {
            synchronized (this) {
                if (this.rawCall == null || !this.rawCall.isCanceled()) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        private final MediaType contentType;

        NoContentResponseBody(MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        public e source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ExceptionCatchingRequestBody extends ResponseBody {
        private final ResponseBody delegate;
        IOException thrownException;

        ExceptionCatchingRequestBody(ResponseBody responseBody) {
            this.delegate = responseBody;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.delegate.contentType();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public e source() {
            return k.a(new g(this.delegate.source()) { // from class: retrofit2.OkHttpCall.ExceptionCatchingRequestBody.1
                @Override // okio.g, okio.r
                public long read(c cVar, long j) throws IOException {
                    try {
                        return super.read(cVar, j);
                    } catch (IOException e) {
                        ExceptionCatchingRequestBody.this.thrownException = e;
                        throw e;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        void throwIfCaught() throws IOException {
            if (this.thrownException != null) {
                throw this.thrownException;
            }
        }
    }
}
