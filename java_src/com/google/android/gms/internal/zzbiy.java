package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public final class zzbiy extends zzbit<List<zzbit<?>>> {
    private static final Map<String, zzbcq> zzbMM;
    private final ArrayList<zzbit<?>> zzbMV;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("concat", new zzbct());
        hashMap.put("every", new zzbcu());
        hashMap.put("filter", new zzbcv());
        hashMap.put("forEach", new zzbcw());
        hashMap.put("indexOf", new zzbcx());
        hashMap.put("hasOwnProperty", zzbeo.zzbLu);
        hashMap.put("join", new zzbcy());
        hashMap.put("lastIndexOf", new zzbcz());
        hashMap.put("map", new zzbda());
        hashMap.put("pop", new zzbdb());
        hashMap.put("push", new zzbdc());
        hashMap.put("reduce", new zzbdd());
        hashMap.put("reduceRight", new zzbde());
        hashMap.put("reverse", new zzbdf());
        hashMap.put("shift", new zzbdg());
        hashMap.put("slice", new zzbdh());
        hashMap.put("some", new zzbdi());
        hashMap.put("sort", new zzbdj());
        hashMap.put("splice", new zzbdk());
        hashMap.put("toString", new zzbfq());
        hashMap.put("unshift", new zzbdl());
        zzbMM = Collections.unmodifiableMap(hashMap);
    }

    public zzbiy(List<zzbit<?>> list) {
        com.google.android.gms.common.internal.zzac.zzw(list);
        this.zzbMV = new ArrayList<>(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbiy)) {
            return false;
        }
        List<zzbit<?>> zzTi = ((zzbiy) obj).zzTi();
        if (this.zzbMV.size() != zzTi.size()) {
            return false;
        }
        int i = 0;
        boolean z = true;
        while (i < this.zzbMV.size()) {
            boolean equals = this.zzbMV.get(i) == null ? zzTi.get(i) == null : this.zzbMV.get(i).equals(zzTi.get(i));
            if (!equals) {
                return equals;
            }
            i++;
            z = equals;
        }
        return z;
    }

    public void setSize(int i) {
        com.google.android.gms.common.internal.zzac.zzb(i >= 0, "Invalid array length");
        if (this.zzbMV.size() == i) {
            return;
        }
        if (this.zzbMV.size() >= i) {
            this.zzbMV.subList(i, this.zzbMV.size()).clear();
            return;
        }
        this.zzbMV.ensureCapacity(i);
        for (int size = this.zzbMV.size(); size < i; size++) {
            this.zzbMV.add(null);
        }
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.zzbMV.toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    public Iterator<zzbit<?>> zzTh() {
        final Iterator<zzbit<?>> it = new Iterator<zzbit<?>>() { // from class: com.google.android.gms.internal.zzbiy.1
            private int zzbMW = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                for (int i = this.zzbMW; i < zzbiy.this.zzbMV.size(); i++) {
                    if (zzbiy.this.zzbMV.get(i) != null) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Iterator
            /* renamed from: zzTk */
            public zzbit<?> next() {
                if (this.zzbMW >= zzbiy.this.zzbMV.size()) {
                    throw new NoSuchElementException();
                }
                for (int i = this.zzbMW; i < zzbiy.this.zzbMV.size(); i++) {
                    if (zzbiy.this.zzbMV.get(i) != null) {
                        this.zzbMW = i;
                        int i2 = this.zzbMW;
                        this.zzbMW = i2 + 1;
                        return new zzbiv(Double.valueOf(i2));
                    }
                }
                throw new NoSuchElementException();
            }
        };
        final Iterator<zzbit<?>> zzTj = super.zzTj();
        return new Iterator<zzbit<?>>(this) { // from class: com.google.android.gms.internal.zzbiy.2
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext() || zzTj.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Iterator
            /* renamed from: zzTk */
            public zzbit<?> next() {
                return it.hasNext() ? (zzbit) it.next() : (zzbit) zzTj.next();
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: zzTq */
    public List<zzbit<?>> zzTi() {
        return this.zzbMV;
    }

    public void zza(int i, zzbit<?> zzbitVar) {
        if (i < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i >= this.zzbMV.size()) {
            setSize(i + 1);
        }
        this.zzbMV.set(i, zzbitVar);
    }

    @Override // com.google.android.gms.internal.zzbit
    public boolean zzie(String str) {
        return zzbMM.containsKey(str);
    }

    @Override // com.google.android.gms.internal.zzbit
    public zzbcq zzif(String str) {
        if (zzie(str)) {
            return zzbMM.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 51).append("Native Method ").append(str).append(" is not defined for type ListWrapper.").toString());
    }

    public zzbit<?> zznL(int i) {
        if (i < 0 || i >= this.zzbMV.size()) {
            return zzbix.zzbMS;
        }
        zzbit<?> zzbitVar = this.zzbMV.get(i);
        return zzbitVar == null ? zzbix.zzbMS : zzbitVar;
    }

    public boolean zznM(int i) {
        return i >= 0 && i < this.zzbMV.size() && this.zzbMV.get(i) != null;
    }
}
