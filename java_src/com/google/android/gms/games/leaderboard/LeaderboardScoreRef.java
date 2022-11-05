package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
/* loaded from: classes2.dex */
public final class LeaderboardScoreRef extends zzc implements LeaderboardScore {
    private final PlayerRef zzbdR;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LeaderboardScoreRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzbdR = new PlayerRef(dataHolder, i);
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return LeaderboardScoreEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getDisplayRank() {
        return getString("display_rank");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        zza("display_rank", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getDisplayScore() {
        return getString("display_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        zza("display_score", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getRank() {
        return getLong("rank");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getRawScore() {
        return getLong("raw_score");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Player getScoreHolder() {
        if (zzdh("external_player_id")) {
            return null;
        }
        return this.zzbdR;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderDisplayName() {
        return zzdh("external_player_id") ? getString("default_display_name") : this.zzbdR.getDisplayName();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (zzdh("external_player_id")) {
            zza("default_display_name", charArrayBuffer);
        } else {
            this.zzbdR.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Uri getScoreHolderHiResImageUri() {
        if (zzdh("external_player_id")) {
            return null;
        }
        return this.zzbdR.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderHiResImageUrl() {
        if (zzdh("external_player_id")) {
            return null;
        }
        return this.zzbdR.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Uri getScoreHolderIconImageUri() {
        return zzdh("external_player_id") ? zzdg("default_display_image_uri") : this.zzbdR.getIconImageUri();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderIconImageUrl() {
        return zzdh("external_player_id") ? getString("default_display_image_url") : this.zzbdR.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreTag() {
        return getString("score_tag");
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getTimestampMillis() {
        return getLong("achieved_timestamp");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return LeaderboardScoreEntity.zza(this);
    }

    public String toString() {
        return LeaderboardScoreEntity.zzb(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGp */
    public LeaderboardScore mo520freeze() {
        return new LeaderboardScoreEntity(this);
    }
}
