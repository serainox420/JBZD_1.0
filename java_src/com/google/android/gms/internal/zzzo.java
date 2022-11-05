package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzzr;
/* loaded from: classes2.dex */
public class zzzo extends com.google.android.gms.common.api.zzc<Api.ApiOptions.NoOptions> implements zzzl {

    /* loaded from: classes2.dex */
    static class zza extends zzzr.zza {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzzr
        public void zza(Status status, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzr
        public void zzb(Status status, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzr
        public void zzv(Status status) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzr
        public void zzw(Status status) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzr
        public void zzx(Status status) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2.dex */
    static final class zzb extends zzaad.zza<Status, zzzp> {
        private final zzzm zzaxS;

        zzb(zzzm zzzmVar, GoogleApiClient googleApiClient) {
            super(zzzk.API, googleApiClient);
            this.zzaxS = zzzmVar;
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb) ((Status) obj));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzzp zzzpVar) throws RemoteException {
            zza zzaVar = new zza() { // from class: com.google.android.gms.internal.zzzo.zzb.1
                @Override // com.google.android.gms.internal.zzzo.zza, com.google.android.gms.internal.zzzr
                public void zzv(Status status) {
                    zzb.this.zzb((zzb) status);
                }
            };
            try {
                zzzo.zzb(this.zzaxS);
                zzzpVar.zza(zzaVar, this.zzaxS);
            } catch (RuntimeException e) {
                Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
                zzB(new Status(10, "MessageProducer"));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    zzzo(Context context) {
        super(context, zzzk.API, (Api.ApiOptions) null, new zzzy());
    }

    public static zzzl zzaA(Context context) {
        return new zzzo(context);
    }

    static void zzb(zzzm zzzmVar) {
        if (zzzmVar.zzaxQ != null && zzzmVar.zzaxP.zzcvy.length == 0) {
            zzzmVar.zzaxP.zzcvy = zzzmVar.zzaxQ.zzuV();
        }
        if (zzzmVar.zzaxR != null && zzzmVar.zzaxP.zzcvF.length == 0) {
            zzzmVar.zzaxP.zzcvF = zzzmVar.zzaxR.zzuV();
        }
        zzzmVar.zzaxJ = zzbxt.zzf(zzzmVar.zzaxP);
    }

    @Override // com.google.android.gms.internal.zzzl
    public PendingResult<Status> zza(zzzm zzzmVar) {
        return doBestEffortWrite((zzzo) new zzb(zzzmVar, asGoogleApiClient()));
    }
}
