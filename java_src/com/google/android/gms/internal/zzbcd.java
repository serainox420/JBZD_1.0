package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbcd {
    private zzbcd zzbKp;
    private Map<String, zzbit> zzbKq;

    public zzbcd() {
        this(null);
    }

    private zzbcd(zzbcd zzbcdVar) {
        this.zzbKq = null;
        this.zzbKp = zzbcdVar;
    }

    public boolean has(String str) {
        if (this.zzbKq == null || !this.zzbKq.containsKey(str)) {
            if (this.zzbKp == null) {
                return false;
            }
            return this.zzbKp.has(str);
        }
        return true;
    }

    public void remove(String str) {
        com.google.android.gms.common.internal.zzac.zzaw(has(str));
        if (this.zzbKq == null || !this.zzbKq.containsKey(str)) {
            this.zzbKp.remove(str);
        } else {
            this.zzbKq.remove(str);
        }
    }

    public zzbcd zzSq() {
        return new zzbcd(this);
    }

    public void zza(String str, zzbit<?> zzbitVar) {
        if (this.zzbKq == null) {
            this.zzbKq = new HashMap();
        }
        this.zzbKq.put(str, zzbitVar);
    }

    public void zzb(String str, zzbit<?> zzbitVar) {
        if (this.zzbKq != null && this.zzbKq.containsKey(str)) {
            this.zzbKq.put(str, zzbitVar);
        } else if (this.zzbKp == null) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Trying to modify a non existent symbol: ".concat(valueOf) : new String("Trying to modify a non existent symbol: "));
        } else {
            this.zzbKp.zzb(str, zzbitVar);
        }
    }

    public zzbit<?> zzhM(String str) {
        if (this.zzbKq == null || !this.zzbKq.containsKey(str)) {
            if (this.zzbKp != null) {
                return this.zzbKp.zzhM(str);
            }
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Trying to get a non existent symbol: ".concat(valueOf) : new String("Trying to get a non existent symbol: "));
        }
        return this.zzbKq.get(str);
    }
}
