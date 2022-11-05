package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbio {
    private String zzavB;
    private final List<zzbiq> zzbMu;
    private final Map<String, zzbip> zzbMv;
    private int zzbMw;

    /* loaded from: classes2.dex */
    public static class zza {
        private final List<zzbiq> zzbMu = new ArrayList();
        private final Map<String, zzbip> zzbMv = new HashMap();
        private String zzavB = "";
        private int zzbMw = 0;

        public zzbio zzSV() {
            return new zzbio(this.zzbMu, this.zzbMv, this.zzavB, 0);
        }

        public zza zza(zzbiq zzbiqVar) {
            this.zzbMu.add(zzbiqVar);
            return this;
        }

        public zza zzc(zzbip zzbipVar) {
            this.zzbMv.put(zzbipVar.zzSW().get("instance_name").toString(), zzbipVar);
            return this;
        }

        public zza zzia(String str) {
            this.zzavB = str;
            return this;
        }
    }

    public zzbio(List<zzbiq> list, Map<String, zzbip> map, String str, int i) {
        this.zzbMu = Collections.unmodifiableList(list);
        this.zzbMv = Collections.unmodifiableMap(map);
        this.zzavB = str;
        this.zzbMw = i;
    }

    public String getVersion() {
        return this.zzavB;
    }

    public String toString() {
        String valueOf = String.valueOf(zzSU());
        String valueOf2 = String.valueOf(this.zzbMv);
        return new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Rules: ").append(valueOf).append("\n  Macros: ").append(valueOf2).toString();
    }

    public List<zzbiq> zzSU() {
        return this.zzbMu;
    }

    public zzbip zzhZ(String str) {
        return this.zzbMv.get(str);
    }
}
