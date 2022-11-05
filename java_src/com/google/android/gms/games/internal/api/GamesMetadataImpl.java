package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.internal.GamesClientImpl;
/* loaded from: classes2.dex */
public final class GamesMetadataImpl implements GamesMetadata {

    /* renamed from: com.google.android.gms.games.internal.api.GamesMetadataImpl$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 extends LoadGameInstancesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzj(this, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.GamesMetadataImpl$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends LoadGameSearchSuggestionsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzk(this, (String) null);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadGameInstancesImpl extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameInstancesResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzau */
        public GamesMetadata.LoadGameInstancesResult zzc(final Status status) {
            return new GamesMetadata.LoadGameInstancesResult(this) { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGameInstancesImpl.1
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
    private static abstract class LoadGameSearchSuggestionsImpl extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameSearchSuggestionsResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzav */
        public GamesMetadata.LoadGameSearchSuggestionsResult zzc(final Status status) {
            return new GamesMetadata.LoadGameSearchSuggestionsResult(this) { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGameSearchSuggestionsImpl.1
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
    private static abstract class LoadGamesImpl extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGamesResult> {
        private LoadGamesImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaw */
        public GamesMetadata.LoadGamesResult zzc(final Status status) {
            return new GamesMetadata.LoadGamesResult(this) { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGamesImpl.1
                @Override // com.google.android.gms.games.GamesMetadata.LoadGamesResult
                public GameBuffer getGames() {
                    return new GameBuffer(DataHolder.zzcJ(14));
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

    @Override // com.google.android.gms.games.GamesMetadata
    public Game getCurrentGame(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzER();
    }

    @Override // com.google.android.gms.games.GamesMetadata
    public PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new LoadGamesImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzg(this);
            }
        });
    }
}
