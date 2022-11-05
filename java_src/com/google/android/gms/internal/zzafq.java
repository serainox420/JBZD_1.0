package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzafs;
/* loaded from: classes2.dex */
public class zzafq extends zzafs.zza {
    private final zza zzaKa;
    private zzaad.zzb<Status> zzaKb;
    private zzaad.zzb<zzaeh> zzaKc;
    private zzaad.zzb<zzagj> zzaKd;
    private zzaad.zzb<zzaeg> zzaKe;
    private zzaad.zzb<zzwp> zzaKf;
    private zzaad.zzb<FenceQueryResult> zzaKg;
    private zzaad.zzb<com.google.android.gms.awareness.fence.zzb> zzaKh;

    /* loaded from: classes2.dex */
    public interface zza {
    }

    private zzafq(zzaad.zzb<Status> zzbVar, zzaad.zzb<zzaeh> zzbVar2, zzaad.zzb<zzagj> zzbVar3, zzaad.zzb<zzaeg> zzbVar4, zzaad.zzb<zzwp> zzbVar5, zzaad.zzb<FenceQueryResult> zzbVar6, zzaad.zzb<com.google.android.gms.awareness.fence.zzb> zzbVar7, zza zzaVar) {
        this.zzaKb = zzbVar;
        this.zzaKc = zzbVar2;
        this.zzaKd = zzbVar3;
        this.zzaKe = zzbVar4;
        this.zzaKf = zzbVar5;
        this.zzaKg = zzbVar6;
        this.zzaKh = zzbVar7;
        this.zzaKa = zzaVar;
    }

    public static zzafq zza(zzaad.zzb<Status> zzbVar, zza zzaVar) {
        return new zzafq(zzbVar, null, null, null, null, null, null, zzaVar);
    }

    public static zzafq zzd(zzaad.zzb<zzwp> zzbVar) {
        return new zzafq(null, null, null, null, zzbVar, null, null, null);
    }

    public static zzafq zze(zzaad.zzb<FenceQueryResult> zzbVar) {
        return new zzafq(null, null, null, null, null, zzbVar, null, null);
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zza(final Status status, final DataHolder dataHolder) throws RemoteException {
        if (this.zzaKe == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onStateResult");
            return;
        }
        this.zzaKe.setResult(new zzaeg(this) { // from class: com.google.android.gms.internal.zzafq.3
            private final zzaed zzaKi;

            {
                this.zzaKi = dataHolder == null ? null : new zzaed(dataHolder);
            }

            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }
        });
        this.zzaKe = null;
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zza(final Status status, final DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException {
        if (this.zzaKc == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onReadResult.");
            return;
        }
        this.zzaKc.setResult(new zzaeh(this) { // from class: com.google.android.gms.internal.zzafq.1
            private final zzaed zzaKi;

            {
                this.zzaKi = dataHolder == null ? null : new zzaed(dataHolder);
            }

            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }
        });
        this.zzaKc = null;
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zza(final Status status, final zzaet zzaetVar) {
        if (this.zzaKh == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onFenceEvaluateResult");
            return;
        }
        this.zzaKh.setResult(new com.google.android.gms.awareness.fence.zzb(this) { // from class: com.google.android.gms.internal.zzafq.6
            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }
        });
        this.zzaKh = null;
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zza(final Status status, final zzaev zzaevVar) {
        if (this.zzaKg == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onFenceQueryResult");
            return;
        }
        this.zzaKg.setResult(new FenceQueryResult(this) { // from class: com.google.android.gms.internal.zzafq.5
            @Override // com.google.android.gms.awareness.fence.FenceQueryResult
            public FenceStateMap getFenceStateMap() {
                return zzaevVar;
            }

            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }
        });
        this.zzaKg = null;
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zza(final Status status, final zzagh zzaghVar) throws RemoteException {
        if (this.zzaKd == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onWriteBatchResult");
            return;
        }
        this.zzaKd.setResult(new zzagj(this) { // from class: com.google.android.gms.internal.zzafq.2
            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }
        });
        this.zzaKd = null;
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zza(final Status status, final zzwk zzwkVar) throws RemoteException {
        if (this.zzaKf == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onSnapshotResult");
            return;
        }
        this.zzaKf.setResult(new zzwp(this) { // from class: com.google.android.gms.internal.zzafq.4
            @Override // com.google.android.gms.common.api.Result
            public Status getStatus() {
                return status;
            }

            @Override // com.google.android.gms.internal.zzwp
            public zzwk zzsb() {
                return zzwkVar;
            }
        });
        this.zzaKf = null;
    }

    @Override // com.google.android.gms.internal.zzafs
    public void zzh(Status status) throws RemoteException {
        if (this.zzaKb == null) {
            zzcf.zzd("ContextManagerPendingResult", "Unexpected callback to onStatusResult.");
            return;
        }
        this.zzaKb.setResult(status);
        this.zzaKb = null;
    }
}
