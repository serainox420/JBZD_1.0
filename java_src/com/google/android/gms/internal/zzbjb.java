package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public final class zzbjb extends zzbit<String> {
    private static final Map<String, zzbcq> zzbMM;
    private final String mValue;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("charAt", new zzbfd());
        hashMap.put("concat", new zzbfe());
        hashMap.put("hasOwnProperty", zzbeo.zzbLu);
        hashMap.put("indexOf", new zzbff());
        hashMap.put("lastIndexOf", new zzbfg());
        hashMap.put("match", new zzbfh());
        hashMap.put("replace", new zzbfi());
        hashMap.put("search", new zzbfj());
        hashMap.put("slice", new zzbfk());
        hashMap.put("split", new zzbfl());
        hashMap.put("substring", new zzbfm());
        hashMap.put("toLocaleLowerCase", new zzbfn());
        hashMap.put("toLocaleUpperCase", new zzbfo());
        hashMap.put("toLowerCase", new zzbfp());
        hashMap.put("toUpperCase", new zzbfr());
        hashMap.put("toString", new zzbfq());
        hashMap.put("trim", new zzbfs());
        zzbMM = Collections.unmodifiableMap(hashMap);
    }

    public zzbjb(String str) {
        com.google.android.gms.common.internal.zzac.zzw(str);
        this.mValue = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbjb)) {
            return false;
        }
        return this.mValue.equals((String) ((zzbjb) obj).zzTi());
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.mValue.toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: value */
    public String zzTi() {
        return this.mValue;
    }

    @Override // com.google.android.gms.internal.zzbit
    public Iterator<zzbit<?>> zzTh() {
        return new Iterator<zzbit<?>>() { // from class: com.google.android.gms.internal.zzbjb.1
            private int zzbMW = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.zzbMW < zzbjb.this.mValue.length();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Iterator
            /* renamed from: zzTk */
            public zzbit<?> next() {
                if (this.zzbMW >= zzbjb.this.mValue.length()) {
                    throw new NoSuchElementException();
                }
                int i = this.zzbMW;
                this.zzbMW = i + 1;
                return new zzbiv(Double.valueOf(i));
            }
        };
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

    public zzbit<?> zznN(int i) {
        return (i < 0 || i >= this.mValue.length()) ? zzbix.zzbMS : new zzbjb(String.valueOf(this.mValue.charAt(i)));
    }
}
