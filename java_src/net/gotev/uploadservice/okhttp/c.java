package net.gotev.uploadservice.okhttp;

import android.os.Build;
import java.io.IOException;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import net.gotev.uploadservice.Logger;
import net.gotev.uploadservice.NameValue;
import net.gotev.uploadservice.ServerResponse;
import net.gotev.uploadservice.a.b;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.http.HttpMethod;
import okio.d;
/* compiled from: OkHttpStackConnection.java */
/* loaded from: classes3.dex */
public class c implements net.gotev.uploadservice.a.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5855a = c.class.getSimpleName();
    private OkHttpClient b;
    private Request.Builder c;
    private String d;
    private long e;
    private String f;
    private Response g;

    public c(OkHttpClient okHttpClient, String str, String str2) throws IOException {
        Logger.c(getClass().getSimpleName(), "creating new connection");
        this.g = null;
        this.b = okHttpClient;
        this.d = str;
        this.c = new Request.Builder().url(new URL(str2));
    }

    @Override // net.gotev.uploadservice.a.b
    public net.gotev.uploadservice.a.b a(List<NameValue> list) throws IOException {
        for (NameValue nameValue : list) {
            if ("Content-Type".equalsIgnoreCase(nameValue.a())) {
                this.f = nameValue.b();
            }
            this.c.header(nameValue.a(), nameValue.b());
        }
        return this;
    }

    @Override // net.gotev.uploadservice.a.b
    public net.gotev.uploadservice.a.b a(long j, boolean z) {
        if (z) {
            if (Build.VERSION.SDK_INT < 19 && j > 2147483647L) {
                throw new RuntimeException("You need Android API version 19 or newer to upload more than 2GB in a single request using fixed size content length. Try switching to chunked mode instead, but make sure your server side supports it!");
            }
            this.e = j;
        } else {
            this.e = -1L;
        }
        return this;
    }

    private LinkedHashMap<String, String> a(Headers headers) throws IOException {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>(headers.size());
        for (String str : headers.names()) {
            linkedHashMap.put(str, headers.get(str));
        }
        return linkedHashMap;
    }

    @Override // net.gotev.uploadservice.a.b
    public ServerResponse a(final b.a aVar) throws IOException {
        if (HttpMethod.permitsRequestBody(this.d) || HttpMethod.requiresRequestBody(this.d)) {
            this.c.method(this.d, new RequestBody() { // from class: net.gotev.uploadservice.okhttp.c.1
                @Override // okhttp3.RequestBody
                public long contentLength() throws IOException {
                    return c.this.e;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    if (c.this.f != null) {
                        return MediaType.parse(c.this.f);
                    }
                    return null;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(d dVar) throws IOException {
                    a aVar2 = new a(dVar);
                    aVar.a(aVar2);
                    aVar2.a();
                }
            });
        } else {
            this.c.method(this.d, null);
        }
        this.g = this.b.newCall(this.c.build()).execute();
        return new ServerResponse(this.g.code(), this.g.body().bytes(), a(this.g.headers()));
    }

    @Override // net.gotev.uploadservice.a.b
    public void a() {
        Logger.c(getClass().getSimpleName(), "closing connection");
        if (this.g != null) {
            try {
                this.g.close();
            } catch (Throwable th) {
                Logger.a(f5855a, "Error while closing connection", th);
            }
        }
    }
}
