package com.google.android.gms.games.stats;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2.dex */
public interface Stats {

    /* loaded from: classes2.dex */
    public interface LoadPlayerStatsResult extends Releasable, Result {
        PlayerStats getPlayerStats();
    }

    PendingResult<LoadPlayerStatsResult> loadPlayerStats(GoogleApiClient googleApiClient, boolean z);
}
