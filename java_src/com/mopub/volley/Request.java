package com.mopub.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.mopub.volley.Cache;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class Request<T> implements Comparable<Request<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final VolleyLog.a f4677a;
    private final int b;
    private final String c;
    private final int d;
    private final Response.ErrorListener e;
    private Integer f;
    private RequestQueue g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private RetryPolicy l;
    private Cache.Entry m;
    private Object n;

    /* loaded from: classes3.dex */
    public interface Method {
        public static final int DELETE = 3;
        public static final int DEPRECATED_GET_OR_POST = -1;
        public static final int GET = 0;
        public static final int HEAD = 4;
        public static final int OPTIONS = 5;
        public static final int PATCH = 7;
        public static final int POST = 1;
        public static final int PUT = 2;
        public static final int TRACE = 6;
    }

    /* loaded from: classes3.dex */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Response<T> a(NetworkResponse networkResponse);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void deliverResponse(T t);

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    @Deprecated
    public Request(String str, Response.ErrorListener errorListener) {
        this(-1, str, errorListener);
    }

    public Request(int i, String str, Response.ErrorListener errorListener) {
        this.f4677a = VolleyLog.a.ENABLED ? new VolleyLog.a() : null;
        this.h = true;
        this.i = false;
        this.j = false;
        this.k = 0L;
        this.m = null;
        this.b = i;
        this.c = str;
        this.e = errorListener;
        setRetryPolicy(new DefaultRetryPolicy());
        this.d = a(str);
    }

    public int getMethod() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.n = obj;
        return this;
    }

    public Object getTag() {
        return this.n;
    }

    public Response.ErrorListener getErrorListener() {
        return this.e;
    }

    public int getTrafficStatsTag() {
        return this.d;
    }

    private static int a(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
        this.l = retryPolicy;
        return this;
    }

    public void addMarker(String str) {
        if (VolleyLog.a.ENABLED) {
            this.f4677a.add(str, Thread.currentThread().getId());
        } else if (this.k == 0) {
            this.k = SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(final String str) {
        if (this.g != null) {
            this.g.a(this);
        }
        if (VolleyLog.a.ENABLED) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.volley.Request.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.f4677a.add(str, id);
                        Request.this.f4677a.finish(toString());
                    }
                });
                return;
            }
            this.f4677a.add(str, id);
            this.f4677a.finish(toString());
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.k;
        if (elapsedRealtime >= 3000) {
            VolleyLog.d("%d ms: %s", Long.valueOf(elapsedRealtime), toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(RequestQueue requestQueue) {
        this.g = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.f = Integer.valueOf(i);
        return this;
    }

    public final int getSequence() {
        if (this.f == null) {
            throw new IllegalStateException("getSequence called before setSequence");
        }
        return this.f.intValue();
    }

    public String getUrl() {
        return this.c;
    }

    public String getCacheKey() {
        return getUrl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(Cache.Entry entry) {
        this.m = entry;
        return this;
    }

    public Cache.Entry getCacheEntry() {
        return this.m;
    }

    public void cancel() {
        this.i = true;
    }

    public boolean isCanceled() {
        return this.i;
    }

    public Map<String, String> getHeaders() throws AuthFailureError {
        return Collections.emptyMap();
    }

    @Deprecated
    protected Map<String, String> b() throws AuthFailureError {
        return a();
    }

    @Deprecated
    protected String c() {
        return d();
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Deprecated
    public byte[] getPostBody() throws AuthFailureError {
        Map<String, String> b = b();
        if (b == null || b.size() <= 0) {
            return null;
        }
        return a(b, c());
    }

    protected Map<String, String> a() throws AuthFailureError {
        return null;
    }

    protected String d() {
        return "UTF-8";
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + d();
    }

    public byte[] getBody() throws AuthFailureError {
        Map<String, String> a2 = a();
        if (a2 == null || a2.size() <= 0) {
            return null;
        }
        return a(a2, d());
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.h = z;
        return this;
    }

    public final boolean shouldCache() {
        return this.h;
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public final int getTimeoutMs() {
        return this.l.getCurrentTimeout();
    }

    public RetryPolicy getRetryPolicy() {
        return this.l;
    }

    public void markDelivered() {
        this.j = true;
    }

    public boolean hasHadResponseDelivered() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VolleyError a(VolleyError volleyError) {
        return volleyError;
    }

    public void deliverError(VolleyError volleyError) {
        if (this.e != null) {
            this.e.onErrorResponse(volleyError);
        }
    }

    public int compareTo(Request<T> request) {
        Priority priority = getPriority();
        Priority priority2 = request.getPriority();
        return priority == priority2 ? this.f.intValue() - request.f.intValue() : priority2.ordinal() - priority.ordinal();
    }

    public String toString() {
        return (this.i ? "[X] " : "[ ] ") + getUrl() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + ("0x" + Integer.toHexString(getTrafficStatsTag())) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + getPriority() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.f;
    }
}
