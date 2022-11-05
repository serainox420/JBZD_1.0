package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzbnp;
/* loaded from: classes2.dex */
public class zzbnq {
    private static zzbnq zzbZm;
    private DynamiteModule zzbZl;

    /* loaded from: classes2.dex */
    public static class zza extends Exception {
        private zza(Throwable th) {
            super(th);
        }
    }

    private zzbnq() {
    }

    public static zzbnq zzWD() {
        zzbnq zzbnqVar;
        synchronized (zzbnq.class) {
            if (zzbZm != null) {
                zzbnqVar = zzbZm;
            } else {
                zzbZm = new zzbnq();
                zzbnqVar = zzbZm;
            }
        }
        return zzbnqVar;
    }

    public zzbnp zzWE() throws zza {
        com.google.android.gms.common.internal.zzac.zzw(this.zzbZl);
        try {
            return zzbnp.zza.zzfM(this.zzbZl.zzdT("com.google.firebase.crash.internal.api.FirebaseCrashApiImpl"));
        } catch (DynamiteModule.zza e) {
            throw new zza(e);
        }
    }

    public void zzaG(Context context) throws zza {
        synchronized (zzbnq.class) {
            if (this.zzbZl != null) {
                return;
            }
            try {
                this.zzbZl = DynamiteModule.zza(context, DynamiteModule.zzaRW, "com.google.android.gms.crash");
            } catch (DynamiteModule.zza e) {
                throw new zza(e);
            }
        }
    }
}
