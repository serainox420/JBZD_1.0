package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbod;
import java.util.Comparator;
/* loaded from: classes2.dex */
public abstract class zzbof<K, V> implements zzbod<K, V> {
    private final V value;
    private final K zzcbc;
    private zzbod<K, V> zzcbd;
    private final zzbod<K, V> zzcbe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbof(K k, V v, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2) {
        this.zzcbc = k;
        this.value = v;
        this.zzcbd = zzbodVar == null ? zzboc.zzXb() : zzbodVar;
        this.zzcbe = zzbodVar2 == null ? zzboc.zzXb() : zzbodVar2;
    }

    private zzbod<K, V> zzXh() {
        if (this.zzcbd.isEmpty()) {
            return zzboc.zzXb();
        }
        if (!zzXc().zzXa() && !zzXc().zzXc().zzXa()) {
            this = zzXi();
        }
        return this.zza(null, null, ((zzbof) this.zzcbd).zzXh(), null).zzXk();
    }

    private zzbof<K, V> zzXi() {
        zzbof<K, V> zzXn = zzXn();
        return zzXn.zzXd().zzXc().zzXa() ? zzXn.zza(null, null, null, ((zzbof) zzXn.zzXd()).zzXm()).zzXl().zzXn() : zzXn;
    }

    private zzbof<K, V> zzXj() {
        zzbof<K, V> zzXn = zzXn();
        return zzXn.zzXc().zzXc().zzXa() ? zzXn.zzXm().zzXn() : zzXn;
    }

    private zzbof<K, V> zzXk() {
        if (this.zzcbe.zzXa() && !this.zzcbd.zzXa()) {
            this = zzXl();
        }
        if (this.zzcbd.zzXa() && ((zzbof) this.zzcbd).zzcbd.zzXa()) {
            this = this.zzXm();
        }
        return (!this.zzcbd.zzXa() || !this.zzcbe.zzXa()) ? this : this.zzXn();
    }

    private zzbof<K, V> zzXl() {
        return (zzbof) this.zzcbe.zza(null, null, zzWZ(), (zzbof) zza(null, null, zzbod.zza.RED, null, ((zzbof) this.zzcbe).zzcbd), null);
    }

    private zzbof<K, V> zzXm() {
        return (zzbof) this.zzcbd.zza(null, null, zzWZ(), null, (zzbof) zza(null, null, zzbod.zza.RED, ((zzbof) this.zzcbd).zzcbe, null));
    }

    private zzbof<K, V> zzXn() {
        return (zzbof) zza(null, null, zza(this), this.zzcbd.zza(null, null, zza(this.zzcbd), null, null), this.zzcbe.zza(null, null, zza(this.zzcbe), null, null));
    }

    private static zzbod.zza zza(zzbod zzbodVar) {
        return zzbodVar.zzXa() ? zzbod.zza.BLACK : zzbod.zza.RED;
    }

    @Override // com.google.android.gms.internal.zzbod
    public K getKey() {
        return this.zzcbc;
    }

    @Override // com.google.android.gms.internal.zzbod
    public V getValue() {
        return this.value;
    }

    @Override // com.google.android.gms.internal.zzbod
    public boolean isEmpty() {
        return false;
    }

    protected abstract zzbod.zza zzWZ();

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXc() {
        return this.zzcbd;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXd() {
        return this.zzcbe;
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXe() {
        return this.zzcbd.isEmpty() ? this : this.zzcbd.zzXe();
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zzXf() {
        return this.zzcbe.isEmpty() ? this : this.zzcbe.zzXf();
    }

    @Override // com.google.android.gms.internal.zzbod
    public int zzXg() {
        return this.zzcbd.zzXg() + 1 + this.zzcbe.zzXg();
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zza(K k, V v, Comparator<K> comparator) {
        int compare = comparator.compare(k, this.zzcbc);
        return (compare < 0 ? zza(null, null, this.zzcbd.zza(k, v, comparator), null) : compare == 0 ? zza(k, v, null, null) : zza(null, null, null, this.zzcbe.zza(k, v, comparator))).zzXk();
    }

    @Override // com.google.android.gms.internal.zzbod
    public zzbod<K, V> zza(K k, Comparator<K> comparator) {
        zzbof<K, V> zza;
        if (comparator.compare(k, this.zzcbc) < 0) {
            if (!this.zzcbd.isEmpty() && !this.zzcbd.zzXa() && !((zzbof) this.zzcbd).zzcbd.zzXa()) {
                this = zzXi();
            }
            zza = this.zza(null, null, this.zzcbd.zza(k, comparator), null);
        } else {
            if (this.zzcbd.zzXa()) {
                this = zzXm();
            }
            if (!this.zzcbe.isEmpty() && !this.zzcbe.zzXa() && !((zzbof) this.zzcbe).zzcbd.zzXa()) {
                this = this.zzXj();
            }
            if (comparator.compare(k, this.zzcbc) == 0) {
                if (this.zzcbe.isEmpty()) {
                    return zzboc.zzXb();
                }
                zzbod<K, V> zzXe = this.zzcbe.zzXe();
                this = this.zza(zzXe.getKey(), zzXe.getValue(), null, ((zzbof) this.zzcbe).zzXh());
            }
            zza = this.zza(null, null, null, this.zzcbe.zza(k, comparator));
        }
        return zza.zzXk();
    }

    protected abstract zzbof<K, V> zza(K k, V v, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2);

    @Override // com.google.android.gms.internal.zzbod
    public void zza(zzbod.zzb<K, V> zzbVar) {
        this.zzcbd.zza(zzbVar);
        zzbVar.zzj(this.zzcbc, this.value);
        this.zzcbe.zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.zzbod
    /* renamed from: zzb */
    public zzbof<K, V> zza(K k, V v, zzbod.zza zzaVar, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2) {
        if (k == null) {
            k = this.zzcbc;
        }
        if (v == null) {
            v = this.value;
        }
        if (zzbodVar == null) {
            zzbodVar = this.zzcbd;
        }
        if (zzbodVar2 == null) {
            zzbodVar2 = this.zzcbe;
        }
        return zzaVar == zzbod.zza.RED ? new zzboe(k, v, zzbodVar, zzbodVar2) : new zzbob(k, v, zzbodVar, zzbodVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzbod<K, V> zzbodVar) {
        this.zzcbd = zzbodVar;
    }
}
