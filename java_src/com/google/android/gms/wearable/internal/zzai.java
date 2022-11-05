package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;
/* loaded from: classes2.dex */
public class zzai implements DataEvent {
    private int zzakD;
    private DataItem zzbUo;

    public zzai(DataEvent dataEvent) {
        this.zzakD = dataEvent.getType();
        this.zzbUo = dataEvent.getDataItem().mo520freeze();
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public DataItem getDataItem() {
        return this.zzbUo;
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public int getType() {
        return this.zzakD;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        String str = getType() == 1 ? "changed" : getType() == 2 ? "deleted" : "unknown";
        String valueOf = String.valueOf(getDataItem());
        return new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(valueOf).length()).append("DataEventEntity{ type=").append(str).append(", dataitem=").append(valueOf).append(" }").toString();
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzUv */
    public DataEvent mo520freeze() {
        return this;
    }
}
