package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBufferObserver;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class DataBufferObserverSet implements DataBufferObserver, DataBufferObserver.Observable {
    private HashSet<DataBufferObserver> zzaDK = new HashSet<>();

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void addObserver(DataBufferObserver dataBufferObserver) {
        this.zzaDK.add(dataBufferObserver);
    }

    public void clear() {
        this.zzaDK.clear();
    }

    public boolean hasObservers() {
        return !this.zzaDK.isEmpty();
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataChanged() {
        Iterator<DataBufferObserver> it = this.zzaDK.iterator();
        while (it.hasNext()) {
            it.next().onDataChanged();
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeChanged(int i, int i2) {
        Iterator<DataBufferObserver> it = this.zzaDK.iterator();
        while (it.hasNext()) {
            it.next().onDataRangeChanged(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeInserted(int i, int i2) {
        Iterator<DataBufferObserver> it = this.zzaDK.iterator();
        while (it.hasNext()) {
            it.next().onDataRangeInserted(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeMoved(int i, int i2, int i3) {
        Iterator<DataBufferObserver> it = this.zzaDK.iterator();
        while (it.hasNext()) {
            it.next().onDataRangeMoved(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeRemoved(int i, int i2) {
        Iterator<DataBufferObserver> it = this.zzaDK.iterator();
        while (it.hasNext()) {
            it.next().onDataRangeRemoved(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void removeObserver(DataBufferObserver dataBufferObserver) {
        this.zzaDK.remove(dataBufferObserver);
    }
}
