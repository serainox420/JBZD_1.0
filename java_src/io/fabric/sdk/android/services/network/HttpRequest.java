package io.fabric.sdk.android.services.network;

import com.facebook.internal.Utility;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;
/* loaded from: classes3.dex */
public class HttpRequest {
    private static final String[] b = new String[0];
    private static b c = b.f5705a;

    /* renamed from: a  reason: collision with root package name */
    public final URL f5702a;
    private final String e;
    private d f;
    private boolean g;
    private String k;
    private int l;
    private HttpURLConnection d = null;
    private boolean h = true;
    private boolean i = false;
    private int j = Utility.DEFAULT_STREAM_BUFFER_SIZE;

    /* loaded from: classes3.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f5705a = new b() { // from class: io.fabric.sdk.android.services.network.HttpRequest.b.1
            @Override // io.fabric.sdk.android.services.network.HttpRequest.b
            public HttpURLConnection a(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }

            @Override // io.fabric.sdk.android.services.network.HttpRequest.b
            public HttpURLConnection a(URL url, Proxy proxy) throws IOException {
                return (HttpURLConnection) url.openConnection(proxy);
            }
        };

        HttpURLConnection a(URL url) throws IOException;

        HttpURLConnection a(URL url, Proxy proxy) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    private static StringBuilder a(String str, StringBuilder sb) {
        if (str.indexOf(58) + 2 == str.lastIndexOf(47)) {
            sb.append('/');
        }
        return sb;
    }

    private static StringBuilder b(String str, StringBuilder sb) {
        int indexOf = str.indexOf(63);
        int length = sb.length() - 1;
        if (indexOf == -1) {
            sb.append('?');
        } else if (indexOf < length && str.charAt(length) != '&') {
            sb.append('&');
        }
        return sb;
    }

    /* loaded from: classes3.dex */
    public static class HttpRequestException extends RuntimeException {
        protected HttpRequestException(IOException iOException) {
            super(iOException);
        }

        @Override // java.lang.Throwable
        /* renamed from: getCause */
        public IOException mo560getCause() {
            return (IOException) super.getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public static abstract class c<V> implements Callable<V> {
        protected abstract V b() throws HttpRequestException, IOException;

        protected abstract void c() throws IOException;

        protected c() {
        }

        @Override // java.util.concurrent.Callable
        public V call() throws HttpRequestException {
            boolean z = true;
            try {
                try {
                    try {
                        V b = b();
                        try {
                            c();
                            return b;
                        } catch (IOException e) {
                            throw new HttpRequestException(e);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            c();
                        } catch (IOException e2) {
                            if (!z) {
                                throw new HttpRequestException(e2);
                            }
                        }
                        throw th;
                    }
                } catch (HttpRequestException e3) {
                    throw e3;
                }
            } catch (IOException e4) {
                throw new HttpRequestException(e4);
            } catch (Throwable th2) {
                th = th2;
                z = false;
                c();
                throw th;
            }
        }
    }

    /* loaded from: classes3.dex */
    protected static abstract class a<V> extends c<V> {

        /* renamed from: a  reason: collision with root package name */
        private final Closeable f5704a;
        private final boolean b;

        protected a(Closeable closeable, boolean z) {
            this.f5704a = closeable;
            this.b = z;
        }

        @Override // io.fabric.sdk.android.services.network.HttpRequest.c
        protected void c() throws IOException {
            if (this.f5704a instanceof Flushable) {
                ((Flushable) this.f5704a).flush();
            }
            if (this.b) {
                try {
                    this.f5704a.close();
                    return;
                } catch (IOException e) {
                    return;
                }
            }
            this.f5704a.close();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends BufferedOutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final CharsetEncoder f5706a;

        public d(OutputStream outputStream, String str, int i) {
            super(outputStream, i);
            this.f5706a = Charset.forName(HttpRequest.f(str)).newEncoder();
        }

        public d a(String str) throws IOException {
            ByteBuffer encode = this.f5706a.encode(CharBuffer.wrap(str));
            super.write(encode.array(), 0, encode.limit());
            return this;
        }
    }

    public static String a(CharSequence charSequence) throws HttpRequestException {
        int port;
        try {
            URL url = new URL(charSequence.toString());
            String host = url.getHost();
            if (url.getPort() != -1) {
                host = host + ':' + Integer.toString(port);
            }
            try {
                String aSCIIString = new URI(url.getProtocol(), host, url.getPath(), url.getQuery(), null).toASCIIString();
                int indexOf = aSCIIString.indexOf(63);
                if (indexOf > 0 && indexOf + 1 < aSCIIString.length()) {
                    return aSCIIString.substring(0, indexOf + 1) + aSCIIString.substring(indexOf + 1).replace("+", "%2B");
                }
                return aSCIIString;
            } catch (URISyntaxException e) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e);
                throw new HttpRequestException(iOException);
            }
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    public static String a(CharSequence charSequence, Map<?, ?> map) {
        String charSequence2 = charSequence.toString();
        if (map != null && !map.isEmpty()) {
            StringBuilder sb = new StringBuilder(charSequence2);
            a(charSequence2, sb);
            b(charSequence2, sb);
            Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
            Map.Entry<?, ?> next = it.next();
            sb.append(next.getKey().toString());
            sb.append('=');
            Object value = next.getValue();
            if (value != null) {
                sb.append(value);
            }
            while (it.hasNext()) {
                sb.append('&');
                Map.Entry<?, ?> next2 = it.next();
                sb.append(next2.getKey().toString());
                sb.append('=');
                Object value2 = next2.getValue();
                if (value2 != null) {
                    sb.append(value2);
                }
            }
            return sb.toString();
        }
        return charSequence2;
    }

    public static HttpRequest b(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "GET");
    }

    public static HttpRequest a(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String a2 = a(charSequence, map);
        if (z) {
            a2 = a((CharSequence) a2);
        }
        return b((CharSequence) a2);
    }

    public static HttpRequest c(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "POST");
    }

