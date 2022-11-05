package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.games.leaderboard.Leaderboards;
/* loaded from: classes2.dex */
public class LeaderboardMetadataResponse extends zze<Leaderboards.LeaderboardMetadataResult> implements Releasable {
    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        zzvs().release();
    }
}
