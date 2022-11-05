package com.google.android.gms.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public abstract class zzaao implements Releasable, Result {
    protected final DataHolder zzaBi;
    protected final Status zzair;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaao(DataHolder dataHolder, Status status) {
        this.zzair = status;
        this.zzaBi = dataHolder;
    }

    public Status getStatus() {
        return this.zzair;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.zzaBi != null) {
            this.zzaBi.close();
        }
    }
}
