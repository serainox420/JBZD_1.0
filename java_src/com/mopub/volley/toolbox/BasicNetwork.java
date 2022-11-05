package com.mopub.volley.toolbox;

import android.os.SystemClock;
import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.NetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.Request;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.ServerError;
import com.mopub.volley.TimeoutError;
import com.mopub.volley.VolleyError;
import com.mopub.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;
/* loaded from: classes3.dex */
public class BasicNetwork implements Network {

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f4685a = VolleyLog.DEBUG;
    private static int d = 3000;
    private static int e = 4096;
    protected final HttpStack b;
    protected final ByteArrayPool c;

    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(e));
    }

    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.b = httpStack;
        this.c = byteArrayPool;
    }

    @Override // com.mopub.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        byte[] bArr;
        byte[] bArr2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            HttpResponse httpResponse = null;
            Map<String, String> emptyMap = Collections.emptyMap();
            try {
                try {
                    HashMap hashMap = new HashMap();
                    a(hashMap, request.getCacheEntry());
                    HttpResponse performRequest = this.b.performRequest(request, hashMap);
                    try {
                        StatusLine statusLine = performRequest.getStatusLine();
                        int statusCode = statusLine.getStatusCode();
                        emptyMap = a(performRequest.getAllHeaders());
                        if (statusCode == 304) {
                            Cache.Entry cacheEntry = request.getCacheEntry();
                            if (cacheEntry == null) {
                                return new NetworkResponse(304, null, emptyMap, true, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }
                            cacheEntry.responseHeaders.putAll(emptyMap);
                            return new NetworkResponse(304, cacheEntry.data, cacheEntry.responseHeaders, true, SystemClock.elapsedRealtime() - elapsedRealtime);
                        }
                        if (performRequest.getEntity() != null) {
                            bArr2 = a(performRequest.getEntity());
                        } else {
                            bArr2 = new byte[0];
                        }
                        try {
                            a(SystemClock.elapsedRealtime() - elapsedRealtime, request, bArr2, statusLine);
                            if (statusCode < 200 || statusCode > 299) {
                                throw new IOException();
                            }
                            return new NetworkResponse(statusCode, bArr2, emptyMap, false, SystemClock.elapsedRealtime() - elapsedRealtime);
                        } catch (IOException e2) {
                            e = e2;
                            bArr = bArr2;
                            httpResponse = performRequest;
                            if (httpResponse != null) {
                                int statusCode2 = httpResponse.getStatusLine().getStatusCode();
                                VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode2), request.getUrl());
                                if (bArr != null) {
                                    NetworkResponse networkResponse = new NetworkResponse(statusCode2, bArr, emptyMap, false, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    if (statusCode2 == 401 || statusCode2 == 403) {
                                        a("auth", request, new AuthFailureError(networkResponse));
                                    } else {
                                        throw new ServerError(networkResponse);
                                    }
                                } else {
                                    throw new NetworkError((NetworkResponse) null);
                                }
                            } else {
                                throw new NoConnectionError(e);
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        bArr = null;
                        httpResponse = performRequest;
                    }
                } catch (IOException e4) {
                    e = e4;
                    bArr = null;
                }
            } catch (MalformedURLException e5) {
                throw new RuntimeException("Bad URL " + request.getUrl(), e5);
            } catch (SocketTimeoutException e6) {
                a("socket", request, new TimeoutError());
            } catch (ConnectTimeoutException e7) {
                a("connection", request, new TimeoutError());
            }
        }
    }

    private void a(long j, Request<?> request, byte[] bArr, StatusLine statusLine) {
        if (f4685a || j > d) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void a(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e2) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e2;
        }
    }

    private void a(Map<String, String> map, Cache.Entry entry) {
        if (entry != null) {
            if (entry.etag != null) {
                map.put("If-None-Match", entry.etag);
            }
            if (entry.serverDate > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(entry.serverDate)));
            }
        }
    }

    private byte[] a(HttpEntity httpEntity) throws IOException, ServerError {
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.c, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new ServerError();
            }
            byte[] buf = this.c.getBuf(1024);
            while (true) {
                int read = content.read(buf);
                if (read == -1) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, read);
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                VolleyLog.v("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e3) {
                VolleyLog.v("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.returnBuf(null);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    protected static Map<String, String> a(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }
}
