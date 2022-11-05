package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbip {
    private final Map<String, zzbis> zzbMx;
    private final zzbis zzbMy;

    /* loaded from: classes2.dex */
    public static class zza {
        private final Map<String, zzbis> zzbMx = new HashMap();
        private zzbis zzbMy;

        public zzbip zzSX() {
            return new zzbip(this.zzbMx, this.zzbMy);
        }

        public zza zza(String str, zzbis zzbisVar) {
            this.zzbMx.put(str, zzbisVar);
            return this;
        }

        public zza zzb(zzbis zzbisVar) {
            this.zzbMy = zzbisVar;
            return this;
        }
    }

    private zzbip(Map<String, zzbis> map, zzbis zzbisVar) {
        this.zzbMx = Collections.unmodifiableMap(map);
        this.zzbMy = zzbisVar;
    }

    public String toString() {
        String valueOf = String.valueOf(zzSW());
        String valueOf2 = String.valueOf(this.zzbMy);
        return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Properties: ").append(valueOf).append(" pushAfterEvaluate: ").append(valueOf2).toString();
    }

    public Map<String, zzbis> zzSW() {
        return this.zzbMx;
    }
}
