package com.google.android.gms.common.data;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public class zzg<T> extends zzb<T> {
    private T zzaEe;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.zzb, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.zzaDJ).toString());
        }
        this.zzaDJ++;
        if (this.zzaDJ == 0) {
            this.zzaEe = this.zzaDI.mo547get(0);
            if (!(this.zzaEe instanceof zzc)) {
                String valueOf = String.valueOf(this.zzaEe.getClass());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 44).append("DataBuffer reference of type ").append(valueOf).append(" is not movable").toString());
            }
        } else {
            ((zzc) this.zzaEe).zzcG(this.zzaDJ);
        }
        return this.zzaEe;
    }
}