    public static HttpRequest b(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String a2 = a(charSequence, map);
        if (z) {
            a2 = a((CharSequence) a2);
        }
        return c((CharSequence) a2);
    }

    public static HttpRequest d(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "PUT");
    }

    public static HttpRequest e(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "DELETE");
    }

    public HttpRequest(CharSequence charSequence, String str) throws HttpRequestException {
        try {
            this.f5702a = new URL(charSequence.toString());
            this.e = str;
        } catch (MalformedURLException e) {
            throw new HttpRequestException(e);
        }
    }

    private Proxy q() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.k, this.l));
    }

    private HttpURLConnection r() {
        HttpURLConnection a2;
        try {
            if (this.k != null) {
                a2 = c.a(this.f5702a, q());
            } else {
                a2 = c.a(this.f5702a);
            }
            a2.setRequestMethod(this.e);
            return a2;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String toString() {
        return p() + ' ' + o();
    }

    public HttpURLConnection a() {
        if (this.d == null) {
            this.d = r();
        }
        return this.d;
    }

    public int b() throws HttpRequestException {
        try {
            k();
            return a().getResponseCode();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public boolean c() throws HttpRequestException {
        return 200 == b();
    }

    protected ByteArrayOutputStream d() {
        int j = j();
        return j > 0 ? new ByteArrayOutputStream(j) : new ByteArrayOutputStream();
    }

    public String a(String str) throws HttpRequestException {
        ByteArrayOutputStream d2 = d();
        try {
            a(f(), d2);
            return d2.toString(f(str));
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String e() throws HttpRequestException {
        return a(h());
    }

    public BufferedInputStream f() throws HttpRequestException {
        return new BufferedInputStream(g(), this.j);
    }

    public InputStream g() throws HttpRequestException {
        InputStream inputStream;
        if (b() < 400) {
            try {
                inputStream = a().getInputStream();
            } catch (IOException e) {
                throw new HttpRequestException(e);
            }
        } else {
            inputStream = a().getErrorStream();
            if (inputStream == null) {
                try {
                    inputStream = a().getInputStream();
                } catch (IOException e2) {
                    throw new HttpRequestException(e2);
                }
            }
        }
        if (!this.i || !"gzip".equals(i())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e3) {
            throw new HttpRequestException(e3);
        }
    }

    public HttpRequest a(int i) {
        a().setConnectTimeout(i);
        return this;
    }

    public HttpRequest a(String str, String str2) {
        a().setRequestProperty(str, str2);
        return this;
    }

    public HttpRequest a(Map.Entry<String, String> entry) {
        return a(entry.getKey(), entry.getValue());
    }

    public String b(String str) throws HttpRequestException {
        l();
        return a().getHeaderField(str);
    }

    public int c(String str) throws HttpRequestException {
        return a(str, -1);
    }

    public int a(String str, int i) throws HttpRequestException {
        l();
        return a().getHeaderFieldInt(str, i);
    }

    public String b(String str, String str2) {
        return c(b(str), str2);
    }

    protected String c(String str, String str2) {
        int i;
        int i2;
        String trim;
        int length;
        if (str == null || str.length() == 0) {
            return null;
        }
        int length2 = str.length();
        int indexOf = str.indexOf(59) + 1;
        if (indexOf == 0 || indexOf == length2) {
            return null;
        }
        int indexOf2 = str.indexOf(59, indexOf);
        if (indexOf2 == -1) {
            i = indexOf;
            i2 = length2;
        } else {
            i = indexOf;
            i2 = indexOf2;
        }
        while (i < i2) {
            int indexOf3 = str.indexOf(61, i);
            if (indexOf3 != -1 && indexOf3 < i2 && str2.equals(str.substring(i, indexOf3).trim()) && (length = (trim = str.substring(indexOf3 + 1, i2).trim()).length()) != 0) {
                if (length > 2 && '\"' == trim.charAt(0) && '\"' == trim.charAt(length - 1)) {
                    return trim.substring(1, length - 1);
                }
                return trim;
            }
            int i3 = i2 + 1;
            int indexOf4 = str.indexOf(59, i3);
            if (indexOf4 == -1) {
                indexOf4 = length2;
            }
            int i4 = indexOf4;
            i = i3;
            i2 = i4;
        }
        return null;
    }

    public String h() {
        return b("Content-Type", "charset");
    }

    public HttpRequest a(boolean z) {
        a().setUseCaches(z);
        return this;
    }

    public String i() {
        return b("Content-Encoding");
    }

    public HttpRequest d(String str) {
        return d(str, null);
    }

    public HttpRequest d(String str, String str2) {
        return (str2 == null || str2.length() <= 0) ? a("Content-Type", str) : a("Content-Type", str + "; charset=" + str2);
    }

    public int j() {
        return c("Content-Length");
    }

    protected HttpRequest a(final InputStream inputStream, final OutputStream outputStream) throws IOException {
        return new a<HttpRequest>(inputStream, this.h) { // from class: io.fabric.sdk.android.services.network.HttpRequest.1
            @Override // io.fabric.sdk.android.services.network.HttpRequest.c
            /* renamed from: a */
            public HttpRequest b() throws IOException {
                byte[] bArr = new byte[HttpRequest.this.j];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        outputStream.write(bArr, 0, read);
                    } else {
                        return HttpRequest.this;
                    }
                }
            }
        }.call();
    }

    protected HttpRequest k() throws IOException {
        if (this.f != null) {
            if (this.g) {
                this.f.a("\r\n--00content0boundary00--\r\n");
            }
            if (this.h) {
                try {
                    this.f.close();
                } catch (IOException e) {
                }
            } else {
                this.f.close();
            }
            this.f = null;
        }
        return this;
    }

    protected HttpRequest l() throws HttpRequestException {
        try {
            return k();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    protected HttpRequest m() throws IOException {
        if (this.f == null) {
            a().setDoOutput(true);
            this.f = new d(a().getOutputStream(), c(a().getRequestProperty("Content-Type"), "charset"), this.j);
        }
        return this;
    }

    protected HttpRequest n() throws IOException {
        if (!this.g) {
            this.g = true;
            d("multipart/form-data; boundary=00content0boundary00").m();
            this.f.a("--00content0boundary00\r\n");
        } else {
            this.f.a("\r\n--00content0boundary00\r\n");
        }
        return this;
    }

    protected HttpRequest a(String str, String str2, String str3) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"").append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"").append(str2);
        }
        sb.append('\"');
        f("Content-Disposition", sb.toString());
        if (str3 != null) {
            f("Content-Type", str3);
        }
        return f("\r\n");
    }

    public HttpRequest e(String str, String str2) {
        return b(str, (String) null, str2);
    }

    public HttpRequest b(String str, String str2, String str3) throws HttpRequestException {
        return a(str, str2, (String) null, str3);
    }

    public HttpRequest a(String str, String str2, String str3, String str4) throws HttpRequestException {
        try {
            n();
            a(str, str2, str3);
            this.f.a(str4);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest a(String str, Number number) throws HttpRequestException {
        return a(str, (String) null, number);
    }

    public HttpRequest a(String str, String str2, Number number) throws HttpRequestException {
        return b(str, str2, number != null ? number.toString() : null);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HttpRequest a(String str, String str2, String str3, File file) throws HttpRequestException {
        InputStream inputStream = null;
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    HttpRequest a2 = a(str, str2, str3, bufferedInputStream);
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e) {
                        }
                    }
                    return a2;
                } catch (IOException e2) {
                    e = e2;
                    throw new HttpRequestException(e);
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    public HttpRequest a(String str, String str2, String str3, InputStream inputStream) throws HttpRequestException {
        try {
            n();
            a(str, str2, str3);
            a(inputStream, this.f);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest f(String str, String str2) throws HttpRequestException {
        return f((CharSequence) str).f(": ").f((CharSequence) str2).f("\r\n");
    }

    public HttpRequest f(CharSequence charSequence) throws HttpRequestException {
        try {
            m();
            this.f.a(charSequence.toString());
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public URL o() {
        return a().getURL();
    }

    public String p() {
        return a().getRequestMethod();
    }
}
