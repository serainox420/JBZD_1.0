package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
/* loaded from: classes3.dex */
public class StringRequest extends Request<String> {

    /* renamed from: a  reason: collision with root package name */
    private final Response.Listener<String> f4706a;

    public StringRequest(int i, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f4706a = listener;
    }

    public StringRequest(String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, str, listener, errorListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public void deliverResponse(String str) {
        this.f4706a.onResponse(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public Response<String> a(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
