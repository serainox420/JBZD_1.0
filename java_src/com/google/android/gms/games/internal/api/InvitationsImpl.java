package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
/* loaded from: classes2.dex */
public final class InvitationsImpl implements Invitations {

    /* renamed from: com.google.android.gms.games.internal.api.InvitationsImpl$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 extends LoadInvitationsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzf(this, (String) null, 0);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.InvitationsImpl$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends LoadInvitationsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzm(this, null);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadInvitationsImpl extends Games.BaseGamesApiMethodImpl<Invitations.LoadInvitationsResult> {
        private LoadInvitationsImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzax */
        public Invitations.LoadInvitationsResult zzc(final Status status) {
            return new Invitations.LoadInvitationsResult(this) { // from class: com.google.android.gms.games.internal.api.InvitationsImpl.LoadInvitationsImpl.1
                @Override // com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult
                public InvitationBuffer getInvitations() {
                    return new InvitationBuffer(DataHolder.zzcJ(14));
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Invitations
    public Intent getInvitationInboxIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzEV();
    }

    @Override // com.google.android.gms.games.multiplayer.Invitations
    public PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient googleApiClient) {
        return loadInvitations(googleApiClient, 0);
    }

    @Override // com.google.android.gms.games.multiplayer.Invitations
    public PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zza((GoogleApiClient) new LoadInvitationsImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.InvitationsImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, i);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.Invitations
    public void registerInvitationListener(GoogleApiClient googleApiClient, OnInvitationReceivedListener onInvitationReceivedListener) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zza(googleApiClient.zzr(onInvitationReceivedListener));
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Invitations
    public void unregisterInvitationListener(GoogleApiClient googleApiClient) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzEW();
        }
    }
}
