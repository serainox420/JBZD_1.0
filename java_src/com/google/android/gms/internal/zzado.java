package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.zzadi;
/* loaded from: classes2.dex */
public class zzado extends com.google.android.gms.common.api.zzc<Api.ApiOptions.NoOptions> {
    public zzado(Context context) {
        super(context, zzadh.API, (Api.ApiOptions) null, new zzzy());
    }

    public PendingResult<zzadi.zzb> zza(zzadi.zza zzaVar) {
        return zzadh.zzaIB.zza(asGoogleApiClient(), zzaVar);
    }
}
