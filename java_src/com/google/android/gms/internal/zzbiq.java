package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzbiq {
    private final List<zzbip> zzbMA;
    private final List<zzbip> zzbMB;
    private final List<zzbip> zzbMC;
    private final List<zzbip> zzbMz;

    /* loaded from: classes2.dex */
    public static class zza {
        private final List<zzbip> zzbMz = new ArrayList();
        private final List<zzbip> zzbMA = new ArrayList();
        private final List<zzbip> zzbMB = new ArrayList();
        private final List<zzbip> zzbMC = new ArrayList();

        public zzbiq zzTc() {
            return new zzbiq(this.zzbMz, this.zzbMA, this.zzbMB, this.zzbMC);
        }

        public zza zzd(zzbip zzbipVar) {
            this.zzbMz.add(zzbipVar);
            return this;
        }

        public zza zze(zzbip zzbipVar) {
            this.zzbMA.add(zzbipVar);
            return this;
        }

        public zza zzf(zzbip zzbipVar) {
            this.zzbMB.add(zzbipVar);
            return this;
        }

        public zza zzg(zzbip zzbipVar) {
            this.zzbMC.add(zzbipVar);
            return this;
        }
    }

    private zzbiq(List<zzbip> list, List<zzbip> list2, List<zzbip> list3, List<zzbip> list4) {
        this.zzbMz = Collections.unmodifiableList(list);
        this.zzbMA = Collections.unmodifiableList(list2);
        this.zzbMB = Collections.unmodifiableList(list3);
        this.zzbMC = Collections.unmodifiableList(list4);
    }

    public String toString() {
        String valueOf = String.valueOf(zzSY());
        String valueOf2 = String.valueOf(zzSZ());
        String valueOf3 = String.valueOf(zzTa());
        String valueOf4 = String.valueOf(zzTb());
        return new StringBuilder(String.valueOf(valueOf).length() + 71 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length()).append("Positive predicates: ").append(valueOf).append("  Negative predicates: ").append(valueOf2).append("  Add tags: ").append(valueOf3).append("  Remove tags: ").append(valueOf4).toString();
    }

    public List<zzbip> zzSY() {
        return this.zzbMz;
    }

    public List<zzbip> zzSZ() {
        return this.zzbMA;
    }

    public List<zzbip> zzTa() {
        return this.zzbMB;
    }

    public List<zzbip> zzTb() {
        return this.zzbMC;
    }
}
