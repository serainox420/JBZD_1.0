package com.facebook.ads.internal.i.a;

import android.os.Build;
import android.util.Log;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes.dex */
public class a {
    private static int[] f = new int[20];
    private static final String g = a.class.getSimpleName();
    private boolean j;
    private Set<String> k;
    private Set<String> l;
    protected final d b = new e();
    protected r c = new g();
    protected int d = 2000;
    protected int e = 8000;
    private int h = 3;
    private Map<String, String> i = new TreeMap();

    /* renamed from: a  reason: collision with root package name */
    protected final q f2171a = new f() { // from class: com.facebook.ads.internal.i.a.a.1
    };

    static {
        c();
        if (Build.VERSION.SDK_INT > 8) {
            a();
        }
    }

    public static void a() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private static void c() {
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", Consts.False);
        }
    }

    private void c(HttpURLConnection httpURLConnection) {
        for (String str : this.i.keySet()) {
            httpURLConnection.setRequestProperty(str, this.i.get(str));
        }
    }

    protected int a(int i) {
        return f[i + 2] * 1000;
    }

    protected int a(HttpURLConnection httpURLConnection, byte[] bArr) {
        OutputStream outputStream = null;
        try {
            outputStream = this.f2171a.a(httpURLConnection);
            if (outputStream != null) {
                this.f2171a.a(outputStream, bArr);
            }
            return httpURLConnection.getResponseCode();
        } finally {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception e) {
                }
            }
        }
    }

    public a a(String str, String str2) {
        this.i.put(str, str2);
        return this;
    }

    public n a(l lVar) {
        n a2;
        long currentTimeMillis = System.currentTimeMillis();
        for (int i = 0; i < this.h; i++) {
            try {
                c(a(i));
                if (this.c.a()) {
                    this.c.a((i + 1) + "of" + this.h + ", trying " + lVar.a());
                }
                currentTimeMillis = System.currentTimeMillis();
                a2 = a(lVar.a(), lVar.b(), lVar.c(), lVar.d());
            } catch (m e) {
                if (a(e, currentTimeMillis) && i < this.h - 1) {
                    continue;
                } else if (!this.f2171a.a(e) || i >= this.h - 1) {
                    throw e;
                } else {
                    try {
                        Thread.sleep(this.d);
                    } catch (InterruptedException e2) {
                        throw e;
                    }
                }
            }
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected n a(String str, j jVar, String str2, byte[] bArr) {
        HttpURLConnection httpURLConnection;
        Exception exc;
        HttpURLConnection httpURLConnection2;
        n nVar = null;
        boolean z = true;
        n nVar2 = null;
        try {
            this.j = false;
            httpURLConnection = a(str);
            try {
                try {
                    a(httpURLConnection, jVar, str2);
                    c(httpURLConnection);
                    if (this.c.a()) {
                        this.c.a(httpURLConnection, bArr);
                    }
                    httpURLConnection.connect();
                    this.j = true;
                    boolean z2 = this.l != null && !this.l.isEmpty();
                    if (this.k == null || this.k.isEmpty()) {
                        z = false;
                    }
                    if ((httpURLConnection instanceof HttpsURLConnection) && (z2 || z)) {
                        try {
                            o.a((HttpsURLConnection) httpURLConnection, this.l, this.k);
                        } catch (Exception e) {
                            Log.e(g, "Unable to validate SSL certificates.", e);
                        }
                    }
                    if (httpURLConnection.getDoOutput() && bArr != null) {
                        a(httpURLConnection, bArr);
                    }
                    n a2 = httpURLConnection.getDoInput() ? a(httpURLConnection) : new n(httpURLConnection, null);
                    if (this.c.a()) {
                        this.c.a(a2);
                    }
                    if (httpURLConnection == null) {
                        return a2;
                    }
                    httpURLConnection.disconnect();
                    return a2;
                } catch (Exception e2) {
                    httpURLConnection2 = httpURLConnection;
                    exc = e2;
                    try {
                        try {
                            n b = b(httpURLConnection2);
                            if (b != null) {
                                try {
                                    if (b.a() > 0) {
                                        if (this.c.a()) {
                                            this.c.a(b);
                                        }
                                        if (httpURLConnection2 == null) {
                                            return b;
                                        }
                                        httpURLConnection2.disconnect();
                                        return b;
                                    }
                                } catch (Throwable th) {
                                    nVar = b;
                                    th = th;
                                    httpURLConnection = httpURLConnection2;
                                    if (this.c.a()) {
                                        this.c.a(nVar);
                                    }
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    throw th;
                                }
                            }
                            throw new m(exc, b);
                        } catch (Exception e3) {
                            exc.printStackTrace();
                            if (0 == 0 || nVar2.a() <= 0) {
                                throw new m(exc, null);
                            }
                            if (this.c.a()) {
                                this.c.a((n) null);
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        httpURLConnection = httpURLConnection2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (this.c.a()) {
                }
                if (httpURLConnection != null) {
                }
                throw th;
            }
        } catch (Exception e4) {
            exc = e4;
            httpURLConnection2 = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
    }

    public n a(String str, p pVar) {
        return b(new i(str, pVar));
    }

    protected n a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        byte[] bArr = null;
        try {
            inputStream = this.f2171a.b(httpURLConnection);
            if (inputStream != null) {
                try {
                    bArr = this.f2171a.a(inputStream);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            n nVar = new n(httpURLConnection, bArr);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                }
            }
            return nVar;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    protected HttpURLConnection a(String str) {
        try {
            new URL(str);
            return this.f2171a.a(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + " is not a valid URL", e);
        }
    }

    protected void a(l lVar, b bVar) {
        this.b.a(this, bVar).a(lVar);
    }

    public void a(String str, p pVar, b bVar) {
        a(new k(str, pVar), bVar);
    }

    protected void a(HttpURLConnection httpURLConnection, j jVar, String str) {
        httpURLConnection.setConnectTimeout(this.d);
        httpURLConnection.setReadTimeout(this.e);
        this.f2171a.a(httpURLConnection, jVar, str);
    }

    public void a(Set<String> set) {
        this.l = set;
    }

    protected boolean a(Throwable th, long j) {
        long currentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.c.a()) {
            this.c.a("ELAPSED TIME = " + currentTimeMillis + ", CT = " + this.d + ", RT = " + this.e);
        }
        return this.j ? currentTimeMillis >= ((long) this.e) : currentTimeMillis >= ((long) this.d);
    }

    public n b(l lVar) {
        try {
            return a(lVar.a(), lVar.b(), lVar.c(), lVar.d());
        } catch (m e) {
            this.f2171a.a(e);
            return null;
        } catch (Exception e2) {
            this.f2171a.a(new m(e2, null));
            return null;
        }
    }

    public n b(String str, p pVar) {
        return b(new k(str, pVar));
    }

    protected n b(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        byte[] bArr = null;
        try {
            inputStream = httpURLConnection.getErrorStream();
            if (inputStream != null) {
                try {
                    bArr = this.f2171a.a(inputStream);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            n nVar = new n(httpURLConnection, bArr);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                }
            }
            return nVar;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public p b() {
        return new p();
    }

    public void b(int i) {
        if (i < 1 || i > 18) {
            throw new IllegalArgumentException("Maximum retries must be between 1 and 18");
        }
        this.h = i;
    }

    public void b(Set<String> set) {
        this.k = set;
    }

    public void c(int i) {
        this.d = i;
    }
}
