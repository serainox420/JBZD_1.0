package com.google.android.gms.internal;

import java.util.Iterator;
/* loaded from: classes2.dex */
public interface zzbsc extends Comparable<zzbsc>, Iterable<zzbsb> {
    public static final zzbrr zzcjB = new zzbrr() { // from class: com.google.android.gms.internal.zzbsc.1
        @Override // com.google.android.gms.internal.zzbrr
        public boolean equals(Object obj) {
            return obj == this;
        }

        @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
        public boolean isEmpty() {
            return false;
        }

        @Override // com.google.android.gms.internal.zzbrr
        public String toString() {
            return "<Max Node>";
        }

        @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
        public zzbsc zzaaO() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzbrr, java.lang.Comparable
        /* renamed from: zzh */
        public int compareTo(zzbsc zzbscVar) {
            return zzbscVar == this ? 0 : 1;
        }

        @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
        public boolean zzk(zzbrq zzbrqVar) {
            return false;
        }

        @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
        public zzbsc zzm(zzbrq zzbrqVar) {
            return zzbrqVar.zzaaK() ? zzaaO() : zzbrv.zzaaZ();
        }
    };

    /* loaded from: classes2.dex */
    public enum zza {
        V1,
        V2
    }

    int getChildCount();

    Object getValue();

    Object getValue(boolean z);

    boolean isEmpty();

    zzbsc zzO(zzbph zzbphVar);

    Iterator<zzbsb> zzWV();

    String zza(zza zzaVar);

    String zzaaM();

    boolean zzaaN();

    zzbsc zzaaO();

    zzbsc zze(zzbrq zzbrqVar, zzbsc zzbscVar);

    zzbsc zzg(zzbsc zzbscVar);

    boolean zzk(zzbrq zzbrqVar);

    zzbrq zzl(zzbrq zzbrqVar);

    zzbsc zzl(zzbph zzbphVar, zzbsc zzbscVar);

    zzbsc zzm(zzbrq zzbrqVar);
}
