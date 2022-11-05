package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
abstract class zzaci<R extends Result> extends zzaad.zza<R, zzacj> {

    /* loaded from: classes2.dex */
    static abstract class zza extends zzaci<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    public zzaci(GoogleApiClient googleApiClient) {
        super(zzacf.API, googleApiClient);
    }
}
