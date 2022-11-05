package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbcp extends zzbcs {
    private final String mName;
    private zzbcd zzbKp;
    private final List<String> zzbLq;
    private final List<zzbja> zzbLr;

    public zzbcp(zzbcd zzbcdVar, String str, List<String> list, List<zzbja> list2) {
        this.zzbKp = zzbcdVar;
        this.mName = str;
        this.zzbLq = list;
        this.zzbLr = list2;
    }

    public String getName() {
        return this.mName;
    }

    public String toString() {
        String str = this.mName;
        String valueOf = String.valueOf(this.zzbLq.toString());
        String valueOf2 = String.valueOf(this.zzbLr.toString());
        return new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()).append(str).append("\n\tparams: ").append(valueOf).append("\n\t: statements: ").append(valueOf2).toString();
    }

    @Override // com.google.android.gms.internal.zzbcs
    public zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        try {
            zzbcd zzSq = this.zzbKp.zzSq();
            for (int i = 0; i < this.zzbLq.size(); i++) {
                if (zzbitVarArr.length > i) {
                    zzSq.zza(this.zzbLq.get(i), zzbitVarArr[i]);
                } else {
                    zzSq.zza(this.zzbLq.get(i), zzbix.zzbMS);
                }
            }
            zzSq.zza("arguments", new zzbiy(Arrays.asList(zzbitVarArr)));
            for (zzbja zzbjaVar : this.zzbLr) {
                zzbit zza = zzbjc.zza(zzSq, zzbjaVar);
                if ((zza instanceof zzbix) && ((zzbix) zza).zzTp()) {
                    return ((zzbix) zza).zzTi();
                }
            }
        } catch (RuntimeException e) {
            String str = this.mName;
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.e(new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(valueOf).length()).append("Internal error - Function call: ").append(str).append("\n").append(valueOf).toString());
        }
        return zzbix.zzbMS;
    }

    public void zza(zzbcd zzbcdVar) {
        this.zzbKp = zzbcdVar;
    }
}
