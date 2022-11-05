package com.intentsoftware.addapptr.b;

import android.net.Uri;
import com.intentsoftware.addapptr.c.m;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
/* compiled from: GetRequest.java */
/* loaded from: classes2.dex */
public class b extends Thread {
    private static final int CONNECTION_TIMEOUT = 5000;
    private static final int SOCKET_TIMEOUT = 10000;
    private HttpURLConnection connection;
    private final a listener;
    private final HashMap<String, String> params;
    private final String url;

    /* compiled from: GetRequest.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onGetRequestError();

        void onGetRequestResponse(String str);
    }

    public b(String str, HashMap<String, String> hashMap, a aVar) {
        this.url = str;
        this.listener = aVar;
        this.params = hashMap;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str = null;
        try {
            str = sendRequest(this.params);
        } catch (Exception e) {
            if (this.connection != null) {
                this.connection.disconnect();
            }
            e.printStackTrace();
        }
        if (this.listener != null && !isInterrupted()) {
            if (str == null) {
                this.listener.onGetRequestError();
            } else {
                this.listener.onGetRequestResponse(str);
            }
        }
    }

    private String sendRequest(HashMap<String, String> hashMap) throws Exception {
        URL createUrl = createUrl(hashMap);
        if (com.intentsoftware.addapptr.c.c.isLoggable(2)) {
            com.intentsoftware.addapptr.c.c.v(this, "Request: " + createUrl);
        }
        this.connection = (HttpURLConnection) createUrl.openConnection();
        this.connection.setRequestProperty("User-Agent", System.getProperty("http.agent"));
        this.connection.setConnectTimeout(5000);
        this.connection.setReadTimeout(10000);
        String str = "";
        if (!isInterrupted()) {
            str = m.stringFromStream(this.connection.getInputStream());
            if (com.intentsoftware.addapptr.c.c.isLoggable(2)) {
                com.intentsoftware.addapptr.c.c.v(this, "Response: " + str);
            }
        }
        this.connection.disconnect();
        return str;
    }

    private URL createUrl(HashMap<String, String> hashMap) throws MalformedURLException {
        Uri parse = Uri.parse(this.url);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(parse.getScheme());
        builder.authority(parse.getAuthority());
        builder.path(parse.getPath());
        for (String str : hashMap.keySet()) {
            builder.appendQueryParameter(str, hashMap.get(str));
        }
        return new URL(builder.build().toString());
    }

    public void cancel() {
        try {
            interrupt();
        } catch (Exception e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                com.intentsoftware.addapptr.c.c.v(this, "Failed to cancel GetRequest, exception: " + e.getMessage());
            }
        }
    }
}
