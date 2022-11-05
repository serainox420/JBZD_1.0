package com.google.android.gms.games.leaderboard;

import android.os.Bundle;
/* loaded from: classes2.dex */
public final class LeaderboardScoreBufferHeader {
    private final Bundle zzaic;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private Builder() {
        }
    }

    public LeaderboardScoreBufferHeader(Bundle bundle) {
        this.zzaic = bundle == null ? new Bundle() : bundle;
    }

    public Bundle asBundle() {
        return this.zzaic;
    }
}
