package com.flurry.sdk;

import com.facebook.internal.Utility;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
final class aj implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final Charset f2435a;
    private final InputStream b;
    private byte[] c;
    private int d;
    private int e;

    public aj(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    private aj(InputStream inputStream, Charset charset, byte b) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (!charset.equals(ak.f2437a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.b = inputStream;
        this.f2435a = charset;
        this.c = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.b) {
            if (this.c != null) {
                this.c = null;
                this.b.close();
            }
        }
    }

    public final String a() throws IOException {
        int i;
        String byteArrayOutputStream;
        synchronized (this.b) {
            if (this.c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.d >= this.e) {
                b();
            }
            int i2 = this.d;
            while (true) {
                if (i2 != this.e) {
                    if (this.c[i2] != 10) {
                        i2++;
                    } else {
                        byteArrayOutputStream = new String(this.c, this.d, ((i2 == this.d || this.c[i2 + (-1)] != 13) ? i2 : i2 - 1) - this.d, this.f2435a.name());
                        this.d = i2 + 1;
                    }
                } else {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream((this.e - this.d) + 80) { // from class: com.flurry.sdk.aj.1
                        @Override // java.io.ByteArrayOutputStream
                        public final String toString() {
                            try {
                                return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, aj.this.f2435a.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    loop1: while (true) {
                        byteArrayOutputStream2.write(this.c, this.d, this.e - this.d);
                        this.e = -1;
                        b();
                        i = this.d;
                        while (i != this.e) {
                            if (this.c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.d) {
                        byteArrayOutputStream2.write(this.c, this.d, i - this.d);
                    }
                    this.d = i + 1;
                    byteArrayOutputStream = byteArrayOutputStream2.toString();
                }
            }
            return byteArrayOutputStream;
        }
    }

    private void b() throws IOException {
        int read = this.b.read(this.c, 0, this.c.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.d = 0;
        this.e = read;
    }
}
