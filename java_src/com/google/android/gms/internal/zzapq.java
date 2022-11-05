package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.SessionsApi;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.result.SessionReadResult;
import com.google.android.gms.fitness.result.SessionStopResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaok;
import com.google.android.gms.internal.zzapd;
import com.google.android.gms.internal.zzape;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzapq implements SessionsApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzapd.zza {
        private final zzaad.zzb<SessionReadResult> zzaGN;

        private zza(zzaad.zzb<SessionReadResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzapd
        public void zza(SessionReadResult sessionReadResult) throws RemoteException {
            this.zzaGN.setResult(sessionReadResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzape.zza {
        private final zzaad.zzb<SessionStopResult> zzaGN;

        private zzb(zzaad.zzb<SessionStopResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzape
        public void zza(SessionStopResult sessionStopResult) {
            this.zzaGN.setResult(sessionStopResult);
        }
    }

    private PendingResult<SessionStopResult> zza(GoogleApiClient googleApiClient, final String str, final String str2) {
        return googleApiClient.zzb((GoogleApiClient) new zzaok.zza<SessionStopResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapq.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaok zzaokVar) throws RemoteException {
                ((zzaoz) zzaokVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbf(str, str2, new zzb(this)));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzab */
            public SessionStopResult zzc(Status status) {
                return SessionStopResult.zzaj(status);
            }
        });
    }

    @Override // com.google.android.gms.fitness.SessionsApi
    public PendingResult<Status> insertSession(GoogleApiClient googleApiClient, final SessionInsertRequest sessionInsertRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaok.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapq.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaok zzaokVar) throws RemoteException {
                ((zzaoz) zzaokVar.zzxD()).zza(new SessionInsertRequest(sessionInsertRequest, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.SessionsApi
    public PendingResult<SessionReadResult> readSession(GoogleApiClient googleApiClient, final SessionReadRequest sessionReadRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaok.zza<SessionReadResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapq.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaok zzaokVar) throws RemoteException {
                ((zzaoz) zzaokVar.zzxD()).zza(new SessionReadRequest(sessionReadRequest, new zza(this)));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzac */
            public SessionReadResult zzc(Status status) {
                return SessionReadResult.zzai(status);
            }
        });
    }

    @Override // com.google.android.gms.fitness.SessionsApi
    public PendingResult<Status> registerForSessions(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return zza(googleApiClient, pendingIntent, 0);
    }

    @Override // com.google.android.gms.fitness.SessionsApi
    public PendingResult<Status> startSession(GoogleApiClient googleApiClient, final Session session) {
        com.google.android.gms.common.internal.zzac.zzb(session, "Session cannot be null");
        com.google.android.gms.common.internal.zzac.zzb(session.getEndTime(TimeUnit.MILLISECONDS) == 0, "Cannot start a session which has already ended");
        return googleApiClient.zzb((GoogleApiClient) new zzaok.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapq.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaok zzaokVar) throws RemoteException {
                ((zzaoz) zzaokVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbd(session, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.SessionsApi
    public PendingResult<SessionStopResult> stopSession(GoogleApiClient googleApiClient, String str) {
        return zza(googleApiClient, (String) null, str);
    }

    @Override // com.google.android.gms.fitness.SessionsApi
    public PendingResult<Status> unregisterForSessions(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zzaok.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapq.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaok zzaokVar) throws RemoteException {
                ((zzaoz) zzaokVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbh(pendingIntent, new zzapr(this)));
            }
        });
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final PendingIntent pendingIntent, final int i) {
        return googleApiClient.zzb((GoogleApiClient) new zzaok.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapq.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaok zzaokVar) throws RemoteException {
                ((zzaoz) zzaokVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbb(pendingIntent, new zzapr(this), i));
            }
        });
    }
}
