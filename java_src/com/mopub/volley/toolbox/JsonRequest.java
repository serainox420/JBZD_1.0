package com.mopub.volley.toolbox;

import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
/* loaded from: classes3.dex */
public abstract class JsonRequest<T> extends Request<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4700a = String.format("application/json; charset=%s", AudienceNetworkActivity.WEBVIEW_ENCODING);
    private final Response.Listener<T> b;
    private final String c;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public abstract Response<T> a(NetworkResponse networkResponse);

    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    public JsonRequest(int i, String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.b = listener;
        this.c = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public void deliverResponse(T t) {
        this.b.onResponse(t);
    }

    @Override // com.mopub.volley.Request
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.mopub.volley.Request
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return f4700a;
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        try {
            if (this.c != null) {
                return this.c.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING);
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.c, AudienceNetworkActivity.WEBVIEW_ENCODING);
            return null;
        }
    }
}
