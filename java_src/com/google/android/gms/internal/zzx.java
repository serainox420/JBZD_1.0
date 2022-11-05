package com.google.android.gms.internal;

import com.mopub.volley.toolbox.HttpClientStack;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
/* loaded from: classes2.dex */
public class zzx implements zzz {
    protected final HttpClient zzaD;

    /* loaded from: classes2.dex */
    public static final class zza extends HttpEntityEnclosingRequestBase {
        public zza() {
        }

        public zza(String str) {
            setURI(URI.create(str));
        }

        public String getMethod() {
            return HttpClientStack.HttpPatch.METHOD_NAME;
        }
    }

    public zzx(HttpClient httpClient) {
        this.zzaD = httpClient;
    }

    private static void zza(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, zzl<?> zzlVar) throws com.google.android.gms.internal.zza {
        byte[] zzm = zzlVar.zzm();
        if (zzm != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(zzm));
        }
    }

    private static void zza(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    static HttpUriRequest zzb(zzl<?> zzlVar, Map<String, String> map) throws com.google.android.gms.internal.zza {
        switch (zzlVar.getMethod()) {
            case -1:
                byte[] zzj = zzlVar.zzj();
                if (zzj == null) {
                    return new HttpGet(zzlVar.getUrl());
                }
                HttpPost httpPost = new HttpPost(zzlVar.getUrl());
                httpPost.addHeader("Content-Type", zzlVar.zzi());
                httpPost.setEntity(new ByteArrayEntity(zzj));
                return httpPost;
            case 0:
                return new HttpGet(zzlVar.getUrl());
            case 1:
                HttpPost httpPost2 = new HttpPost(zzlVar.getUrl());
                httpPost2.addHeader("Content-Type", zzlVar.zzl());
                zza((HttpEntityEnclosingRequestBase) httpPost2, zzlVar);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(zzlVar.getUrl());
                httpPut.addHeader("Content-Type", zzlVar.zzl());
                zza((HttpEntityEnclosingRequestBase) httpPut, zzlVar);
                return httpPut;
            case 3:
                return new HttpDelete(zzlVar.getUrl());
            case 4:
                return new HttpHead(zzlVar.getUrl());
            case 5:
                return new HttpOptions(zzlVar.getUrl());
            case 6:
                return new HttpTrace(zzlVar.getUrl());
            case 7:
                zza zzaVar = new zza(zzlVar.getUrl());
                zzaVar.addHeader("Content-Type", zzlVar.zzl());
                zza(zzaVar, zzlVar);
                return zzaVar;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    @Override // com.google.android.gms.internal.zzz
    public HttpResponse zza(zzl<?> zzlVar, Map<String, String> map) throws IOException, com.google.android.gms.internal.zza {
        HttpUriRequest zzb = zzb(zzlVar, map);
        zza(zzb, map);
        zza(zzb, zzlVar.getHeaders());
        HttpParams params = zzb.getParams();
        int zzp = zzlVar.zzp();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, zzp);
        return this.zzaD.execute(zzb);
    }
}
