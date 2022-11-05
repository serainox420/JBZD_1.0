package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbro;
import com.google.firebase.a;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.Logger;
/* loaded from: classes2.dex */
public class zzbpb extends zzbpa {
    public synchronized void setLogLevel(Logger.Level level) {
        zzYx();
        switch (level) {
            case DEBUG:
                this.zzcdW = zzbro.zza.DEBUG;
                break;
            case INFO:
                this.zzcdW = zzbro.zza.INFO;
                break;
            case WARN:
                this.zzcdW = zzbro.zza.WARN;
                break;
            case ERROR:
                this.zzcdW = zzbro.zza.ERROR;
                break;
            case NONE:
                this.zzcdW = zzbro.zza.NONE;
                break;
            default:
                String valueOf = String.valueOf(level);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Unknown log level: ").append(valueOf).toString());
        }
    }

    public synchronized void setPersistenceCacheSizeBytes(long j) {
        zzYx();
        if (j < 1048576) {
            throw new DatabaseException("The minimum cache size must be at least 1MB");
        }
        if (j > 104857600) {
            throw new DatabaseException("Firebase Database currently doesn't support a cache size larger than 100MB");
        }
        this.cacheSize = j;
    }

    public synchronized void setPersistenceEnabled(boolean z) {
        zzYx();
        this.zzcbF = z;
    }

    public synchronized void zzf(a aVar) {
        this.zzcau = aVar;
    }

    public synchronized void zziY(String str) {
        zzYx();
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Session identifier is not allowed to be empty or null!");
        }
        this.zzcdV = str;
    }
}
