package com.google.android.gms.internal;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
@zzme
/* loaded from: classes.dex */
public class zzqo {
    public HttpURLConnection zzb(String str, int i) throws IOException {
        URL url = new URL(str);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 <= 20) {
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(i);
                openConnection.setReadTimeout(i);
                if (!(openConnection instanceof HttpURLConnection)) {
                    throw new IOException("Invalid protocol.");
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                httpURLConnection.setInstanceFollowRedirects(false);
                if (httpURLConnection.getResponseCode() / 100 != 3) {
                    return httpURLConnection;
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField == null) {
                    throw new IOException("Missing Location header in redirect");
                }
                URL url2 = new URL(url, headerField);
                String protocol = url2.getProtocol();
                if (protocol == null) {
                    throw new IOException("Protocol is null");
                }
                if (!protocol.equals("http") && !protocol.equals("https")) {
                    String valueOf = String.valueOf(protocol);
                    throw new IOException(valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
                }
                String valueOf2 = String.valueOf(headerField);
                zzpk.zzbf(valueOf2.length() != 0 ? "Redirecting to ".concat(valueOf2) : new String("Redirecting to "));
                httpURLConnection.disconnect();
                i2 = i3;
                url = url2;
            } else {
                throw new IOException("Too many redirects (20)");
            }
        }
    }
}
