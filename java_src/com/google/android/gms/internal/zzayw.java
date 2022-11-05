package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.panorama.PanoramaApi;
/* loaded from: classes2.dex */
class zzayw implements PanoramaApi.PanoramaResult {
    private final Status zzair;
    private final Intent zzbBx;

    public zzayw(Status status, Intent intent) {
        this.zzair = (Status) com.google.android.gms.common.internal.zzac.zzw(status);
        this.zzbBx = intent;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    @Override // com.google.android.gms.panorama.PanoramaApi.PanoramaResult
    public Intent getViewerIntent() {
        return this.zzbBx;
    }
}
