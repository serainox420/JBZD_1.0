package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.zzaq;
/* loaded from: classes2.dex */
public class DataItemBuffer extends com.google.android.gms.common.data.zzf<DataItem> implements Result {
    private final Status zzair;

    public DataItemBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zzair = new Status(dataHolder.getStatusCode());
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* renamed from: zzD */
    public DataItem zzo(int i, int i2) {
        return new zzaq(this.zzaBi, i, i2);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzxn() {
        return "path";
    }
}
