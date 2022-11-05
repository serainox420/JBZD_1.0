package com.mopub.volley.toolbox;

import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Request;
import com.mopub.volley.toolbox.HttpClientStack;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;
/* loaded from: classes3.dex */
public class HurlStack implements HttpStack {

    /* renamed from: a  reason: collision with root package name */
    private final UrlRewriter f4691a;
    private final SSLSocketFactory b;

    /* loaded from: classes3.dex */
    public interface UrlRewriter {
        String rewriteUrl(String str);
    }

    public HurlStack() {
        this(null);
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f4691a = urlRewriter;
        this.b = sSLSocketFactory;
    }

    @Override // com.mopub.volley.toolbox.HttpStack
    public HttpResponse performRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        String str;
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(request.getHeaders());
        hashMap.putAll(map);
        if (this.f4691a != null) {
            str = this.f4691a.rewriteUrl(url);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: " + url);
            }
        } else {
            str = url;
        }
        HttpURLConnection a2 = a(new URL(str), request);
        for (String str2 : hashMap.keySet()) {
            a2.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        a(a2, request);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (a2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, a2.getResponseCode(), a2.getResponseMessage()));
        basicHttpResponse.setEntity(a(a2));
        for (Map.Entry<String, List<String>> entry : a2.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return basicHttpResponse;
    }

    private static HttpEntity a(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            errorStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(errorStream);
        basicHttpEntity.setContentLength(httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    protected HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    private HttpURLConnection a(URL url, Request<?> request) throws IOException {
        HttpURLConnection a2 = a(url);
        int timeoutMs = request.getTimeoutMs();
        a2.setConnectTimeout(timeoutMs);
        a2.setReadTimeout(timeoutMs);
        a2.setUseCaches(false);
        a2.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.b != null) {
            ((HttpsURLConnection) a2).setSSLSocketFactory(this.b);
        }
        return a2;
    }

    static void a(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", request.getPostBodyContentType());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(postBody);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, request);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                b(httpURLConnection, request);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                b(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static void b(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        byte[] body = request.getBody();
        if (body != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", request.getBodyContentType());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(body);
            dataOutputStream.close();
        }
    }
}
