package com.google.android.gms.wearable.internal;

import android.util.Log;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class zzx extends OutputStream {
    private volatile zzr zzbUe;
    private final OutputStream zzbUg;

    public zzx(OutputStream outputStream) {
        this.zzbUg = (OutputStream) com.google.android.gms.common.internal.zzac.zzw(outputStream);
    }

    private IOException zza(IOException iOException) {
        zzr zzrVar = this.zzbUe;
        if (zzrVar != null) {
            if (Log.isLoggable("ChannelOutputStream", 2)) {
                Log.v("ChannelOutputStream", "Caught IOException, but channel has been closed. Translating to ChannelIOException.", iOException);
            }
            return new ChannelIOException("Channel closed unexpectedly before stream was finished", zzrVar.zzbTU, zzrVar.zzbTV);
        }
        return iOException;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.zzbUg.close();
        } catch (IOException e) {
            throw zza(e);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.zzbUg.flush();
        } catch (IOException e) {
            throw zza(e);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            this.zzbUg.write(i);
        } catch (IOException e) {
            throw zza(e);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.zzbUg.write(bArr);
        } catch (IOException e) {
            throw zza(e);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.zzbUg.write(bArr, i, i2);
        } catch (IOException e) {
            throw zza(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad zzUu() {
        return new zzad() { // from class: com.google.android.gms.wearable.internal.zzx.1
            @Override // com.google.android.gms.wearable.internal.zzad
            public void zzb(zzr zzrVar) {
                zzx.this.zzc(zzrVar);
            }
        };
    }

    void zzc(zzr zzrVar) {
        this.zzbUe = zzrVar;
    }
}
