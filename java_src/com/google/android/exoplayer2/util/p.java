package com.google.android.exoplayer2.util;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: ReusableBufferedOutputStream.java */
/* loaded from: classes2.dex */
public final class p extends BufferedOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3514a;

    public p(OutputStream outputStream) {
        super(outputStream);
    }

    public p(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3514a = true;
        Throwable th = null;
        try {
            flush();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.out.close();
            th = th;
        } catch (Throwable th3) {
            th = th3;
            if (th != null) {
                th = th;
            }
        }
        if (th != null) {
            v.a(th);
        }
    }

    public void a(OutputStream outputStream) {
        a.b(this.f3514a);
        this.out = outputStream;
        this.count = 0;
        this.f3514a = false;
    }
}
