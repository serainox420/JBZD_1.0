package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.zzaj;
/* loaded from: classes2.dex */
public class DataEventBuffer extends com.google.android.gms.common.data.zzf<DataEvent> implements Result {
    private final Status zzair;

    public DataEventBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zzair = new Status(dataHolder.getStatusCode());
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* renamed from: zzC */
    public DataEvent zzo(int i, int i2) {
        return new zzaj(this.zzaBi, i, i2);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzxn() {
        return "path";
    }
}
