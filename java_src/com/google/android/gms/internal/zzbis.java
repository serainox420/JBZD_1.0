package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzbis {
    private static final String zzbIG = new String("");
    private static final Integer zzbME = 0;
    private final Object mValue;
    private final int zzakD;
    private final List<Integer> zzbMF;
    private final boolean zzbMG;

    /* loaded from: classes2.dex */
    public static class zza {
        private final Object mValue;
        private final Integer zzbMH;
        private final List<Integer> zzbMF = new ArrayList();
        private boolean zzbMI = false;

        public zza(int i, Object obj) {
            this.zzbMH = Integer.valueOf(i);
            this.mValue = obj;
        }

        public zzbis zzTg() {
            com.google.android.gms.common.internal.zzac.zzw(this.zzbMH);
            com.google.android.gms.common.internal.zzac.zzw(this.mValue);
            return new zzbis(this.zzbMH, this.mValue, this.zzbMF, this.zzbMI);
        }

        public zza zzaV(boolean z) {
            this.zzbMI = z;
            return this;
        }

        public zza zznK(int i) {
            this.zzbMF.add(Integer.valueOf(i));
            return this;
        }
    }

    private zzbis(Integer num, Object obj, List<Integer> list, boolean z) {
        this.zzakD = num.intValue();
        this.mValue = obj;
        this.zzbMF = Collections.unmodifiableList(list);
        this.zzbMG = z;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzbis) && ((zzbis) obj).getValue().equals(this.mValue);
    }

    public int getType() {
        return this.zzakD;
    }

    public Object getValue() {
        return this.mValue;
    }

    public int hashCode() {
        return this.mValue.hashCode();
    }

    public String toString() {
        if (this.mValue == null) {
            zzbbu.e("Fail to convert a null object to string");
            return zzbIG;
        }
        return this.mValue.toString();
    }

    public List<Integer> zzTf() {
        return this.zzbMF;
    }
}
