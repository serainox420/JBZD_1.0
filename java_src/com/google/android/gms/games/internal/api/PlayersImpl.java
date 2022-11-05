package com.google.android.gms.games.internal.api;

import android.accounts.Account;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.player.ProfileSettingsEntity;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public final class PlayersImpl implements Players {

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$10  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass10 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, "nearby", (String) null, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$11  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass11 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, "played_with", (String) null, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$12  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass12 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, "played_with", (String) null, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$13  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass13 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzaad.zzb<Players.LoadPlayersResult>) this, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$14  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass14 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzaad.zzb<Players.LoadPlayersResult>) this, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$15  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass15 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc((zzaad.zzb<Players.LoadPlayersResult>) this, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$16  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass16 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc((zzaad.zzb<Players.LoadPlayersResult>) this, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$17  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass17 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$18  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass18 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$19  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass19 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb(this, null, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$20  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass20 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb(this, null, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$21  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass21 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzaad.zzb<Players.LoadPlayersResult>) this, (String) null, (String) null, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$22  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass22 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzaad.zzb<Players.LoadPlayersResult>) this, (String) null, (String) null, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$23  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass23 extends LoadXpForGameCategoriesResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzl(this, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$24  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass24 extends LoadXpStreamResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, (String) null, 0);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$25  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass25 extends LoadXpStreamResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze(this, (String) null, 0);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$26  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass26 extends LoadProfileSettingsResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.LoadProfileSettingsResult>) this, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$27  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass27 extends LoadProfileSettingsResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.LoadProfileSettingsResult>) this, false, true);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$28  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass28 extends UpdateProfileSettingsResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzh((zzaad.zzb<Status>) this, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$29  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass29 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (Account) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String[]) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$30  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass30 extends LoadStockProfileImagesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzr(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$31  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass31 extends UpdateGamerProfileImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.UpdateGamerProfileResult>) this, (String) null, false, (String) null, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$32  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass32 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzi((zzaad.zzb<Status>) this, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$33  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass33 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzj((zzaad.zzb<Status>) this, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$34  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass34 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzk((zzaad.zzb<Status>) this, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.PlayersImpl$9  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass9 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, "nearby", (String) null, 0, false, false);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class LoadPlayersImpl extends Games.BaseGamesApiMethodImpl<Players.LoadPlayersResult> {
        LoadPlayersImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaG */
        public Players.LoadPlayersResult zzc(final Status status) {
            return new Players.LoadPlayersResult(this) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadPlayersImpl.1
                @Override // com.google.android.gms.games.Players.LoadPlayersResult
                public PlayerBuffer getPlayers() {
                    return new PlayerBuffer(DataHolder.zzcJ(14));
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
    private static abstract class LoadProfileSettingsResultImpl extends Games.BaseGamesApiMethodImpl<Players.LoadProfileSettingsResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaH */
        public Players.LoadProfileSettingsResult zzc(Status status) {
            return new ProfileSettingsEntity(DataHolder.zzcJ(status.getStatusCode()));
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadStockProfileImagesImpl extends Games.BaseGamesApiMethodImpl<Players.LoadStockProfileImagesResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaI */
        public Players.LoadStockProfileImagesResult zzc(final Status status) {
            return new Players.LoadStockProfileImagesResult(this) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadStockProfileImagesImpl.1
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
    private static abstract class LoadXpForGameCategoriesResultImpl extends Games.BaseGamesApiMethodImpl<Players.LoadXpForGameCategoriesResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaJ */
        public Players.LoadXpForGameCategoriesResult zzc(final Status status) {
            return new Players.LoadXpForGameCategoriesResult(this) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadXpForGameCategoriesResultImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadXpStreamResultImpl extends Games.BaseGamesApiMethodImpl<Players.LoadXpStreamResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaK */
        public Players.LoadXpStreamResult zzc(final Status status) {
            return new Players.LoadXpStreamResult(this) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadXpStreamResultImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class UpdateGamerProfileImpl extends Games.BaseGamesApiMethodImpl<Players.UpdateGamerProfileResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaL */
        public Players.UpdateGamerProfileResult zzc(final Status status) {
            return new Players.UpdateGamerProfileResult(this) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.UpdateGamerProfileImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class UpdateProfileSettingsResultImpl extends Games.BaseGamesApiMethodImpl<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.games.Players
    public Intent getCompareProfileIntent(GoogleApiClient googleApiClient, Player player) {
        return Games.zzi(googleApiClient).zza(new PlayerEntity(player));
    }

    @Override // com.google.android.gms.games.Players
    public Player getCurrentPlayer(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzEQ();
    }

    @Override // com.google.android.gms.games.Players
    public String getCurrentPlayerId(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzaC(true);
    }

    @Override // com.google.android.gms.games.Players
    public Intent getPlayerSearchIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzFa();
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadConnectedPlayers(GoogleApiClient googleApiClient, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, z);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadInvitablePlayers(GoogleApiClient googleApiClient, final int i, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, i, false, z);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, i, true, false);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, "played_with", i, true, false);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, str, false);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, final String str, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, str, z);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, final int i, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new LoadPlayersImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzaad.zzb<Players.LoadPlayersResult>) this, "played_with", i, false, z);
            }
        });
    }
}
