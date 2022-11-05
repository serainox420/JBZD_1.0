package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzb {
    public static com.google.android.gms.common.api.zza zzG(Status status) {
        return status.hasResolution() ? new com.google.android.gms.common.api.zzd(status) : new com.google.android.gms.common.api.zza(status);
    }

    public static com.google.android.gms.common.api.zza zzl(ConnectionResult connectionResult) {
        return zzG(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution()));
    }
}
