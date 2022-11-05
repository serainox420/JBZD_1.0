package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {
    protected final DataHolder zzaBi;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDataBuffer(DataHolder dataHolder) {
        this.zzaBi = dataHolder;
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @Deprecated
    public final void close() {
        release();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public abstract T mo547get(int i);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        if (this.zzaBi == null) {
            return 0;
        }
        return this.zzaBi.getCount();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @Deprecated
    public boolean isClosed() {
        return this.zzaBi == null || this.zzaBi.isClosed();
    }

    @Override // com.google.android.gms.common.data.DataBuffer, java.lang.Iterable
    public Iterator<T> iterator() {
        return new zzb(this);
    }

    @Override // com.google.android.gms.common.data.DataBuffer, com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.zzaBi != null) {
            this.zzaBi.close();
        }
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public Iterator<T> singleRefIterator() {
        return new zzg(this);
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public Bundle zzxf() {
        return this.zzaBi.zzxf();
    }
}
