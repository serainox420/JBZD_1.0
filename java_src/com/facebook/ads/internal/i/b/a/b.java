package com.facebook.ads.internal.i.b.a;

import com.facebook.ads.internal.i.b.l;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes.dex */
public class b implements com.facebook.ads.internal.i.b.a {

    /* renamed from: a  reason: collision with root package name */
    public File f2180a;
    private final a b;
    private RandomAccessFile c;

    public b(File file, a aVar) {
        try {
            if (aVar == null) {
                throw new NullPointerException();
            }
            this.b = aVar;
            d.a(file.getParentFile());
            boolean exists = file.exists();
            this.f2180a = exists ? file : new File(file.getParentFile(), file.getName() + ".download");
            this.c = new RandomAccessFile(this.f2180a, exists ? "r" : "rw");
        } catch (IOException e) {
            throw new l("Error using file " + file + " as disc cache", e);
        }
    }

    private boolean a(File file) {
        return file.getName().endsWith(".download");
    }

    @Override // com.facebook.ads.internal.i.b.a
    public synchronized int a() {
        try {
        } catch (IOException e) {
            throw new l("Error reading length of file " + this.f2180a, e);
        }
        return (int) this.c.length();
    }

    @Override // com.facebook.ads.internal.i.b.a
    public synchronized int a(byte[] bArr, long j, int i) {
        try {
            this.c.seek(j);
        } catch (IOException e) {
            throw new l(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i), Long.valueOf(j), Integer.valueOf(a()), Integer.valueOf(bArr.length)), e);
        }
        return this.c.read(bArr, 0, i);
    }

    @Override // com.facebook.ads.internal.i.b.a
    public synchronized void a(byte[] bArr, int i) {
        try {
            if (d()) {
                throw new l("Error append cache: cache file " + this.f2180a + " is completed!");
            }
            this.c.seek(a());
            this.c.write(bArr, 0, i);
        } catch (IOException e) {
            throw new l(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i), this.c, Integer.valueOf(bArr.length)), e);
        }
    }

    @Override // com.facebook.ads.internal.i.b.a
    public synchronized void b() {
        try {
            this.c.close();
            this.b.a(this.f2180a);
        } catch (IOException e) {
            throw new l("Error closing file " + this.f2180a, e);
        }
    }

    @Override // com.facebook.ads.internal.i.b.a
    public synchronized void c() {
        if (!d()) {
            b();
            File file = new File(this.f2180a.getParentFile(), this.f2180a.getName().substring(0, this.f2180a.getName().length() - ".download".length()));
            if (!this.f2180a.renameTo(file)) {
                throw new l("Error renaming file " + this.f2180a + " to " + file + " for completion!");
            }
            this.f2180a = file;
            try {
                this.c = new RandomAccessFile(this.f2180a, "r");
            } catch (IOException e) {
                throw new l("Error opening " + this.f2180a + " as disc cache", e);
            }
        }
    }

    @Override // com.facebook.ads.internal.i.b.a
    public synchronized boolean d() {
        return !a(this.f2180a);
    }
}
