package com.google.android.gms.internal;

import java.lang.Comparable;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class zzboh<A extends Comparable<A>> implements Comparator<A> {
    private static zzboh zzcbo = new zzboh();

    private zzboh() {
    }

    public static <T extends Comparable<T>> zzboh<T> zzh(Class<T> cls) {
        return zzcbo;
    }

    @Override // java.util.Comparator
    /* renamed from: zza */
    public int compare(A a2, A a3) {
        return a2.compareTo(a3);
    }
}
