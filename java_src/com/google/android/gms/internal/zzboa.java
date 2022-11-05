package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbny;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzboa<T> implements Iterable<T> {
    private final zzbny<T, Void> zzcaW;

    /* loaded from: classes2.dex */
    private static class zza<T> implements Iterator<T> {
        final Iterator<Map.Entry<T, Void>> zzcaX;

        public zza(Iterator<Map.Entry<T, Void>> it) {
            this.zzcaX = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.zzcaX.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return this.zzcaX.next().getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.zzcaX.remove();
        }
    }

    private zzboa(zzbny<T, Void> zzbnyVar) {
        this.zzcaW = zzbnyVar;
    }

    public zzboa(List<T> list, Comparator<T> comparator) {
        this.zzcaW = zzbny.zza.zzb(list, Collections.emptyMap(), zzbny.zza.zzWW(), comparator);
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new zza(this.zzcaW.iterator());
    }

    public Iterator<T> zzWV() {
        return new zza(this.zzcaW.zzWV());
    }

    public T zzWX() {
        return this.zzcaW.zzWT();
    }

    public T zzWY() {
        return this.zzcaW.zzWU();
    }

    public zzboa<T> zzal(T t) {
        zzbny<T, Void> zzag = this.zzcaW.zzag(t);
        return zzag == this.zzcaW ? this : new zzboa<>(zzag);
    }

    public zzboa<T> zzam(T t) {
        return new zzboa<>(this.zzcaW.zzi(t, null));
    }

    public T zzan(T t) {
        return this.zzcaW.zzah(t);
    }
}
