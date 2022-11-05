package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.zzaaf;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class Batch extends zzaaf<BatchResult> {
    private int zzayM;
    private boolean zzayN;
    private boolean zzayO;
    private final PendingResult<?>[] zzayP;
    private final Object zzrJ;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private GoogleApiClient zzanE;
        private List<PendingResult<?>> zzayR = new ArrayList();

        public Builder(GoogleApiClient googleApiClient) {
            this.zzanE = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.zzayR.size());
            this.zzayR.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.zzayR, this.zzanE);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzrJ = new Object();
        this.zzayM = list.size();
        this.zzayP = new PendingResult[this.zzayM];
        if (list.isEmpty()) {
            zzb((Batch) new BatchResult(Status.zzazx, this.zzayP));
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            PendingResult<?> pendingResult = list.get(i2);
            this.zzayP[i2] = pendingResult;
            pendingResult.zza(new PendingResult.zza() { // from class: com.google.android.gms.common.api.Batch.1
                @Override // com.google.android.gms.common.api.PendingResult.zza
                public void zzy(Status status) {
                    synchronized (Batch.this.zzrJ) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.zzayO = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.zzayN = true;
                        }
                        Batch.zzb(Batch.this);
                        if (Batch.this.zzayM == 0) {
                            if (Batch.this.zzayO) {
                                Batch.super.cancel();
                            } else {
                                Batch.this.zzb((Batch) new BatchResult(Batch.this.zzayN ? new Status(13) : Status.zzazx, Batch.this.zzayP));
                            }
                        }
                    }
                }
            });
            i = i2 + 1;
        }
    }

    static /* synthetic */ int zzb(Batch batch) {
        int i = batch.zzayM;
        batch.zzayM = i - 1;
        return i;
    }

    @Override // com.google.android.gms.internal.zzaaf, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.zzayP) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.internal.zzaaf
    /* renamed from: createFailedResult */
    public BatchResult zzc(Status status) {
        return new BatchResult(status, this.zzayP);
    }
}
