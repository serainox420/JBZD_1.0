package com.smartadserver.android.library.a;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.smartadserver.android.library.exception.SASAdTimeoutException;
import com.smartadserver.android.library.exception.SASException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpCookie;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
/* compiled from: SASAsyncHttpClient.java */
/* loaded from: classes3.dex */
public class a {
    private static final String b = a.class.getSimpleName();
    private HttpClient c;
    private String d;
    private int e;

    /* renamed from: a  reason: collision with root package name */
    C0575a f5314a = null;
    private String f = "";
    private boolean g = true;

    public boolean a() {
        return this.g;
    }

    public String b() {
        return this.f;
    }

    public void a(HttpClient httpClient) {
        this.c = httpClient;
    }

    public a(String str, int i) {
        this.d = str;
        this.e = i;
    }

    public void a(HttpGet httpGet, com.smartadserver.android.library.a.b bVar) {
        a(httpGet, bVar, this.c);
    }

    public void a(HttpPost httpPost, com.smartadserver.android.library.a.b bVar) {
        a(httpPost, bVar, this.c);
    }

    private void a(HttpUriRequest httpUriRequest, com.smartadserver.android.library.a.b bVar, HttpClient httpClient) {
        this.f = "";
        this.g = true;
        this.f5314a = new C0575a(httpUriRequest, bVar, httpClient);
        this.f5314a.start();
    }

    public void c() {
        if (this.f5314a != null) {
            this.f5314a.a(new SASException("Ad request was aborted"));
        }
    }

    /* compiled from: SASAsyncHttpClient.java */
    /* loaded from: classes3.dex */
    private static class b extends HttpEntityWrapper {

        /* renamed from: a  reason: collision with root package name */
        private GZIPInputStream f5318a;

        public b(HttpEntity httpEntity) {
            super(httpEntity);
            this.f5318a = null;
        }

        public void consumeContent() throws IOException {
            super.consumeContent();
            a();
        }

        public InputStream getContent() throws IOException {
            if (this.f5318a == null) {
                this.f5318a = new GZIPInputStream(this.wrappedEntity.getContent()) { // from class: com.smartadserver.android.library.a.a.b.1
                    @Override // java.util.zip.GZIPInputStream, java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                    public void close() throws IOException {
                        super.close();
                    }

                    @Override // java.util.zip.GZIPInputStream, java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
                    public int read(byte[] bArr, int i, int i2) throws IOException {
                        return super.read(bArr, i, i2);
                    }
                };
            }
            return this.f5318a;
        }

