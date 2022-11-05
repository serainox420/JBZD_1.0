package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import java.util.Date;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbbi implements com.google.android.gms.common.util.zze {
    private final Bundle zzbJA;
    private final String zzbJB;
    private final Date zzbJC;
    private final String zzbJD;
    private Map<String, Object> zzbJE;
    private boolean zzbJF;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;

    public zzbbi(String str, Bundle bundle, String str2, Date date, boolean z, com.google.android.gms.tagmanager.zzbb zzbbVar) {
        this.zzbJB = str;
        this.zzbJA = bundle == null ? new Bundle() : bundle;
        this.zzbJC = date;
        this.zzbJD = str2;
        this.zzbJF = z;
        this.zzbJl = zzbbVar;
    }

    @Override // com.google.android.gms.common.util.zze
    public long currentTimeMillis() {
        return this.zzbJC.getTime();
    }

    @Override // com.google.android.gms.common.util.zze
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.zze
    public long nanoTime() {
        return System.nanoTime();
    }

    public Map<String, Object> zzQI() {
        if (this.zzbJE == null) {
            try {
                this.zzbJE = this.zzbJl.zzQI();
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e.getMessage());
                zzbbu.e(valueOf.length() != 0 ? "Error calling measurement proxy:".concat(valueOf) : new String("Error calling measurement proxy:"));
            }
        }
        return this.zzbJE;
    }

    public String zzRU() {
        return this.zzbJB;
    }

    public Bundle zzRV() {
        return this.zzbJA;
    }

    public String zzRW() {
        return this.zzbJD;
    }

    public boolean zzRX() {
        return this.zzbJF;
    }

    public void zzaU(boolean z) {
        this.zzbJF = z;
    }
}
