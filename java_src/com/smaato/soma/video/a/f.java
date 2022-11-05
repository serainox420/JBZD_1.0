package com.smaato.soma.video.a;

import com.smaato.soma.debug.DebugCategory;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
/* compiled from: SmaatoHttpUrlConnection.java */
/* loaded from: classes3.dex */
public abstract class f extends HttpURLConnection {
    public static HttpURLConnection a(String str) throws IOException {
        if (c(str)) {
            throw new IllegalArgumentException("URL is improperly encoded: " + str);
        }
        try {
            str = b(str);
        } catch (Exception e) {
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", com.smaato.soma.internal.requests.f.b().c());
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(10000);
        return httpURLConnection;
    }

    public static String b(String str) throws Exception {
        URI uri;
        if (c(str)) {
            throw new UnsupportedEncodingException("URL is improperly encoded: " + str);
        }
        if (d(str)) {
            uri = e(str);
        } else {
            uri = new URI(str);
        }
        return uri.toURL().toString();
    }

    static boolean c(String str) {
        try {
            URLDecoder.decode(str, "UTF-8");
            return false;
        } catch (UnsupportedEncodingException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SmaatoHttpUrlConnection", "SmaatoHttpUrlConnectionUrl is improperly encoded:", 1, DebugCategory.DEBUG));
            return true;
        }
    }

    static boolean d(String str) {
        try {
            new URI(str);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    static URI e(String str) throws Exception {
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SmaatoHttpUrlConnection", "SmaatoHttpUrlConnectionFailed to encode url: " + str, 1, DebugCategory.DEBUG));
            throw e;
        }
    }
}
