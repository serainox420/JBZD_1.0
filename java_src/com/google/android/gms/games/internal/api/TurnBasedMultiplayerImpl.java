package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import java.util.List;
/* loaded from: classes2.dex */
public final class TurnBasedMultiplayerImpl implements TurnBasedMultiplayer {

    /* renamed from: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$11  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass11 extends InitiateMatchImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc(this, (String) null, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$12  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass12 extends InitiateMatchImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, (String) null, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl$13  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass13 extends LoadMatchesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, 0, (int[]) null);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class CancelMatchImpl extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.CancelMatchResult> {
        private final String zzGV;

        public CancelMatchImpl(String str, GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzGV = str;
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzba */
        public TurnBasedMultiplayer.CancelMatchResult zzc(final Status status) {
            return new TurnBasedMultiplayer.CancelMatchResult() { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.CancelMatchImpl.1
                @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult
                public String getMatchId() {
                    return CancelMatchImpl.this.zzGV;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class InitiateMatchImpl extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.InitiateMatchResult> {
        private InitiateMatchImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbb */
        public TurnBasedMultiplayer.InitiateMatchResult zzc(final Status status) {
            return new TurnBasedMultiplayer.InitiateMatchResult(this) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.InitiateMatchImpl.1
                @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult
                public TurnBasedMatch getMatch() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LeaveMatchImpl extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LeaveMatchResult> {
        private LeaveMatchImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbc */
        public TurnBasedMultiplayer.LeaveMatchResult zzc(final Status status) {
            return new TurnBasedMultiplayer.LeaveMatchResult(this) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.LeaveMatchImpl.1
                @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult
                public TurnBasedMatch getMatch() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadMatchImpl extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LoadMatchResult> {
        private LoadMatchImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbd */
        public TurnBasedMultiplayer.LoadMatchResult zzc(final Status status) {
            return new TurnBasedMultiplayer.LoadMatchResult(this) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.LoadMatchImpl.1
                @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult
                public TurnBasedMatch getMatch() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadMatchesImpl extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.LoadMatchesResult> {
        private LoadMatchesImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbe */
        public TurnBasedMultiplayer.LoadMatchesResult zzc(final Status status) {
            return new TurnBasedMultiplayer.LoadMatchesResult(this) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.LoadMatchesImpl.1
                @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult
                public LoadMatchesResponse getMatches() {
                    return new LoadMatchesResponse(new Bundle());
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

    /* loaded from: classes2.dex */
    private static abstract class UpdateMatchImpl extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.UpdateMatchResult> {
        private UpdateMatchImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbf */
        public TurnBasedMultiplayer.UpdateMatchResult zzc(final Status status) {
            return new TurnBasedMultiplayer.UpdateMatchResult(this) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.UpdateMatchImpl.1
                @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult
                public TurnBasedMatch getMatch() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> acceptInvitation(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new InitiateMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzd(this, str);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.CancelMatchResult> cancelMatch(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new CancelMatchImpl(this, str, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzf(this, str);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> createMatch(GoogleApiClient googleApiClient, final TurnBasedMatchConfig turnBasedMatchConfig) {
        return googleApiClient.zzb((GoogleApiClient) new InitiateMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, turnBasedMatchConfig);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public void declineInvitation(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzq(str, 1);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public void dismissInvitation(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzp(str, 1);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public void dismissMatch(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzem(str);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient googleApiClient, String str) {
        return finishMatch(googleApiClient, str, (byte[]) null, (ParticipantResult[]) null);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient googleApiClient, String str, byte[] bArr, List<ParticipantResult> list) {
        return finishMatch(googleApiClient, str, bArr, list == null ? null : (ParticipantResult[]) list.toArray(new ParticipantResult[list.size()]));
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient googleApiClient, final String str, final byte[] bArr, final ParticipantResult... participantResultArr) {
        return googleApiClient.zzb((GoogleApiClient) new UpdateMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, str, bArr, participantResultArr);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public Intent getInboxIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzEU();
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public int getMaxMatchDataSize(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzFd();
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2) {
        return Games.zzi(googleApiClient).zzb(i, i2, true);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2, boolean z) {
        return Games.zzi(googleApiClient).zzb(i, i2, z);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatch(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new LeaveMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zze(this, str);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatchDuringTurn(GoogleApiClient googleApiClient, final String str, final String str2) {
        return googleApiClient.zzb((GoogleApiClient) new LeaveMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.LoadMatchResult> loadMatch(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new LoadMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzg(this, str);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient googleApiClient, final int i, final int[] iArr) {
        return googleApiClient.zza((GoogleApiClient) new LoadMatchesImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, i, iArr);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient googleApiClient, int[] iArr) {
        return loadMatchesByStatus(googleApiClient, 0, iArr);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public void registerMatchUpdateListener(GoogleApiClient googleApiClient, OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzb(googleApiClient.zzr(onTurnBasedMatchUpdateReceivedListener));
        }
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.InitiateMatchResult> rematch(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new InitiateMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzc(this, str);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2) {
        return takeTurn(googleApiClient, str, bArr, str2, (ParticipantResult[]) null);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2, List<ParticipantResult> list) {
        return takeTurn(googleApiClient, str, bArr, str2, list == null ? null : (ParticipantResult[]) list.toArray(new ParticipantResult[list.size()]));
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient googleApiClient, final String str, final byte[] bArr, final String str2, final ParticipantResult... participantResultArr) {
        return googleApiClient.zzb((GoogleApiClient) new UpdateMatchImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, str, bArr, str2, participantResultArr);
            }
        });
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer
    public void unregisterMatchUpdateListener(GoogleApiClient googleApiClient) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzEX();
        }
    }
}
