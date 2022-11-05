package com.google.android.gms.games;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.games.internal.player.StockProfileImage;
/* loaded from: classes.dex */
public interface Players {
    public static final String EXTRA_PLAYER_SEARCH_RESULTS = "player_search_results";

    /* loaded from: classes.dex */
    public interface LoadPlayersResult extends Releasable, Result {
        PlayerBuffer getPlayers();
    }

    /* loaded from: classes2.dex */
    public interface LoadProfileSettingsResult extends Result {
        String zzDQ();

        boolean zzDT();

        boolean zzDY();

        StockProfileImage zzDZ();

        boolean zzEa();

        boolean zzEb();

        boolean zzEc();
    }

    /* loaded from: classes2.dex */
    public interface LoadStockProfileImagesResult extends Releasable, Result {
    }

    /* loaded from: classes2.dex */
    public interface LoadXpForGameCategoriesResult extends Result {
    }

    /* loaded from: classes2.dex */
    public interface LoadXpForGamesResult extends Result {
    }

    /* loaded from: classes2.dex */
    public interface LoadXpStreamResult extends Result {
    }

    /* loaded from: classes2.dex */
    public interface UpdateGamerProfileResult extends Result {
    }

    Intent getCompareProfileIntent(GoogleApiClient googleApiClient, Player player);

    Player getCurrentPlayer(GoogleApiClient googleApiClient);

    String getCurrentPlayerId(GoogleApiClient googleApiClient);

    Intent getPlayerSearchIntent(GoogleApiClient googleApiClient);

    PendingResult<LoadPlayersResult> loadConnectedPlayers(GoogleApiClient googleApiClient, boolean z);

    PendingResult<LoadPlayersResult> loadInvitablePlayers(GoogleApiClient googleApiClient, int i, boolean z);

    PendingResult<LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient googleApiClient, int i);

    PendingResult<LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, int i);

    PendingResult<LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, String str);

    PendingResult<LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, String str, boolean z);

    PendingResult<LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, int i, boolean z);
}
