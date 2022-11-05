package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaci;
/* loaded from: classes2.dex */
public final class zzach implements zzacg {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzace {
        private final zzaad.zzb<Status> zzaGN;

        public zza(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzace, com.google.android.gms.internal.zzack
        public void zzdd(int i) throws RemoteException {
            this.zzaGN.setResult(new Status(i));
        }
    }

    @Override // com.google.android.gms.internal.zzacg
    public PendingResult<Status> zzg(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzaci.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzach.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzacj zzacjVar) throws RemoteException {
                ((zzacl) zzacjVar.zzxD()).zza(new zza(this));
            }
        });
    }
}
