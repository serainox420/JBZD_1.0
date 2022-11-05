package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbod;
/* loaded from: classes2.dex */
public class zzboe<K, V> extends zzbof<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzboe(K k, V v) {
        super(k, v, zzboc.zzXb(), zzboc.zzXb());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzboe(K k, V v, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2) {
        super(k, v, zzbodVar, zzbodVar2);
    }

    @Override // com.google.android.gms.internal.zzbof
    protected zzbod.zza zzWZ() {
        return zzbod.zza.RED;
    }

    @Override // com.google.android.gms.internal.zzbod
    public boolean zzXa() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzbof
    protected zzbof<K, V> zza(K k, V v, zzbod<K, V> zzbodVar, zzbod<K, V> zzbodVar2) {
        if (k == null) {
            k = getKey();
        }
        if (v == null) {
            v = getValue();
        }
        if (zzbodVar == null) {
            zzbodVar = zzXc();
        }
        if (zzbodVar2 == null) {
            zzbodVar2 = zzXd();
        }
        return new zzboe(k, v, zzbodVar, zzbodVar2);
    }
}
