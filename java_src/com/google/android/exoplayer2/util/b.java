package com.google.android.exoplayer2.util;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: AtomicFile.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final File f3500a;
    private final File b;

    public b(File file) {
        this.f3500a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    public void a() {
        this.f3500a.delete();
        this.b.delete();
    }

    public OutputStream b() throws IOException {
        if (this.f3500a.exists()) {
            if (!this.b.exists()) {
                if (!this.f3500a.renameTo(this.b)) {
                    Log.w("AtomicFile", "Couldn't rename file " + this.f3500a + " to backup file " + this.b);
                }
            } else {
                this.f3500a.delete();
            }
        }
        try {
            return new a(this.f3500a);
        } catch (FileNotFoundException e) {
            if (!this.f3500a.getParentFile().mkdirs()) {
                throw new IOException("Couldn't create directory " + this.f3500a);
            }
            try {
                return new a(this.f3500a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.f3500a);
            }
        }
    }

    public void a(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.b.delete();
    }

    public InputStream c() throws FileNotFoundException {
        d();
        return new FileInputStream(this.f3500a);
    }

    private void d() {
        if (this.b.exists()) {
            this.f3500a.delete();
            this.b.renameTo(this.f3500a);
        }
    }

    /* compiled from: AtomicFile.java */
    /* loaded from: classes2.dex */
    private static final class a extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final FileOutputStream f3501a;
        private boolean b = false;

        public a(File file) throws FileNotFoundException {
            this.f3501a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.b) {
                this.b = true;
                flush();
                try {
                    this.f3501a.getFD().sync();
                } catch (IOException e) {
                    Log.w("AtomicFile", "Failed to sync file descriptor:", e);
                }
                this.f3501a.close();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f3501a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f3501a.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f3501a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f3501a.write(bArr, i, i2);
        }
    }
}
