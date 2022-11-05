package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public class zzaad {

    /* loaded from: classes.dex */
    public static abstract class zza<R extends Result, A extends Api.zzb> extends zzaaf<R> implements zzb<R> {
        private final Api<?> zzaxf;
        private final Api.zzc<A> zzazY;

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public zza(Api.zzc<A> zzcVar, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "GoogleApiClient must not be null"));
            this.zzazY = (Api.zzc) com.google.android.gms.common.internal.zzac.zzw(zzcVar);
            this.zzaxf = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public zza(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "GoogleApiClient must not be null"));
            this.zzazY = (Api.zzc<A>) api.zzvg();
            this.zzaxf = api;
        }

        private void zzc(RemoteException remoteException) {
            zzB(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        public final Api<?> getApi() {
            return this.zzaxf;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R, A>) ((Result) obj));
        }

        @Override // com.google.android.gms.internal.zzaad.zzb
        public final void zzB(Status status) {
            com.google.android.gms.common.internal.zzac.zzb(!status.isSuccess(), "Failed result must not be success");
            zzb((zza<R, A>) zzc(status));
        }

        protected abstract void zza(A a2) throws RemoteException;

        public final void zzb(A a2) throws DeadObjectException {
            try {
                zza((zza<R, A>) a2);
            } catch (DeadObjectException e) {
                zzc(e);
                throw e;
            } catch (RemoteException e2) {
                zzc(e2);
            }
        }

        public final Api.zzc<A> zzvg() {
            return this.zzazY;
        }
    }

    /* loaded from: classes.dex */
    public interface zzb<R> {
        void setResult(R r);

        void zzB(Status status);
    }
}
