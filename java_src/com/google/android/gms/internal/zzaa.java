package com.google.android.gms.internal;

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
/* loaded from: classes2.dex */
public class zzaa implements zzz {
    private final zza zzaE;
    private final SSLSocketFactory zzaF;

    /* loaded from: classes2.dex */
    public interface zza {
        String zzh(String str);
    }

    public zzaa() {
        this(null);
    }

    public zzaa(zza zzaVar) {
        this(zzaVar, null);
    }

    public zzaa(zza zzaVar, SSLSocketFactory sSLSocketFactory) {
        this.zzaE = zzaVar;
        this.zzaF = sSLSocketFactory;
    }

    private HttpURLConnection zza(URL url, zzl<?> zzlVar) throws IOException {
        HttpURLConnection zza2 = zza(url);
        int zzp = zzlVar.zzp();
        zza2.setConnectTimeout(zzp);
        zza2.setReadTimeout(zzp);
        zza2.setUseCaches(false);
        zza2.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.zzaF != null) {
            ((HttpsURLConnection) zza2).setSSLSocketFactory(this.zzaF);
        }
        return zza2;
    }

    private static HttpEntity zza(HttpURLConnection httpURLConnection) {
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

    static void zza(HttpURLConnection httpURLConnection, zzl<?> zzlVar) throws IOException, com.google.android.gms.internal.zza {
        switch (zzlVar.getMethod()) {
            case -1:
                byte[] zzj = zzlVar.zzj();
                if (zzj == null) {
                    return;
                }
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.addRequestProperty("Content-Type", zzlVar.zzi());
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.write(zzj);
                dataOutputStream.close();
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                zzb(httpURLConnection, zzlVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                zzb(httpURLConnection, zzlVar);
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
                zzb(httpURLConnection, zzlVar);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static boolean zza(int i, int i2) {
        return (i == 4 || (100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
    }

    private static void zzb(HttpURLConnection httpURLConnection, zzl<?> zzlVar) throws IOException, com.google.android.gms.internal.zza {
        byte[] zzm = zzlVar.zzm();
        if (zzm != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", zzlVar.zzl());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzm);
            dataOutputStream.close();
        }
    }

    protected HttpURLConnection zza(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    @Override // com.google.android.gms.internal.zzz
    public HttpResponse zza(zzl<?> zzlVar, Map<String, String> map) throws IOException, com.google.android.gms.internal.zza {
        String str;
        String url = zzlVar.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(zzlVar.getHeaders());
        hashMap.putAll(map);
        if (this.zzaE != null) {
            str = this.zzaE.zzh(url);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: " + url);
            }
        } else {
            str = url;
        }
        HttpURLConnection zza2 = zza(new URL(str), zzlVar);
        for (String str2 : hashMap.keySet()) {
            zza2.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        zza(zza2, zzlVar);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (zza2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicStatusLine basicStatusLine = new BasicStatusLine(protocolVersion, zza2.getResponseCode(), zza2.getResponseMessage());
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(basicStatusLine);
        if (zza(zzlVar.getMethod(), basicStatusLine.getStatusCode())) {
            basicHttpResponse.setEntity(zza(zza2));
        }
        for (Map.Entry<String, List<String>> entry : zza2.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return basicHttpResponse;
    }
}
