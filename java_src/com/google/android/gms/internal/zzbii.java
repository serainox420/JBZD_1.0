package com.google.android.gms.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2.dex */
class zzbii implements zzbij {
    private HttpURLConnection zzbMp;
    private InputStream zzbMq = null;

    private InputStream zzd(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200) {
            return httpURLConnection.getInputStream();
        }
        String sb = new StringBuilder(25).append("Bad response: ").append(responseCode).toString();
        if (responseCode == 404) {
            throw new FileNotFoundException(sb);
        }
        if (responseCode != 503) {
            throw new IOException(sb);
        }
        throw new zzbin(sb);
    }

    private void zze(HttpURLConnection httpURLConnection) {
        try {
            if (this.zzbMq != null) {
                this.zzbMq.close();
            }
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.zzb(valueOf.length() != 0 ? "HttpUrlConnectionNetworkClient: Error when closing http input stream: ".concat(valueOf) : new String("HttpUrlConnectionNetworkClient: Error when closing http input stream: "), e);
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzbij
    public void close() {
        zze(this.zzbMp);
    }

    @Override // com.google.android.gms.internal.zzbij
    public InputStream zzhX(String str) throws IOException {
        this.zzbMp = zzhY(str);
        this.zzbMq = zzd(this.zzbMp);
        return this.zzbMq;
    }

    HttpURLConnection zzhY(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setConnectTimeout(20000);
        return httpURLConnection;
    }
}
