package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class zzw extends InputStream {
    private final InputStream zzbUd;
    private volatile zzr zzbUe;

    public zzw(InputStream inputStream) {
        this.zzbUd = (InputStream) com.google.android.gms.common.internal.zzac.zzw(inputStream);
    }

    private int zzpv(int i) throws ChannelIOException {
        zzr zzrVar;
        if (i != -1 || (zzrVar = this.zzbUe) == null) {
            return i;
        }
        throw new ChannelIOException("Channel closed unexpectedly before stream was finished", zzrVar.zzbTU, zzrVar.zzbTV);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.zzbUd.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzbUd.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.zzbUd.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.zzbUd.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return zzpv(this.zzbUd.read());
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return zzpv(this.zzbUd.read(bArr));
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return zzpv(this.zzbUd.read(bArr, i, i2));
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.zzbUd.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.zzbUd.skip(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad zzUu() {
        return new zzad() { // from class: com.google.android.gms.wearable.internal.zzw.1
            @Override // com.google.android.gms.wearable.internal.zzad
            public void zzb(zzr zzrVar) {
                zzw.this.zza(zzrVar);
            }
        };
    }

    void zza(zzr zzrVar) {
        this.zzbUe = (zzr) com.google.android.gms.common.internal.zzac.zzw(zzrVar);
    }
}