        public void a() {
            if (this.f5318a != null) {
                try {
                    this.f5318a.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        public long getContentLength() {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASAsyncHttpClient.java */
    /* renamed from: com.smartadserver.android.library.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0575a extends Thread {
        private HttpUriRequest d;
        private com.smartadserver.android.library.a.b e;
        private HttpClient f;
        private boolean g = false;
        private boolean h = false;

        /* renamed from: a  reason: collision with root package name */
        Timer f5315a = null;
        b b = null;

        public C0575a(HttpUriRequest httpUriRequest, com.smartadserver.android.library.a.b bVar, HttpClient httpClient) {
            setName("SASHttpRequestThread");
            this.d = httpUriRequest;
            this.e = bVar;
            this.f = httpClient;
        }

        public synchronized void a(SASException sASException) {
            if (!this.h && !this.g) {
                this.g = true;
                try {
                    this.d.abort();
                } catch (UnsupportedOperationException e) {
                }
                if (this.f5315a != null) {
                    this.f5315a.cancel();
                }
                com.smartadserver.android.library.g.c.b(sASException.getMessage());
                this.e.a(sASException);
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            DefaultHttpClient defaultHttpClient;
            try {
                BasicHttpParams basicHttpParams = new BasicHttpParams();
                basicHttpParams.setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
                if (this.f == null) {
                    defaultHttpClient = new DefaultHttpClient(basicHttpParams);
                    defaultHttpClient.addResponseInterceptor(new HttpResponseInterceptor() { // from class: com.smartadserver.android.library.a.a.a.1
                        public void process(HttpResponse httpResponse, HttpContext httpContext) {
                            a.this.g = a.this.g && httpResponse.getStatusLine().getStatusCode() != 302;
                            Header firstHeader = httpResponse.getFirstHeader("X-SMRT-I");
                            if (firstHeader != null) {
                                a.this.f = firstHeader.getValue();
                            }
                            HttpEntity entity = httpResponse.getEntity();
                            Header contentEncoding = entity.getContentEncoding();
                            if (contentEncoding != null) {
                                for (HeaderElement headerElement : contentEncoding.getElements()) {
                                    if (headerElement.getName().equalsIgnoreCase("gzip")) {
                                        C0575a.this.b = new b(entity);
                                        httpResponse.setEntity(C0575a.this.b);
                                        return;
                                    }
                                }
                            }
                        }
                    });
                    this.d.setHeader("Accept-Encoding", "gzip");
                    HttpConnectionParams.setConnectionTimeout(basicHttpParams, a.this.e);
                    HttpConnectionParams.setSoTimeout(basicHttpParams, a.this.e);
                } else {
                    defaultHttpClient = this.f;
                }
                this.d.setHeader("User-Agent", a.this.d);
                if (a.this.e > 0) {
                    this.f5315a = new Timer();
                    this.f5315a.schedule(new TimerTask() { // from class: com.smartadserver.android.library.a.a.a.2
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            C0575a.this.a(new SASAdTimeoutException("Ad was not delivered before specified timeout (" + a.this.e + "ms)"));
                        }
                    }, a.this.e);
                }
                String host = this.d.getURI().getHost();
                if (defaultHttpClient instanceof DefaultHttpClient) {
                    a.a(host, defaultHttpClient);
                }
                HttpResponse execute = defaultHttpClient.execute(this.d);
                synchronized (this) {
                    if (this.g) {
                        return;
                    }
                    this.h = true;
                    if (this.f5315a != null) {
                        this.f5315a.cancel();
                    }
                    if (execute != null) {
                        int statusCode = execute.getStatusLine().getStatusCode();
                        if (statusCode == 200) {
                            String entityUtils = EntityUtils.toString(execute.getEntity(), "UTF-8");
                            if (this.b != null) {
                                this.b.a();
                                this.b = null;
                            }
                            this.e.a(entityUtils);
                            if (defaultHttpClient instanceof DefaultHttpClient) {
                                a.b(host, defaultHttpClient);
                            }
                        } else {
                            this.e.a((Exception) new HttpException("HTTP error code: " + statusCode));
                        }
                    } else {
                        this.e.a((Exception) new HttpException("Null Http response"));
                    }
                }
            } catch (Exception e) {
                synchronized (this) {
                    if (this.g) {
                        return;
                    }
                    this.h = true;
                    if (this.f5315a != null) {
                        this.f5315a.cancel();
                    }
                    e.printStackTrace();
                    this.e.a(e);
                }
            } finally {
                a.this.f5314a = null;
            }
        }
    }

    public static synchronized void a(String str, DefaultHttpClient defaultHttpClient) {
        synchronized (a.class) {
            BasicCookieStore basicCookieStore = new BasicCookieStore();
            defaultHttpClient.setCookieStore(basicCookieStore);
            CookieManager cookieManager = CookieManager.getInstance();
            if (cookieManager != null) {
                String cookie = cookieManager.getCookie("http://" + str);
                com.smartadserver.android.library.g.c.a(b, "rawCookieHeader: " + cookie);
                if (cookie != null) {
                    for (HttpCookie httpCookie : HttpCookie.parse("Set-Cookie: " + cookie.replace(";", ";,"))) {
                        BasicClientCookie basicClientCookie = new BasicClientCookie(httpCookie.getName().trim(), httpCookie.getValue().trim());
                        basicClientCookie.setDomain(str);
                        basicClientCookie.setPath("/");
                        basicCookieStore.addCookie(basicClientCookie);
                    }
                }
            }
        }
    }

    public static synchronized void b(String str, DefaultHttpClient defaultHttpClient) {
        synchronized (a.class) {
            List<Cookie> cookies = defaultHttpClient.getCookieStore().getCookies();
            if (cookies.size() >= 1) {
                CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
                CookieManager cookieManager = CookieManager.getInstance();
                if (cookieManager != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName() == "$Version") {
                            break;
                        }
                        String str2 = cookie.getName() + "=" + cookie.getValue() + "; Domain=" + str;
                        com.smartadserver.android.library.g.c.a(b, "setCookieHeader: " + str2);
                        cookieManager.setCookie("http://" + str, str2);
                    }
                    cookieSyncManager.sync();
                }
            }
        }
    }
}
