package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbir {
    private final String zzavB;
    private final List<zzbcp> zzbMD;

    /* loaded from: classes2.dex */
    public static class zza {
        private String zzavB;
        private List<zzbcp> zzbMD = new ArrayList();

        public zzbir zzTe() {
            return new zzbir(this.zzavB, this.zzbMD);
        }

        public zza zza(zzbcp zzbcpVar) {
            this.zzbMD.add(zzbcpVar);
            return this;
        }

        public zza zzib(String str) {
            this.zzavB = str;
            return this;
        }
    }

    private zzbir(String str, List<zzbcp> list) {
        this.zzavB = str;
        this.zzbMD = list;
    }

    public List<zzbcp> zzTd() {
        return this.zzbMD;
    }
}
