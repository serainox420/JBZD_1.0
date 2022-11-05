package com.facebook.ads.internal.i.b;

import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.Utility;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes.dex */
public class h implements n {

    /* renamed from: a  reason: collision with root package name */
    public final String f2195a;
    private HttpURLConnection b;
    private InputStream c;
    private volatile int d;
    private volatile String e;

    public h(h hVar) {
        this.d = Integer.MIN_VALUE;
        this.f2195a = hVar.f2195a;
        this.e = hVar.e;
        this.d = hVar.d;
    }

    public h(String str) {
        this(str, m.a(str));
    }

    public h(String str, String str2) {
        this.d = Integer.MIN_VALUE;
        this.f2195a = (String) j.a(str);
        this.e = str2;
    }

    private int a(HttpURLConnection httpURLConnection, int i, int i2) {
        int contentLength = httpURLConnection.getContentLength();
        return i2 == 200 ? contentLength : i2 == 206 ? contentLength + i : this.d;
    }

    private HttpURLConnection a(int i, int i2) {
        HttpURLConnection httpURLConnection;
        boolean z;
        String str = this.f2195a;
        int i3 = 0;
        do {
            Log.d("ProxyCache", "Open connection " + (i > 0 ? " with offset " + i : "") + " to " + str);
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (i > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + i + "-");
            }
            if (i2 > 0) {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z) {
                str = httpURLConnection.getHeaderField("Location");
                i3++;
                httpURLConnection.disconnect();
            }
            if (i3 > 5) {
                throw new l("Too many redirects: " + i3);
            }
        } while (z);
        return httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d() {
        HttpURLConnection httpURLConnection;
        InputStream inputStream = null;
        Log.d("ProxyCache", "Read content info from " + this.f2195a);
        try {
            httpURLConnection = a(0, 10000);
            try {
                try {
                    this.d = httpURLConnection.getContentLength();
                    this.e = httpURLConnection.getContentType();
                    inputStream = httpURLConnection.getInputStream();
                    Log.i("ProxyCache", "Content info for `" + this.f2195a + "`: mime: " + this.e + ", content-length: " + this.d);
                    m.a(inputStream);
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (IOException e) {
                    e = e;
                    Log.e("ProxyCache", "Error fetching info from " + this.f2195a, e);
                    m.a(inputStream);
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th) {
                th = th;
                m.a(inputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
            m.a(inputStream);
            if (httpURLConnection != null) {
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.internal.i.b.n
    public synchronized int a() {
        if (this.d == Integer.MIN_VALUE) {
            d();
        }
        return this.d;
    }

    @Override // com.facebook.ads.internal.i.b.n
    public int a(byte[] bArr) {
        if (this.c == null) {
            throw new l("Error reading data from " + this.f2195a + ": connection is absent!");
        }
        try {
            return this.c.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            throw new i("Reading source " + this.f2195a + " is interrupted", e);
        } catch (IOException e2) {
            throw new l("Error reading data from " + this.f2195a, e2);
        }
    }

    @Override // com.facebook.ads.internal.i.b.n
    public void a(int i) {
        try {
            this.b = a(i, -1);
            this.e = this.b.getContentType();
            this.c = new BufferedInputStream(this.b.getInputStream(), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            this.d = a(this.b, i, this.b.getResponseCode());
        } catch (IOException e) {
            throw new l("Error opening connection for " + this.f2195a + " with offset " + i, e);
        }
    }

    @Override // com.facebook.ads.internal.i.b.n
    public void b() {
        if (this.b != null) {
            try {
                this.b.disconnect();
            } catch (NullPointerException e) {
                throw new l("Error disconnecting HttpUrlConnection", e);
            }
        }
    }

    public synchronized String c() {
        if (TextUtils.isEmpty(this.e)) {
            d();
        }
        return this.e;
    }

    public String toString() {
        return "HttpUrlSource{url='" + this.f2195a + "}";
    }
}
