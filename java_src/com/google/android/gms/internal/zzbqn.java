package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqq;
/* loaded from: classes2.dex */
public class zzbqn {
    private static final zzbqr<Boolean> zzchh = new zzbqr<Boolean>() { // from class: com.google.android.gms.internal.zzbqn.1
        @Override // com.google.android.gms.internal.zzbqr
        /* renamed from: zze */
        public boolean zzas(Boolean bool) {
            return !bool.booleanValue();
        }
    };
    private static final zzbqr<Boolean> zzchi = new zzbqr<Boolean>() { // from class: com.google.android.gms.internal.zzbqn.2
        @Override // com.google.android.gms.internal.zzbqr
        /* renamed from: zze */
        public boolean zzas(Boolean bool) {
            return bool.booleanValue();
        }
    };
    private static final zzbqq<Boolean> zzchj = new zzbqq<>(true);
    private static final zzbqq<Boolean> zzchk = new zzbqq<>(false);
    private final zzbqq<Boolean> zzchg;

    public zzbqn() {
        this.zzchg = zzbqq.zzZN();
    }

    private zzbqn(zzbqq<Boolean> zzbqqVar) {
        this.zzchg = zzbqqVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzbqn) && this.zzchg.equals(((zzbqn) obj).zzchg);
    }

    public int hashCode() {
        return this.zzchg.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzchg.toString());
        return new StringBuilder(String.valueOf(valueOf).length() + 14).append("{PruneForest:").append(valueOf).append("}").toString();
    }

    public boolean zzZI() {
        return this.zzchg.zzb(zzchi);
    }

    public <T> T zza(T t, final zzbqq.zza<Void, T> zzaVar) {
        return (T) this.zzchg.zzb((zzbqq<Boolean>) t, new zzbqq.zza<Boolean, T>(this) { // from class: com.google.android.gms.internal.zzbqn.3
            /* JADX WARN: Type inference failed for: r5v1, types: [T, java.lang.Object] */
            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public T zza2(zzbph zzbphVar, Boolean bool, T t2) {
                return !bool.booleanValue() ? zzaVar.zza(zzbphVar, null, t2) : t2;
            }

            @Override // com.google.android.gms.internal.zzbqq.zza
            public /* bridge */ /* synthetic */ Object zza(zzbph zzbphVar, Boolean bool, Object obj) {
                return zza2(zzbphVar, bool, (Boolean) obj);
            }
        });
    }

    public zzbqn zzd(zzbrq zzbrqVar) {
        zzbqq<Boolean> zze = this.zzchg.zze(zzbrqVar);
        return new zzbqn(zze == null ? new zzbqq<>(this.zzchg.getValue()) : (zze.getValue() != null || this.zzchg.getValue() == null) ? zze : zze.zzb(zzbph.zzYP(), (zzbph) this.zzchg.getValue()));
    }

    public boolean zzw(zzbph zzbphVar) {
        Boolean zzH = this.zzchg.zzH(zzbphVar);
        return zzH != null && zzH.booleanValue();
    }

    public boolean zzx(zzbph zzbphVar) {
        Boolean zzH = this.zzchg.zzH(zzbphVar);
        return zzH != null && !zzH.booleanValue();
    }

    public zzbqn zzy(zzbph zzbphVar) {
        if (this.zzchg.zzb(zzbphVar, zzchh) != null) {
            throw new IllegalArgumentException("Can't prune path that was kept previously!");
        }
        return this.zzchg.zzb(zzbphVar, zzchi) != null ? this : new zzbqn(this.zzchg.zza(zzbphVar, zzchj));
    }

    public zzbqn zzz(zzbph zzbphVar) {
        return this.zzchg.zzb(zzbphVar, zzchh) != null ? this : new zzbqn(this.zzchg.zza(zzbphVar, zzchk));
    }
}
