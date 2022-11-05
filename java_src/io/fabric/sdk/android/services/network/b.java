package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.k;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: DefaultHttpRequestFactory.java */
/* loaded from: classes3.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private final k f5707a;
    private e b;
    private SSLSocketFactory c;
    private boolean d;

    public b() {
        this(new io.fabric.sdk.android.b());
    }

    public b(k kVar) {
        this.f5707a = kVar;
    }

    @Override // io.fabric.sdk.android.services.network.c
    public void a(e eVar) {
        if (this.b != eVar) {
            this.b = eVar;
            a();
        }
    }

    private synchronized void a() {
        this.d = false;
        this.c = null;
    }

    @Override // io.fabric.sdk.android.services.network.c
    public HttpRequest a(HttpMethod httpMethod, String str) {
        return a(httpMethod, str, Collections.emptyMap());
    }

    @Override // io.fabric.sdk.android.services.network.c
    public HttpRequest a(HttpMethod httpMethod, String str, Map<String, String> map) {
        HttpRequest e;
        SSLSocketFactory b;
        switch (httpMethod) {
            case GET:
                e = HttpRequest.a((CharSequence) str, (Map<?, ?>) map, true);
                break;
            case POST:
                e = HttpRequest.b((CharSequence) str, (Map<?, ?>) map, true);
                break;
            case PUT:
                e = HttpRequest.d((CharSequence) str);
                break;
            case DELETE:
                e = HttpRequest.e((CharSequence) str);
                break;
            default:
                throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (a(str) && this.b != null && (b = b()) != null) {
            ((HttpsURLConnection) e.a()).setSSLSocketFactory(b);
        }
        return e;
    }

    private boolean a(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("https");
    }

    private synchronized SSLSocketFactory b() {
        if (this.c == null && !this.d) {
            this.c = c();
        }
        return this.c;
    }

    private synchronized SSLSocketFactory c() {
        SSLSocketFactory sSLSocketFactory;
        this.d = true;
        try {
            sSLSocketFactory = d.a(this.b);
            this.f5707a.a("Fabric", "Custom SSL pinning enabled");
        } catch (Exception e) {
            this.f5707a.e("Fabric", "Exception while validating pinned certs", e);
            sSLSocketFactory = null;
        }
        return sSLSocketFactory;
    }
}
