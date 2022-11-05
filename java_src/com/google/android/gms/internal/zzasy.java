package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.PlacesStatusCodes;
@Deprecated
/* loaded from: classes.dex */
public final class zzasy extends com.google.android.gms.common.data.zzd<zzasx> implements Result {
    private final Status zzair;

    public zzasy(DataHolder dataHolder) {
        this(dataHolder, PlacesStatusCodes.zzdv(dataHolder.getStatusCode()));
    }

    private zzasy(DataHolder dataHolder, Status status) {
        super(dataHolder, zzasx.CREATOR);
        com.google.android.gms.common.internal.zzac.zzax(dataHolder == null || dataHolder.getStatusCode() == status.getStatusCode());
        this.zzair = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }
}
