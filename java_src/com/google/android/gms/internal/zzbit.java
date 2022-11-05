package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public abstract class zzbit<T> {
    protected Map<String, zzbit<?>> zzbMJ;

    /* loaded from: classes2.dex */
    private static class zza implements Iterator<zzbit<?>> {
        private zza() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        /* renamed from: zzTk */
        public zzbit<?> next() {
            throw new NoSuchElementException();
        }
    }

    public abstract String toString();

    public Iterator<zzbit<?>> zzTh() {
        return new zza();
    }

    public abstract T zzTi();

    /* JADX INFO: Access modifiers changed from: protected */
    public Iterator<zzbit<?>> zzTj() {
        if (this.zzbMJ == null) {
            return new zza();
        }
        final Iterator<String> it = this.zzbMJ.keySet().iterator();
        return new Iterator<zzbit<?>>(this) { // from class: com.google.android.gms.internal.zzbit.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                it.remove();
            }

            @Override // java.util.Iterator
            /* renamed from: zzTk */
            public zzbit<?> next() {
                return new zzbjb((String) it.next());
            }
        };
    }

    public void zzc(String str, zzbit<?> zzbitVar) {
        if (this.zzbMJ == null) {
            this.zzbMJ = new HashMap();
        }
        this.zzbMJ.put(str, zzbitVar);
    }

    public boolean zzic(String str) {
        return this.zzbMJ != null && this.zzbMJ.containsKey(str);
    }

    public zzbit<?> zzid(String str) {
        return this.zzbMJ != null ? this.zzbMJ.get(str) : zzbix.zzbMS;
    }

    public boolean zzie(String str) {
        return false;
    }

    public zzbcq zzif(String str) {
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 56).append("Attempting to access Native Method ").append(str).append(" on unsupported type.").toString());
    }
}
