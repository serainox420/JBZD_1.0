package com.flurry.sdk;

import android.os.FileObserver;
import com.flurry.sdk.ai;
import com.google.android.gms.vision.barcode.Barcode;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes2.dex */
public class aq {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2452a = aq.class.getSimpleName();
    private final String b;
    private final long c;
    private final boolean d;
    private FileObserver e;
    private ai f;

    /* loaded from: classes2.dex */
    public class b implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final BufferedInputStream f2456a;
        private final ai.c c;
        private final InputStream d;
        private final GZIPInputStream e;
        private boolean f;

        /* synthetic */ b(aq aqVar, ai.c cVar, boolean z, byte b) throws IOException {
            this(cVar, z);
        }

        private b(ai.c cVar, boolean z) throws IOException {
            if (cVar == null) {
                throw new IllegalArgumentException("Snapshot cannot be null");
            }
            this.c = cVar;
            this.d = this.c.f2434a[0];
            if (this.d == null) {
                throw new IOException("Snapshot inputstream is null");
            }
            if (z) {
                this.e = new GZIPInputStream(this.d);
                if (this.e == null) {
                    throw new IOException("Gzip inputstream is null");
                }
                this.f2456a = new BufferedInputStream(this.e);
                return;
            }
            this.e = null;
            this.f2456a = new BufferedInputStream(this.d);
        }

        protected final void finalize() throws Throwable {
            super.finalize();
            close();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (!this.f) {
                this.f = true;
                ly.a((Closeable) this.f2456a);
                ly.a((Closeable) this.e);
                ly.a((Closeable) this.d);
                ly.a(this.c);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final a f2457a;
        private final ai.a c;
        private final OutputStream d;
        private final GZIPOutputStream e;
        private boolean f;

        /* synthetic */ c(aq aqVar, ai.a aVar, boolean z, byte b) throws IOException {
            this(aVar, z);
        }

        private c(ai.a aVar, boolean z) throws IOException {
            if (aVar == null) {
                throw new IllegalArgumentException("Editor cannot be null");
            }
            this.c = aVar;
            this.d = this.c.a();
            if (this.d == null) {
                throw new IOException("Editor outputstream is null");
            }
            if (z) {
                this.e = new GZIPOutputStream(this.d);
                if (this.e == null) {
                    throw new IOException("Gzip outputstream is null");
                }
                this.f2457a = new a(this.e, (byte) 0);
                return;
            }
            this.e = null;
            this.f2457a = new a(this.d, (byte) 0);
        }

        protected final void finalize() throws Throwable {
            super.finalize();
            close();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z = true;
            if (!this.f) {
                this.f = true;
                ly.a(this.f2457a);
                ly.a(this.e);
                ly.a(this.d);
                if (this.c != null) {
                    if (this.f2457a != null) {
                        z = this.f2457a.f2455a;
                    }
                    try {
                        if (z) {
                            this.c.b();
                            return;
                        }
                        ai.a aVar = this.c;
                        if (aVar.c) {
                            ai.this.a(aVar, false);
                            ai.this.c(aVar.f2431a.f2433a);
                        } else {
                            ai.this.a(aVar, true);
                        }
                        aVar.d = true;
                    } catch (IOException e) {
                        km.a(3, aq.f2452a, "Exception closing editor for cache: " + aq.this.b, e);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends BufferedOutputStream {

        /* renamed from: a  reason: collision with root package name */
        private boolean f2455a;

        /* synthetic */ a(OutputStream outputStream, byte b) {
            this(outputStream);
        }

        private a(OutputStream outputStream) {
            super(outputStream);
            this.f2455a = false;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            try {
                super.close();
            } catch (IOException e) {
                this.f2455a = true;
                throw e;
            }
        }

        @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                this.f2455a = true;
                throw e;
            }
        }

        @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(int i) throws IOException {
            try {
                super.write(i);
            } catch (IOException e) {
                this.f2455a = true;
                throw e;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            try {
                super.write(bArr);
            } catch (IOException e) {
                this.f2455a = true;
                throw e;
            }
        }

        @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                super.write(bArr, i, i2);
            } catch (IOException e) {
                this.f2455a = true;
                throw e;
            }
        }
    }

    public aq(String str, long j) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("The cache must have a name");
        }
        this.b = str;
        this.c = j;
        this.d = false;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        b();
    }

    public final void a() {
        try {
            File file = new File(fk.a(this.b), "canary");
            if (!lx.a(file) || (!file.exists() && !file.createNewFile())) {
                throw new IOException("Could not create canary file.");
            }
            this.e = new FileObserver(file.getAbsolutePath()) { // from class: com.flurry.sdk.aq.1
                @Override // android.os.FileObserver
                public final void onEvent(int i, String str) {
                    if ((i & Barcode.PDF417) != 0 || (i & 1024) != 0) {
                        jy.a().c.post(new ma() { // from class: com.flurry.sdk.aq.1.1
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                if (aq.this.f != null) {
                                    aq.this.b();
                                    aq.this.a();
                                }
                            }
                        });
                    }
                }
            };
            this.e.startWatching();
            this.f = ai.a(fk.a(this.b), this.c);
        } catch (IOException e) {
            km.a(3, f2452a, "Could not open cache: " + this.b);
        }
    }

    public final void b() {
        if (this.e != null) {
            this.e.stopWatching();
            this.e = null;
        }
        ly.a(this.f);
    }

    public final b a(String str) {
        b bVar;
        if (this.f == null || str == null) {
            return null;
        }
        try {
            ai.c a2 = this.f.a(fk.c(str));
            bVar = a2 != null ? new b(this, a2, this.d, (byte) 0) : null;
        } catch (IOException e) {
            km.a(3, f2452a, "Exception during getReader for cache: " + this.b + " key: " + str, e);
            ly.a((Closeable) null);
            bVar = null;
        }
        return bVar;
    }

    public final c b(String str) {
        c cVar;
        if (this.f == null || str == null) {
            return null;
        }
        try {
            ai.a b2 = this.f.b(fk.c(str));
            cVar = b2 != null ? new c(this, b2, this.d, (byte) 0) : null;
        } catch (IOException e) {
            km.a(3, f2452a, "Exception during getWriter for cache: " + this.b + " key: " + str, e);
            ly.a((Closeable) null);
            cVar = null;
        }
        return cVar;
    }

    public final boolean c(String str) {
        if (this.f == null || str == null) {
            return false;
        }
        try {
            return this.f.c(fk.c(str));
        } catch (IOException e) {
            km.a(3, f2452a, "Exception during remove for cache: " + this.b + " key: " + str, e);
            return false;
        }
    }

    public final boolean d(String str) {
        boolean z = false;
        if (this.f != null && str != null) {
            try {
                try {
                    ai.c a2 = this.f.a(fk.c(str));
                    if (a2 != null) {
                        z = true;
                    }
                    ly.a(a2);
                } catch (IOException e) {
                    km.a(3, f2452a, "Exception during exists for cache: " + this.b, e);
                    ly.a((Closeable) null);
                }
            } catch (Throwable th) {
                ly.a((Closeable) null);
                throw th;
            }
        }
        return z;
    }
}
