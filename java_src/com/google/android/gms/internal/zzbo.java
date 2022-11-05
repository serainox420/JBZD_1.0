package com.google.android.gms.internal;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.zzag;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbo extends zzca {
    public zzbo(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    private void zzbi() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzqV) {
            this.zzqV.zzbW = (String) this.zzre.invoke(null, this.zzpz.getApplicationContext());
        }
    }

    private void zzbj() {
        AdvertisingIdClient zzaY = this.zzpz.zzaY();
        if (zzaY == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info info = zzaY.getInfo();
            String zzr = zzbf.zzr(info.getId());
            if (zzr == null) {
                return;
            }
            synchronized (this.zzqV) {
                this.zzqV.zzbW = zzr;
                this.zzqV.zzbY = Boolean.valueOf(info.isLimitAdTrackingEnabled());
                this.zzqV.zzbX = 5;
            }
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        if (this.zzpz.zzaN()) {
            zzbj();
        } else {
            zzbi();
        }
    }
}
