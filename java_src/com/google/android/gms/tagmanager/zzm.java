package com.google.android.gms.tagmanager;

import android.os.Build;
/* loaded from: classes2.dex */
class zzm<K, V> {
    final zza<K, V> zzbET = new zza<K, V>(this) { // from class: com.google.android.gms.tagmanager.zzm.1
        @Override // com.google.android.gms.tagmanager.zzm.zza
        public int sizeOf(K k, V v) {
            return 1;
        }
    };

    /* loaded from: classes2.dex */
    public interface zza<K, V> {
        int sizeOf(K k, V v);
    }

    public zzl<K, V> zza(int i, zza<K, V> zzaVar) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        zzzA();
        return new zzbi(i, zzaVar);
    }

    int zzzA() {
        return Build.VERSION.SDK_INT;
    }
}
