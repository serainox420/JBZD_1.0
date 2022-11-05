package com.flurry.sdk;

import com.facebook.common.time.Clock;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.sdk.aq;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class am {
    private static final String h = am.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public a f2439a;
    public String b;
    aq d;
    long e;
    public boolean f;
    boolean g;
    private boolean j;
    private int k;
    private int m;
    private long i = Clock.MAX_TIME;
    public int c = 40000;
    private long l = 102400;

    /* loaded from: classes2.dex */
    public interface a {
        void a(am amVar);
    }

    protected abstract OutputStream c() throws IOException;

    protected abstract void d();

    protected abstract void e();

    static /* synthetic */ int m(am amVar) {
        int i = amVar.m;
        amVar.m = i + 1;
        return i;
    }

    public final void a() {
        jy.a().b(new ma() { // from class: com.flurry.sdk.am.1
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (!am.a(am.this)) {
                    am.this.g();
                } else {
                    am.b(am.this);
                }
            }
        });
    }

    public final void b() {
        this.g = true;
        jw.a().a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        int i;
        while (this.m < this.k) {
            if (!this.g) {
                final String a2 = a(this.m);
                final String format = String.format(Locale.US, "%s=%d-%d", "bytes", Long.valueOf(this.m * this.l), Long.valueOf(Math.min(this.e, (i + 1) * this.l) - 1));
                if (this.d.d(a2)) {
                    km.a(3, h, "Downloader: Skipping chunk with range:" + format + " for url: " + this.b + " chunk: " + this.m);
                    this.m++;
                } else {
                    km.a(3, h, "Downloader: Requesting chunk with range:" + format + " for url: " + this.b + " chunk: " + this.m);
                    ku kuVar = new ku();
                    kuVar.f = this.b;
                    kuVar.g = ku.a.kGet;
                    kuVar.w = this.c;
                    kuVar.a("Range", format);
                    kuVar.k = new ku.b() { // from class: com.flurry.sdk.am.4
                        /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
                        /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[RETURN] */
                        @Override // com.flurry.sdk.ku.b, com.flurry.sdk.ku.c
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void a(ku kuVar2, InputStream inputStream) throws Exception {
                            at atVar;
                            IOException iOException = null;
                            iOException = null;
                            at atVar2 = null;
                            if (am.this.g) {
                                throw new IOException("Downloader: request cancelled");
                            }
                            aq.c b = am.this.d.b(a2);
                            if (b != null) {
                                try {
                                    atVar = new at(inputStream, am.this.i);
                                    try {
                                        ly.a(atVar, b.f2457a);
                                        ly.a((Closeable) atVar);
                                        ly.a(b);
                                    } catch (IOException e) {
                                        e = e;
                                        ly.a((Closeable) atVar);
                                        ly.a(b);
                                        iOException = e;
                                        if (iOException != null) {
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        atVar2 = atVar;
                                        ly.a((Closeable) atVar2);
                                        ly.a(b);
                                        throw th;
                                    }
                                } catch (IOException e2) {
                                    e = e2;
                                    atVar = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            if (iOException != null) {
                                return;
                            }
                            am.this.d.c(a2);
                            throw iOException;
                        }

                        @Override // com.flurry.sdk.ku.b, com.flurry.sdk.ku.c
                        public final void a(ku kuVar2) {
                            if (am.this.g) {
                                return;
                            }
                            int i2 = kuVar2.p;
                            km.a(3, am.h, "Downloader: Download status code is:" + i2 + " for url: " + am.this.b + " chunk: " + am.this.m);
                            String str = null;
                            List<String> a3 = kuVar2.a("Content-Range");
                            if (a3 != null && !a3.isEmpty()) {
                                str = a3.get(0);
                                km.a(3, am.h, "Downloader: Content range is:" + str + " for url: " + am.this.b + " chunk: " + am.this.m);
                            }
                            if (kuVar2.c() && i2 == 206 && str != null && str.startsWith(format.replaceAll("=", MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR))) {
                                am.m(am.this);
                                jy.a().b(new ma() { // from class: com.flurry.sdk.am.4.1
                                    @Override // com.flurry.sdk.ma
                                    public final void a() {
                                        am.this.h();
                                    }
                                });
                                return;
                            }
                            jy.a().b(new ma() { // from class: com.flurry.sdk.am.4.2
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    am.this.j();
                                }
                            });
                        }
                    };
                    jw.a().a((Object) this, (am) kuVar);
                    return;
                }
            } else {
                return;
            }
        }
        i();
    }

    private String a(int i) {
        return String.format(Locale.US, "%s__%03d", this.b, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(ku kuVar) {
        List<String> a2 = kuVar.a("Content-Length");
        if (a2 != null && !a2.isEmpty()) {
            try {
                return Long.parseLong(a2.get(0));
            } catch (NumberFormatException e) {
                km.a(3, h, "Downloader: could not determine content length for url: " + this.b);
            }
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (!this.g) {
            km.a(3, h, "Downloader: Requesting file from url: " + this.b);
            ku kuVar = new ku();
            kuVar.f = this.b;
            kuVar.g = ku.a.kGet;
            kuVar.w = this.c;
            kuVar.k = new ku.b() { // from class: com.flurry.sdk.am.2
                @Override // com.flurry.sdk.ku.b, com.flurry.sdk.ku.c
                public final void a(ku kuVar2, InputStream inputStream) throws Exception {
                    at atVar;
                    if (am.this.g) {
                        throw new IOException("Downloader: request cancelled");
                    }
                    am.this.e = am.this.a(kuVar2);
                    if (am.this.e > am.this.i) {
                        throw new IOException("Downloader: content length: " + am.this.e + " exceeds size limit: " + am.this.i);
                    }
                    try {
                        atVar = new at(inputStream, am.this.i);
                    } catch (Throwable th) {
                        th = th;
                        atVar = null;
                    }
                    try {
                        ly.a(atVar, am.this.c());
                        am.this.d();
                        ly.a((Closeable) atVar);
                    } catch (Throwable th2) {
                        th = th2;
                        am.this.d();
                        ly.a((Closeable) atVar);
                        throw th;
                    }
                }

                @Override // com.flurry.sdk.ku.b, com.flurry.sdk.ku.c
                public final void a(ku kuVar2) {
                    if (am.this.g) {
                        return;
                    }
                    km.a(3, am.h, "Downloader: Download status code is:" + kuVar2.p + " for url: " + am.this.b);
                    am.this.f = kuVar2.c();
                    jy.a().b(new ma() { // from class: com.flurry.sdk.am.2.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            if (!am.this.f) {
                                am.this.e();
                            }
                            am.this.j();
                        }
                    });
                }
            };
            jw.a().a((Object) this, (am) kuVar);
        }
    }

    private void i() {
        aq.b bVar;
        IOException iOException = null;
        if (!this.g) {
            km.a(3, h, "Downloader: assembling output file for url: " + this.b);
            try {
                OutputStream c = c();
                for (int i = 0; i < this.k; i++) {
                    if (this.g) {
                        throw new IOException("Download cancelled");
                    }
                    String a2 = a(i);
                    try {
                        bVar = this.d.a(a2);
                        if (bVar == null) {
                            throw new IOException("Could not create reader for chunk key: " + a2);
                        }
                        try {
                            ly.a(bVar.f2456a, c);
                            ly.a(bVar);
                            this.d.c(a2);
                        } catch (Throwable th) {
                            th = th;
                        }
                        th = th;
                    } catch (Throwable th2) {
                        th = th2;
                        bVar = null;
                    }
                    ly.a(bVar);
                    throw th;
                }
                d();
            } catch (IOException e) {
                d();
                iOException = e;
            } catch (Throwable th3) {
                d();
                throw th3;
            }
            if (iOException == null) {
                km.a(3, h, "Downloader: assemble succeeded for url: " + this.b);
                this.f = true;
            } else {
                km.a(3, h, "Downloader: assemble failed for url: " + this.b + " failed with exception: " + iOException);
                for (int i2 = 0; i2 < this.k; i2++) {
                    this.d.c(a(i2));
                }
                e();
            }
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (!this.g && this.f2439a != null) {
            km.a(3, h, "Downloader: finished -- success: " + this.f + " for url: " + this.b);
            this.f2439a.a(this);
        }
    }

    static /* synthetic */ boolean a(am amVar) {
        return amVar.d != null;
    }

    static /* synthetic */ void b(am amVar) {
        if (amVar.g) {
            return;
        }
        ks ksVar = new ks();
        ksVar.f = amVar.b;
        ksVar.g = ku.a.kHead;
        ksVar.f2978a = new ks.a<Void, Void>() { // from class: com.flurry.sdk.am.3
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<Void, Void> ksVar2, Void r15) {
                if (!am.this.g) {
                    km.a(3, am.h, "Downloader: HTTP HEAD status code is:" + ksVar2.p + " for url: " + am.this.b);
                    if (ksVar2.c()) {
                        am.this.e = am.this.a(ksVar2);
                        List<String> a2 = ksVar2.a("Accept-Ranges");
                        if (am.this.e <= 0 || a2 == null || a2.isEmpty()) {
                            am.this.k = 1;
                        } else {
                            am.this.j = "bytes".equals(a2.get(0).trim());
                            am.this.k = (int) ((am.this.e % am.this.l > 0 ? 1 : 0) + (am.this.e / am.this.l));
                        }
                        if (am.this.i > 0 && am.this.e > am.this.i) {
                            km.a(3, am.h, "Downloader: Size limit exceeded -- limit: " + am.this.i + ", content-length: " + am.this.e + " bytes!");
                            jy.a().b(new ma() { // from class: com.flurry.sdk.am.3.1
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    am.this.j();
                                }
                            });
                            return;
                        }
                        jy.a().b(new ma() { // from class: com.flurry.sdk.am.3.2
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                am.j(am.this);
                            }
                        });
                        return;
                    }
                    jy.a().b(new ma() { // from class: com.flurry.sdk.am.3.3
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            am.this.j();
                        }
                    });
                }
            }
        };
        km.a(3, h, "Downloader: requesting HTTP HEAD for url: " + amVar.b);
        jw.a().a((Object) amVar, (am) ksVar);
    }

    static /* synthetic */ void j(am amVar) {
        boolean z = true;
        if (!amVar.g) {
            if (amVar.d == null || !amVar.j || amVar.k <= 1) {
                z = false;
            }
            if (z) {
                for (int i = 0; i < amVar.k; i++) {
                    amVar.d.d(amVar.a(i));
                }
                amVar.h();
                return;
            }
            amVar.g();
        }
    }
}
