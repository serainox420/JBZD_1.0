package com.google.android.gms.internal;

import android.support.v4.f.k;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public class zzayq {
    private final k<Object, zzayj> zzbBu = new k<>(1);

    private static boolean zza(zzayj zzayjVar) {
        return zzayjVar != null && zzayjVar.zzOP().zztK();
    }

    private synchronized <C> C zzk(zzabh<C> zzabhVar) {
        C c;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzbBu.size()) {
                c = null;
                break;
            }
            Object b = this.zzbBu.b(i2);
            if (this.zzbBu.get(b).zzOP().equals(zzabhVar)) {
                c = b;
                break;
            }
            i = i2 + 1;
        }
        return c;
    }

    public synchronized void clear() {
        this.zzbBu.clear();
    }

    public synchronized <C> zzayj<C> zzI(C c) {
        zzayj<C> zzayjVar;
        if (c == null) {
            zzayjVar = null;
        } else {
            zzayjVar = this.zzbBu.get(c);
            if (!zza(zzayjVar)) {
                this.zzbBu.remove(c);
                zzayjVar = null;
            }
        }
        return zzayjVar;
    }

    public synchronized <C> zzayj<C> zzb(GoogleApiClient googleApiClient, C c) {
        zzayj<C> zzayjVar;
        if (c == null) {
            zzayjVar = null;
        } else {
            zzayjVar = this.zzbBu.get(c);
            if (!zza(zzayjVar)) {
                zzayjVar = zzayr.zza(c, googleApiClient.zzr(c));
                this.zzbBu.put(c, zzayjVar);
            }
        }
        return zzayjVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized <C> zzayj<C> zzi(zzabh<C> zzabhVar) {
        return zzabhVar == null ? null : zzI(zzk(zzabhVar));
    }

    public synchronized <C> void zzj(zzabh<C> zzabhVar) {
        zzabhVar.clear();
        this.zzbBu.remove(zzk(zzabhVar));
    }
}
