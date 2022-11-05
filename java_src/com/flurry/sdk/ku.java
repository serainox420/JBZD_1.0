package com.flurry.sdk;

import com.inmobi.monetization.internal.Constants;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ku extends mb {
    static final String e = ku.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private int f2982a;
    private int b;
    private HttpURLConnection d;
    public String f;
    public a g;
    public c k;
    public boolean l;
    public Exception o;
    public boolean r;
    public boolean t;
    private boolean x;
    private boolean y;
    public int h = 10000;
    public int i = Constants.HTTP_TIMEOUT;
    public boolean j = true;
    private final kd<String, String> c = new kd<>();
    long m = -1;
    public long n = -1;
    public int p = -1;
    public final kd<String, String> q = new kd<>();
    private final Object z = new Object();
    public int s = 25000;
    private kt A = new kt(this);

    /* loaded from: classes2.dex */
    public interface c {
        void a(ku kuVar);

        void a(ku kuVar, InputStream inputStream) throws Exception;

        void a(OutputStream outputStream) throws Exception;
    }

    /* loaded from: classes2.dex */
    public static class b implements c {
        @Override // com.flurry.sdk.ku.c
        public final void a(OutputStream outputStream) throws Exception {
        }

        @Override // com.flurry.sdk.ku.c
        public void a(ku kuVar, InputStream inputStream) throws Exception {
        }

        @Override // com.flurry.sdk.ku.c
        public void a(ku kuVar) {
        }
    }

    /* loaded from: classes2.dex */
    public enum a {
        kUnknown,
        kGet,
        kPost,
        kPut,
        kDelete,
        kHead;

        @Override // java.lang.Enum
        public final String toString() {
            switch (this) {
                case kPost:
                    return "POST";
                case kPut:
                    return "PUT";
                case kDelete:
                    return "DELETE";
                case kHead:
                    return "HEAD";
                case kGet:
                    return "GET";
                default:
                    return null;
            }
        }
    }

    public final void a(String str, String str2) {
        this.c.a((kd<String, String>) str, str2);
    }

    public final boolean b() {
        boolean z;
        synchronized (this.z) {
            z = this.y;
        }
        return z;
    }

    public final boolean c() {
        return !e() && d();
    }

    public final boolean d() {
        return this.p >= 200 && this.p < 400 && !this.t;
    }

    public final boolean e() {
        return this.o != null;
    }

    public final List<String> a(String str) {
        return this.q.a((kd<String, String>) str);
    }

    public final void f() {
        km.a(3, e, "Cancelling http request: " + this.f);
        synchronized (this.z) {
            this.y = true;
        }
        if (this.x) {
            return;
        }
        this.x = true;
        if (this.d == null) {
            return;
        }
        new Thread() { // from class: com.flurry.sdk.ku.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    if (ku.this.d != null) {
                        ku.this.d.disconnect();
                    }
                } catch (Throwable th) {
                }
            }
        }.start();
    }

    @Override // com.flurry.sdk.ma
    public void a() {
        try {
            if (this.f == null) {
                return;
            }
            if (!jr.a().b) {
                km.a(3, e, "Network not available, aborting http request: " + this.f);
                return;
            }
            if (this.g == null || a.kUnknown.equals(this.g)) {
                this.g = a.kGet;
            }
            i();
            km.a(4, e, "HTTP status: " + this.p + " for url: " + this.f);
        } catch (Exception e2) {
            km.a(4, e, "HTTP status: " + this.p + " for url: " + this.f);
            km.a(3, e, "Exception during http request: " + this.f, e2);
            this.b = this.d.getReadTimeout();
            this.f2982a = this.d.getConnectTimeout();
            this.o = e2;
        } finally {
            this.A.a();
            h();
        }
    }

    @Override // com.flurry.sdk.mb
    public final void g() {
        f();
    }

    private void i() throws Exception {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        InputStream inputStream = null;
        if (this.y) {
            return;
        }
        this.f = ly.a(this.f);
        try {
            this.d = (HttpURLConnection) new URL(this.f).openConnection();
            this.d.setConnectTimeout(this.h);
            this.d.setReadTimeout(this.i);
            this.d.setRequestMethod(this.g.toString());
            this.d.setInstanceFollowRedirects(this.j);
            this.d.setDoOutput(a.kPost.equals(this.g));
            this.d.setDoInput(true);
            for (Map.Entry<String, String> entry : this.c.b()) {
                this.d.addRequestProperty(entry.getKey(), entry.getValue());
            }
            if (!a.kGet.equals(this.g) && !a.kPost.equals(this.g)) {
                this.d.setRequestProperty("Accept-Encoding", "");
            }
            if (this.y) {
                return;
            }
            if (a.kPost.equals(this.g)) {
                try {
                    OutputStream outputStream = this.d.getOutputStream();
                    try {
                        bufferedOutputStream = new BufferedOutputStream(outputStream);
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = null;
                        inputStream = outputStream;
                    }
                    try {
                        if (this.k != null && !b()) {
                            this.k.a(bufferedOutputStream);
                        }
                        ly.a(bufferedOutputStream);
                        ly.a(outputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = outputStream;
                        ly.a(bufferedOutputStream);
                        ly.a(inputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedOutputStream = null;
                }
            }
            if (this.l) {
                this.m = System.currentTimeMillis();
            }
            if (this.r) {
                this.A.a(this.s);
            }
            this.p = this.d.getResponseCode();
            if (this.l && this.m != -1) {
                this.n = System.currentTimeMillis() - this.m;
            }
            this.A.a();
            for (Map.Entry<String, List<String>> entry2 : this.d.getHeaderFields().entrySet()) {
                for (String str : entry2.getValue()) {
                    this.q.a((kd<String, String>) entry2.getKey(), str);
                }
            }
            if (!a.kGet.equals(this.g) && !a.kPost.equals(this.g)) {
                return;
            }
            if (this.y) {
                return;
            }
            try {
                InputStream inputStream2 = this.d.getInputStream();
                try {
                    bufferedInputStream2 = new BufferedInputStream(inputStream2);
                } catch (Throwable th4) {
                    th = th4;
                    bufferedInputStream = null;
                    inputStream = inputStream2;
                }
                try {
                    if (this.k != null && !b()) {
                        this.k.a(this, bufferedInputStream2);
                    }
                    ly.a((Closeable) bufferedInputStream2);
                    ly.a((Closeable) inputStream2);
                } catch (Throwable th5) {
                    th = th5;
                    inputStream = inputStream2;
                    bufferedInputStream = bufferedInputStream2;
                    ly.a((Closeable) bufferedInputStream);
                    ly.a((Closeable) inputStream);
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedInputStream = null;
            }
        } finally {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        if (this.k != null && !b()) {
            this.k.a(this);
        }
    }

    private void j() {
        if (!this.x) {
            this.x = true;
            if (this.d != null) {
                this.d.disconnect();
            }
        }
    }
}
