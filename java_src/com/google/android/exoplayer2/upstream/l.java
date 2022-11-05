package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.v;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: DefaultHttpDataSource.java */
/* loaded from: classes2.dex */
public class l implements HttpDataSource {
    private static final Pattern b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> c = new AtomicReference<>();
    private final boolean d;
    private final int e;
    private final int f;
    private final String g;
    private final com.google.android.exoplayer2.util.n<String> h;
    private final HttpDataSource.c i;
    private final HttpDataSource.c j = new HttpDataSource.c();
    private final r<? super l> k;
    private g l;
    private HttpURLConnection m;
    private InputStream n;
    private boolean o;
    private long p;
    private long q;
    private long r;
    private long s;

    public l(String str, com.google.android.exoplayer2.util.n<String> nVar, r<? super l> rVar, int i, int i2, boolean z, HttpDataSource.c cVar) {
        this.g = com.google.android.exoplayer2.util.a.a(str);
        this.h = nVar;
        this.k = rVar;
        this.e = i;
        this.f = i2;
        this.d = z;
        this.i = cVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        if (this.m == null) {
            return null;
        }
        return Uri.parse(this.m.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws HttpDataSource.HttpDataSourceException {
        long j = 0;
        this.l = gVar;
        this.s = 0L;
        this.r = 0L;
        try {
            this.m = b(gVar);
            try {
                int responseCode = this.m.getResponseCode();
                if (responseCode < 200 || responseCode > 299) {
                    Map<String, List<String>> headerFields = this.m.getHeaderFields();
                    e();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(responseCode, headerFields, gVar);
                    if (responseCode == 416) {
                        invalidResponseCodeException.initCause(new DataSourceException(0));
                    }
                    throw invalidResponseCodeException;
                }
                String contentType = this.m.getContentType();
                if (this.h != null && !this.h.a(contentType)) {
                    e();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, gVar);
                }
                if (responseCode == 200 && gVar.d != 0) {
                    j = gVar.d;
                }
                this.p = j;
                if (!gVar.a(1)) {
                    if (gVar.e != -1) {
                        this.q = gVar.e;
                    } else {
                        long a2 = a(this.m);
                        this.q = a2 != -1 ? a2 - this.p : -1L;
                    }
                } else {
                    this.q = gVar.e;
                }
                try {
                    this.n = this.m.getInputStream();
                    this.o = true;
                    if (this.k != null) {
                        this.k.a((r<? super l>) this, gVar);
                    }
                    return this.q;
                } catch (IOException e) {
                    e();
                    throw new HttpDataSource.HttpDataSourceException(e, gVar, 1);
                }
            } catch (IOException e2) {
                e();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + gVar.f3489a.toString(), e2, gVar, 1);
            }
        } catch (IOException e3) {
            throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + gVar.f3489a.toString(), e3, gVar, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            d();
            return b(bArr, i, i2);
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, this.l, 2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws HttpDataSource.HttpDataSourceException {
        boolean z;
        try {
            if (this.n != null) {
                a(this.m, c());
                try {
                    this.n.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, this.l, 3);
                }
            }
            if (!z) {
                return;
            }
        } finally {
            this.n = null;
            e();
            if (this.o) {
                this.o = false;
                if (this.k != null) {
                    this.k.a(this);
                }
            }
        }
    }

    protected final long c() {
        return this.q == -1 ? this.q : this.q - this.s;
    }

    private HttpURLConnection b(g gVar) throws IOException {
        URL url = new URL(gVar.f3489a.toString());
        byte[] bArr = gVar.b;
        long j = gVar.d;
        long j2 = gVar.e;
        boolean a2 = gVar.a(1);
        if (!this.d) {
            return a(url, bArr, j, j2, a2, true);
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i <= 20) {
                HttpURLConnection a3 = a(url, bArr, j, j2, a2, false);
                int responseCode = a3.getResponseCode();
                if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303) {
                    if (bArr != null) {
                        return a3;
                    }
                    if (responseCode != 307 && responseCode != 308) {
                        return a3;
                    }
                }
                bArr = null;
                String headerField = a3.getHeaderField("Location");
                a3.disconnect();
                url = a(url, headerField);
                i = i2;
            } else {
                throw new NoRouteToHostException("Too many redirects: " + i2);
            }
        }
    }

    private HttpURLConnection a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.e);
        httpURLConnection.setReadTimeout(this.f);
        if (this.i != null) {
            for (Map.Entry<String, String> entry : this.i.a().entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, String> entry2 : this.j.a().entrySet()) {
            httpURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (j != 0 || j2 != -1) {
            String str = "bytes=" + j + "-";
            if (j2 != -1) {
                str = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.g);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length == 0) {
                httpURLConnection.connect();
            } else {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
            }
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    private static URL a(URL url, String str) throws IOException {
        if (str == null) {
            throw new ProtocolException("Null location redirect");
        }
        URL url2 = new URL(url, str);
        String protocol = url2.getProtocol();
        if (!"https".equals(protocol) && !"http".equals(protocol)) {
            throw new ProtocolException("Unsupported protocol redirect: " + protocol);
        }
        return url2;
    }

    private static long a(HttpURLConnection httpURLConnection) {
        long j = -1;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (!TextUtils.isEmpty(headerField)) {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException e) {
                Log.e("DefaultHttpDataSource", "Unexpected Content-Length [" + headerField + "]");
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        if (!TextUtils.isEmpty(headerField2)) {
            Matcher matcher = b.matcher(headerField2);
            if (matcher.find()) {
                try {
                    long parseLong = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                    if (j < 0) {
                        return parseLong;
                    }
                    if (j != parseLong) {
                        Log.w("DefaultHttpDataSource", "Inconsistent headers [" + headerField + "] [" + headerField2 + "]");
                        return Math.max(j, parseLong);
                    }
                    return j;
                } catch (NumberFormatException e2) {
                    Log.e("DefaultHttpDataSource", "Unexpected Content-Range [" + headerField2 + "]");
                    return j;
                }
            }
            return j;
        }
        return j;
    }

    private void d() throws IOException {
        if (this.r != this.p) {
            byte[] andSet = c.getAndSet(null);
            if (andSet == null) {
                andSet = new byte[4096];
            }
            while (this.r != this.p) {
                int read = this.n.read(andSet, 0, (int) Math.min(this.p - this.r, andSet.length));
                if (Thread.interrupted()) {
                    throw new InterruptedIOException();
                }
                if (read == -1) {
                    throw new EOFException();
                }
                this.r += read;
                if (this.k != null) {
                    this.k.a((r<? super l>) this, read);
                }
            }
            c.set(andSet);
        }
    }

    private int b(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.q != -1) {
            long j = this.q - this.s;
            if (j == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j);
        }
        int read = this.n.read(bArr, i, i2);
        if (read == -1) {
            if (this.q == -1) {
                return -1;
            }
            throw new EOFException();
        }
        this.s += read;
        if (this.k != null) {
            this.k.a((r<? super l>) this, read);
        }
        return read;
    }

    private static void a(HttpURLConnection httpURLConnection, long j) {
        if (v.f3519a == 19 || v.f3519a == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (name.equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream") || name.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception e) {
            }
        }
    }

    private void e() {
        if (this.m != null) {
            try {
                this.m.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.m = null;
        }
    }
}
