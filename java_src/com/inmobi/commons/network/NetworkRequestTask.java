package com.inmobi.commons.network;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.Request;
import com.inmobi.commons.network.abstraction.INetworkListener;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
/* loaded from: classes2.dex */
public class NetworkRequestTask implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Request f3811a;
    private INetworkListener b;
    private HttpURLConnection c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkRequestTask(Request request, INetworkListener iNetworkListener) {
        this.f3811a = request;
        this.b = iNetworkListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String queryParams = this.f3811a.getQueryParams();
            String postBody = this.f3811a.getPostBody();
            String url = this.f3811a.getUrl();
            if (queryParams != null && !"".equals(queryParams.trim())) {
                url = url + "?" + queryParams;
            }
            Log.internal(InternalSDKUtil.LOGGING_TAG, "URL:" + url);
            this.c = a(url);
            if (this.f3811a.getRequestMethod() != Request.Method.GET && (postBody == null || "".equals(postBody))) {
                this.b.onRequestFailed(this.f3811a, new Response(ErrorCode.INTERNAL_ERROR));
                return;
            }
            if (this.f3811a.getRequestMethod() != Request.Method.GET) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Post body:" + postBody);
                b(postBody);
            }
            a();
        } catch (Exception e) {
            Response response = new Response(ErrorCode.NETWORK_ERROR);
            if (this.b != null) {
                this.b.onRequestFailed(this.f3811a, response);
            }
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to make network request", e);
        }
    }

    private HttpURLConnection a(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(httpURLConnection);
        return httpURLConnection;
    }

    private void a(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setConnectTimeout(this.f3811a.getTimeout());
        httpURLConnection.setReadTimeout(this.f3811a.getTimeout());
        for (String str : this.f3811a.getHeaders().keySet()) {
            httpURLConnection.setRequestProperty(str, this.f3811a.getHeaders().get(str));
        }
        httpURLConnection.setUseCaches(false);
        Request.Method requestMethod = this.f3811a.getRequestMethod();
        if (requestMethod != Request.Method.GET) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
        httpURLConnection.setRequestMethod(requestMethod.toString());
        httpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
    }

    private void b(String str) throws IOException {
        BufferedWriter bufferedWriter;
        this.c.setRequestProperty("Content-Length", Integer.toString(str.length()));
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.c.getOutputStream()));
        } catch (Throwable th) {
            th = th;
            bufferedWriter = null;
        }
        try {
            bufferedWriter.write(str);
            a(bufferedWriter);
        } catch (Throwable th2) {
            th = th2;
            a(bufferedWriter);
            throw th;
        }
    }

    private void a() {
        BufferedReader bufferedReader;
        Closeable closeable = null;
        try {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Http Status Code: " + this.c.getResponseCode());
            int responseCode = this.c.getResponseCode();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Status Code: " + responseCode);
            try {
                if (responseCode == 200) {
                    bufferedReader = new BufferedReader(new InputStreamReader(this.c.getInputStream(), "UTF-8"));
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine).append("\n");
                        }
                        String sb2 = sb.toString();
                        Log.debug(InternalSDKUtil.LOGGING_TAG, "Response: " + sb2);
                        Response response = new Response(sb2, this.c.getResponseCode(), this.c.getHeaderFields());
                        if (this.b != null) {
                            this.b.onRequestSucceded(this.f3811a, response);
                        }
                        closeable = bufferedReader;
                    } catch (Throwable th) {
                        th = th;
                        this.c.disconnect();
                        a(bufferedReader);
                        throw th;
                    }
                } else {
                    Response response2 = new Response(null, this.c.getResponseCode(), this.c.getHeaderFields());
                    if (this.b != null) {
                        this.b.onRequestFailed(this.f3811a, response2);
                    }
                }
                this.c.disconnect();
                a(closeable);
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = closeable;
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to retrieve response", e);
            Response response3 = new Response(ErrorCode.CONNECTION_ERROR);
            if (this.b != null) {
                this.b.onRequestFailed(this.f3811a, response3);
            }
        } catch (OutOfMemoryError e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Out of memory error received while retieving network response", e2);
            Response response4 = new Response(ErrorCode.INTERNAL_ERROR);
            if (this.b != null) {
                this.b.onRequestFailed(this.f3811a, response4);
            }
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Exception closing resource: " + closeable, e);
            }
        }
    }
}
