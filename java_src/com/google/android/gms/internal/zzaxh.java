package com.google.android.gms.internal;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class zzaxh {
    private final ExecutorService zzbzc = Executors.newSingleThreadExecutor();
    private volatile InputStream zzbzd = null;
    private volatile boolean zzbze = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(OutputStream outputStream, boolean z, long j) {
        int i = 1;
        if (!z) {
            i = 0;
        }
        try {
            outputStream.write(i);
        } catch (IOException e) {
            Log.w("NearbyConnections", String.format("Unable to deliver status for Payload %d", Long.valueOf(j)), e);
        } finally {
            com.google.android.gms.common.util.zzp.zzb(outputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void shutdown() {
        this.zzbze = true;
        this.zzbzc.shutdownNow();
        com.google.android.gms.common.util.zzp.zzb(this.zzbzd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(final InputStream inputStream, final OutputStream outputStream, final OutputStream outputStream2, final long j) {
        this.zzbzc.execute(new Runnable() { // from class: com.google.android.gms.internal.zzaxh.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                zzaxh.this.zzbzd = inputStream;
                try {
                    com.google.android.gms.common.util.zzp.zza(inputStream, outputStream, false, 65536);
                    com.google.android.gms.common.util.zzp.zzb(inputStream);
                    zzaxh.this.zza(outputStream2, false, j);
                    com.google.android.gms.common.util.zzp.zzb(outputStream);
                    zzaxh.this.zzbzd = null;
                } catch (IOException e) {
                    try {
                        if (!zzaxh.this.zzbze) {
                            Log.w("NearbyConnections", String.format("Exception copying stream for Payload %d", Long.valueOf(j)), e);
                        } else {
                            Log.d("NearbyConnections", String.format("Terminating copying stream for Payload %d due to shutdown of OutgoingPayloadStreamer.", Long.valueOf(j)));
                        }
                        com.google.android.gms.common.util.zzp.zzb(inputStream);
                        zzaxh.this.zza(outputStream2, true, j);
                        com.google.android.gms.common.util.zzp.zzb(outputStream);
                        zzaxh.this.zzbzd = null;
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        com.google.android.gms.common.util.zzp.zzb(inputStream);
                        zzaxh.this.zza(outputStream2, z, j);
                        com.google.android.gms.common.util.zzp.zzb(outputStream);
                        zzaxh.this.zzbzd = null;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    com.google.android.gms.common.util.zzp.zzb(inputStream);
                    zzaxh.this.zza(outputStream2, z, j);
                    com.google.android.gms.common.util.zzp.zzb(outputStream);
                    zzaxh.this.zzbzd = null;
                    throw th;
                }
            }
        });
    }
}
