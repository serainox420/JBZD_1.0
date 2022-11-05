package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
/* loaded from: classes2.dex */
public final class LeaderboardVariantRef extends zzc implements LeaderboardVariant {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LeaderboardVariantRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return LeaderboardVariantEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public int getCollection() {
        return getInteger("collection");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getDisplayPlayerRank() {
        return getString("player_display_rank");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getDisplayPlayerScore() {
        return getString("player_display_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getNumScores() {
        if (zzdh("total_scores")) {
            return -1L;
        }
        return getLong("total_scores");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getPlayerRank() {
        if (zzdh("player_rank")) {
            return -1L;
        }
        return getLong("player_rank");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getPlayerScoreTag() {
        return getString("player_score_tag");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getRawPlayerScore() {
        if (zzdh("player_raw_score")) {
            return -1L;
        }
        return getLong("player_raw_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public int getTimeSpan() {
        return getInteger("timespan");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public boolean hasPlayerInfo() {
        return !zzdh("player_raw_score");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return LeaderboardVariantEntity.zza(this);
    }

    public String toString() {
        return LeaderboardVariantEntity.zzb(this);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzGq() {
        return getString("top_page_token_next");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzGr() {
        return getString("window_page_token_prev");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzGs() {
        return getString("window_page_token_next");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGt */
    public LeaderboardVariant mo520freeze() {
        return new LeaderboardVariantEntity(this);
    }
}
