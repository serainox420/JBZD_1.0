package com.google.android.gms.internal;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
public class zzab extends ByteArrayOutputStream {
    private final zzv zzaq;

    public zzab(zzv zzvVar, int i) {
        this.zzaq = zzvVar;
        this.buf = this.zzaq.zzb(Math.max(i, 256));
    }

    private void zzd(int i) {
        if (this.count + i <= this.buf.length) {
            return;
        }
        byte[] zzb = this.zzaq.zzb((this.count + i) * 2);
        System.arraycopy(this.buf, 0, zzb, 0, this.count);
        this.zzaq.zza(this.buf);
        this.buf = zzb;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzaq.zza(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.zzaq.zza(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        zzd(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        zzd(i2);
        super.write(bArr, i, i2);
    }
}
