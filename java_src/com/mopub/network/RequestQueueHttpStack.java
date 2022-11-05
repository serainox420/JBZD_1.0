package com.mopub.network;

import com.mopub.common.util.ResponseHeader;
import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Request;
import com.mopub.volley.toolbox.HurlStack;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpResponse;
/* loaded from: classes3.dex */
public class RequestQueueHttpStack extends HurlStack {

    /* renamed from: a  reason: collision with root package name */
    private final String f4663a;

    public RequestQueueHttpStack(String str) {
        this(str, null);
    }

    public RequestQueueHttpStack(String str, HurlStack.UrlRewriter urlRewriter) {
        this(str, urlRewriter, null);
    }

    public RequestQueueHttpStack(String str, HurlStack.UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        super(urlRewriter, sSLSocketFactory);
        this.f4663a = str;
    }

    @Override // com.mopub.volley.toolbox.HurlStack, com.mopub.volley.toolbox.HttpStack
    public HttpResponse performRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        if (map == null) {
            map = new TreeMap<>();
        }
        map.put(ResponseHeader.USER_AGENT.getKey(), this.f4663a);
        return super.performRequest(request, map);
    }
}
