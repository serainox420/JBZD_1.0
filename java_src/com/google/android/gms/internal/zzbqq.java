package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbny;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbqq<T> implements Iterable<Map.Entry<zzbph, T>> {
    private static final zzbny zzchy = zzbny.zza.zza(zzboh.zzh(zzbrq.class));
    private static final zzbqq zzchz = new zzbqq(null, zzchy);
    private final T value;
    private final zzbny<zzbrq, zzbqq<T>> zzchx;

    /* loaded from: classes2.dex */
    public interface zza<T, R> {
        R zza(zzbph zzbphVar, T t, R r);
    }

    public zzbqq(T t) {
        this(t, zzchy);
    }

    public zzbqq(T t, zzbny<zzbrq, zzbqq<T>> zzbnyVar) {
        this.value = t;
        this.zzchx = zzbnyVar;
    }

    public static <V> zzbqq<V> zzZN() {
        return zzchz;
    }

    private <R> R zza(zzbph zzbphVar, zza<? super T, R> zzaVar, R r) {
        Iterator<Map.Entry<zzbrq, zzbqq<T>>> it = this.zzchx.iterator();
        while (it.hasNext()) {
            Map.Entry<zzbrq, zzbqq<T>> next = it.next();
            r = (R) next.getValue().zza(zzbphVar.zza(next.getKey()), zzaVar, r);
        }
        return this.value != null ? zzaVar.zza(zzbphVar, this.value, r) : r;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbqq zzbqqVar = (zzbqq) obj;
        if (this.zzchx == null ? zzbqqVar.zzchx != null : !this.zzchx.equals(zzbqqVar.zzchx)) {
            return false;
        }
        if (this.value != null) {
            if (this.value.equals(zzbqqVar.value)) {
                return true;
            }
        } else if (zzbqqVar.value == null) {
            return true;
        }
        return false;
    }

    public T getValue() {
        return this.value;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.value != null ? this.value.hashCode() : 0) * 31;
        if (this.zzchx != null) {
            i = this.zzchx.hashCode();
        }
        return hashCode + i;
    }

    public boolean isEmpty() {
        return this.value == null && this.zzchx.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<zzbph, T>> iterator() {
        final ArrayList arrayList = new ArrayList();
        zza(new zza<T, Void>(this) { // from class: com.google.android.gms.internal.zzbqq.2
            @Override // com.google.android.gms.internal.zzbqq.zza
            public /* bridge */ /* synthetic */ Void zza(zzbph zzbphVar, Object obj, Void r4) {
                return zza2(zzbphVar, (zzbph) obj, r4);
            }

            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public Void zza2(zzbph zzbphVar, T t, Void r5) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry(zzbphVar, t));
                return null;
            }
        });
        return arrayList.iterator();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ImmutableTree { value=");
        sb.append(getValue());
        sb.append(", children={");
        Iterator<Map.Entry<zzbrq, zzbqq<T>>> it = this.zzchx.iterator();
        while (it.hasNext()) {
            Map.Entry<zzbrq, zzbqq<T>> next = it.next();
            sb.append(next.getKey().asString());
            sb.append("=");
            sb.append(next.getValue());
        }
        sb.append("} }");
        return sb.toString();
    }

    public Collection<T> values() {
        final ArrayList arrayList = new ArrayList();
        zza(new zza<T, Void>(this) { // from class: com.google.android.gms.internal.zzbqq.1
            @Override // com.google.android.gms.internal.zzbqq.zza
            public /* bridge */ /* synthetic */ Void zza(zzbph zzbphVar, Object obj, Void r4) {
                return zza2(zzbphVar, (zzbph) obj, r4);
            }

            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public Void zza2(zzbph zzbphVar, T t, Void r4) {
                arrayList.add(t);
                return null;
            }
        });
        return arrayList;
    }

    public zzbph zzG(zzbph zzbphVar) {
        return zza(zzbphVar, zzbqr.zzchC);
    }

    public T zzH(zzbph zzbphVar) {
        return zzc(zzbphVar, zzbqr.zzchC);
    }

    public zzbqq<T> zzI(zzbph zzbphVar) {
        if (zzbphVar.isEmpty()) {
            return this;
        }
        zzbqq<T> zzbqqVar = this.zzchx.get(zzbphVar.zzYS());
        return zzbqqVar != null ? zzbqqVar.zzI(zzbphVar.zzYT()) : zzZN();
    }

    public zzbqq<T> zzJ(zzbph zzbphVar) {
        if (zzbphVar.isEmpty()) {
            return this.zzchx.isEmpty() ? zzZN() : new zzbqq<>(null, this.zzchx);
        }
        zzbrq zzYS = zzbphVar.zzYS();
        zzbqq<T> zzbqqVar = this.zzchx.get(zzYS);
        if (zzbqqVar == null) {
            return this;
        }
        zzbqq<T> zzJ = zzbqqVar.zzJ(zzbphVar.zzYT());
        zzbny<zzbrq, zzbqq<T>> zzag = zzJ.isEmpty() ? this.zzchx.zzag(zzYS) : this.zzchx.zzi(zzYS, zzJ);
        return (this.value != null || !zzag.isEmpty()) ? new zzbqq<>(this.value, zzag) : zzZN();
    }

    public T zzK(zzbph zzbphVar) {
        if (zzbphVar.isEmpty()) {
            return this.value;
        }
        zzbqq<T> zzbqqVar = this.zzchx.get(zzbphVar.zzYS());
        if (zzbqqVar == null) {
            return null;
        }
        return zzbqqVar.zzK(zzbphVar.zzYT());
    }

    public zzbny<zzbrq, zzbqq<T>> zzZO() {
        return this.zzchx;
    }

    public zzbph zza(zzbph zzbphVar, zzbqr<? super T> zzbqrVar) {
        zzbrq zzYS;
        zzbqq<T> zzbqqVar;
        zzbph zza2;
        if (this.value == null || !zzbqrVar.zzas((T) this.value)) {
            if (!zzbphVar.isEmpty() && (zzbqqVar = this.zzchx.get((zzYS = zzbphVar.zzYS()))) != null && (zza2 = zzbqqVar.zza(zzbphVar.zzYT(), zzbqrVar)) != null) {
                return new zzbph(zzYS).zzh(zza2);
            }
            return null;
        }
        return zzbph.zzYP();
    }

    public zzbqq<T> zza(zzbph zzbphVar, zzbqq<T> zzbqqVar) {
        if (zzbphVar.isEmpty()) {
            return zzbqqVar;
        }
        zzbrq zzYS = zzbphVar.zzYS();
        zzbqq<T> zzbqqVar2 = this.zzchx.get(zzYS);
        if (zzbqqVar2 == null) {
            zzbqqVar2 = zzZN();
        }
        zzbqq<T> zza2 = zzbqqVar2.zza(zzbphVar.zzYT(), zzbqqVar);
        return new zzbqq<>(this.value, zza2.isEmpty() ? this.zzchx.zzag(zzYS) : this.zzchx.zzi(zzYS, zza2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void zza(zza<T, Void> zzaVar) {
        zza(zzbph.zzYP(), zzaVar, null);
    }

    public zzbqq<T> zzb(zzbph zzbphVar, T t) {
        if (zzbphVar.isEmpty()) {
            return new zzbqq<>(t, this.zzchx);
        }
        zzbrq zzYS = zzbphVar.zzYS();
        zzbqq<T> zzbqqVar = this.zzchx.get(zzYS);
        if (zzbqqVar == null) {
            zzbqqVar = zzZN();
        }
        return new zzbqq<>(this.value, this.zzchx.zzi(zzYS, zzbqqVar.zzb(zzbphVar.zzYT(), (zzbph) t)));
    }

    public T zzb(zzbph zzbphVar, zzbqr<? super T> zzbqrVar) {
        if (this.value == null || !zzbqrVar.zzas((T) this.value)) {
            Iterator<zzbrq> it = zzbphVar.iterator();
            while (it.hasNext()) {
                zzbqq<T> zzbqqVar = this.zzchx.get(it.next());
                if (zzbqqVar == null) {
                    return null;
                }
                if (zzbqqVar.value != null && zzbqrVar.zzas((T) zzbqqVar.value)) {
                    return zzbqqVar.value;
                }
                this = zzbqqVar;
            }
            return null;
        }
        return this.value;
    }

    public <R> R zzb(R r, zza<? super T, R> zzaVar) {
        return (R) zza(zzbph.zzYP(), zzaVar, r);
    }

    public boolean zzb(zzbqr<? super T> zzbqrVar) {
        if (this.value == null || !zzbqrVar.zzas((T) this.value)) {
            Iterator<Map.Entry<zzbrq, zzbqq<T>>> it = this.zzchx.iterator();
            while (it.hasNext()) {
                if (it.next().getValue().zzb(zzbqrVar)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public T zzc(zzbph zzbphVar, zzbqr<? super T> zzbqrVar) {
        T t = (this.value == null || !zzbqrVar.zzas((T) this.value)) ? null : this.value;
        Iterator<zzbrq> it = zzbphVar.iterator();
        T t2 = t;
        while (it.hasNext()) {
            zzbqq<T> zzbqqVar = this.zzchx.get(it.next());
            if (zzbqqVar == null) {
                break;
            }
            if (zzbqqVar.value != null && zzbqrVar.zzas((T) zzbqqVar.value)) {
                t2 = zzbqqVar.value;
            }
            this = zzbqqVar;
        }
        return t2;
    }

    public zzbqq<T> zze(zzbrq zzbrqVar) {
        zzbqq<T> zzbqqVar = this.zzchx.get(zzbrqVar);
        return zzbqqVar != null ? zzbqqVar : zzZN();
    }
}
