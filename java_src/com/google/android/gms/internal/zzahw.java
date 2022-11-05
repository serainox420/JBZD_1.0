package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public abstract class zzahw<R extends Result> extends zzaad.zza<R, zzahx> {

    /* loaded from: classes2.dex */
    public static abstract class zza extends zzahw<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzahw, com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza) ((Status) obj));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    public zzahw(GoogleApiClient googleApiClient) {
        super(Drive.zzaid, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
    public /* synthetic */ void setResult(Object obj) {
        super.zzb((zzahw<R>) ((Result) obj));
    }
}
