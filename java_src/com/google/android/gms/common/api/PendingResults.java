package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaaf;
import com.google.android.gms.internal.zzabk;
import com.google.android.gms.internal.zzabt;
/* loaded from: classes2.dex */
public final class PendingResults {

    /* loaded from: classes2.dex */
    private static final class zza<R extends Result> extends zzaaf<R> {
        private final R zzazs;

        public zza(R r) {
            super(Looper.getMainLooper());
            this.zzazs = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        public R zzc(Status status) {
            if (status.getStatusCode() != this.zzazs.getStatus().getStatusCode()) {
                throw new UnsupportedOperationException("Creating failed results is not supported");
            }
            return this.zzazs;
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzb<R extends Result> extends zzaaf<R> {
        private final R zzazt;

        public zzb(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.zzazt = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        public R zzc(Status status) {
            return this.zzazt;
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzc<R extends Result> extends zzaaf<R> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        public R zzc(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        zzabt zzabtVar = new zzabt(Looper.getMainLooper());
        zzabtVar.cancel();
        return zzabtVar;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzac.zzb(r, "Result must not be null");
        zzac.zzb(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        zza zzaVar = new zza(r);
        zzaVar.cancel();
        return zzaVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzac.zzb(r, "Result must not be null");
        zzc zzcVar = new zzc(null);
        zzcVar.zzb(r);
        return new zzabk(zzcVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzac.zzb(status, "Result must not be null");
        zzabt zzabtVar = new zzabt(Looper.getMainLooper());
        zzabtVar.zzb((zzabt) status);
        return zzabtVar;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzac.zzb(r, "Result must not be null");
        zzac.zzb(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        zzb zzbVar = new zzb(googleApiClient, r);
        zzbVar.zzb(r);
        return zzbVar;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzac.zzb(status, "Result must not be null");
        zzabt zzabtVar = new zzabt(googleApiClient);
        zzabtVar.zzb((zzabt) status);
        return zzabtVar;
    }

    public static <R extends Result> OptionalPendingResult<R> zzb(R r, GoogleApiClient googleApiClient) {
        zzac.zzb(r, "Result must not be null");
        zzc zzcVar = new zzc(googleApiClient);
        zzcVar.zzb(r);
        return new zzabk(zzcVar);
    }
}
