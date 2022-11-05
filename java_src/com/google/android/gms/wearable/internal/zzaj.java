package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;
/* loaded from: classes2.dex */
public final class zzaj extends com.google.android.gms.common.data.zzc implements DataEvent {
    private final int zzaZk;

    public zzaj(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzaZk = i2;
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public DataItem getDataItem() {
        return new zzaq(this.zzaBi, this.zzaDL, this.zzaZk);
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public int getType() {
        return getInteger("event_type");
    }

    public String toString() {
        String str = getType() == 1 ? "changed" : getType() == 2 ? "deleted" : "unknown";
        String valueOf = String.valueOf(getDataItem());
        return new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length()).append("DataEventRef{ type=").append(str).append(", dataitem=").append(valueOf).append(" }").toString();
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzUv */
    public DataEvent mo520freeze() {
        return new zzai(this);
    }
}
