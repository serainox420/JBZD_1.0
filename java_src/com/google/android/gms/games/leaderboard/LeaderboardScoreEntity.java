package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
/* loaded from: classes2.dex */
public final class LeaderboardScoreEntity implements LeaderboardScore {
    private final long zzbdF;
    private final String zzbdG;
    private final String zzbdH;
    private final long zzbdI;
    private final long zzbdJ;
    private final String zzbdK;
    private final Uri zzbdL;
    private final Uri zzbdM;
    private final PlayerEntity zzbdN;
    private final String zzbdO;
    private final String zzbdP;
    private final String zzbdQ;

    public LeaderboardScoreEntity(LeaderboardScore leaderboardScore) {
        this.zzbdF = leaderboardScore.getRank();
        this.zzbdG = (String) zzac.zzw(leaderboardScore.getDisplayRank());
        this.zzbdH = (String) zzac.zzw(leaderboardScore.getDisplayScore());
        this.zzbdI = leaderboardScore.getRawScore();
        this.zzbdJ = leaderboardScore.getTimestampMillis();
        this.zzbdK = leaderboardScore.getScoreHolderDisplayName();
        this.zzbdL = leaderboardScore.getScoreHolderIconImageUri();
        this.zzbdM = leaderboardScore.getScoreHolderHiResImageUri();
        Player scoreHolder = leaderboardScore.getScoreHolder();
        this.zzbdN = scoreHolder == null ? null : (PlayerEntity) scoreHolder.mo520freeze();
        this.zzbdO = leaderboardScore.getScoreTag();
        this.zzbdP = leaderboardScore.getScoreHolderIconImageUrl();
        this.zzbdQ = leaderboardScore.getScoreHolderHiResImageUrl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(LeaderboardScore leaderboardScore) {
        return zzaa.hashCode(Long.valueOf(leaderboardScore.getRank()), leaderboardScore.getDisplayRank(), Long.valueOf(leaderboardScore.getRawScore()), leaderboardScore.getDisplayScore(), Long.valueOf(leaderboardScore.getTimestampMillis()), leaderboardScore.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolder());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(LeaderboardScore leaderboardScore, Object obj) {
        if (!(obj instanceof LeaderboardScore)) {
            return false;
        }
        if (leaderboardScore == obj) {
            return true;
        }
        LeaderboardScore leaderboardScore2 = (LeaderboardScore) obj;
        return zzaa.equal(Long.valueOf(leaderboardScore2.getRank()), Long.valueOf(leaderboardScore.getRank())) && zzaa.equal(leaderboardScore2.getDisplayRank(), leaderboardScore.getDisplayRank()) && zzaa.equal(Long.valueOf(leaderboardScore2.getRawScore()), Long.valueOf(leaderboardScore.getRawScore())) && zzaa.equal(leaderboardScore2.getDisplayScore(), leaderboardScore.getDisplayScore()) && zzaa.equal(Long.valueOf(leaderboardScore2.getTimestampMillis()), Long.valueOf(leaderboardScore.getTimestampMillis())) && zzaa.equal(leaderboardScore2.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderDisplayName()) && zzaa.equal(leaderboardScore2.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderIconImageUri()) && zzaa.equal(leaderboardScore2.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolderHiResImageUri()) && zzaa.equal(leaderboardScore2.getScoreHolder(), leaderboardScore.getScoreHolder()) && zzaa.equal(leaderboardScore2.getScoreTag(), leaderboardScore.getScoreTag());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(LeaderboardScore leaderboardScore) {
        return zzaa.zzv(leaderboardScore).zzg("Rank", Long.valueOf(leaderboardScore.getRank())).zzg("DisplayRank", leaderboardScore.getDisplayRank()).zzg("Score", Long.valueOf(leaderboardScore.getRawScore())).zzg("DisplayScore", leaderboardScore.getDisplayScore()).zzg("Timestamp", Long.valueOf(leaderboardScore.getTimestampMillis())).zzg("DisplayName", leaderboardScore.getScoreHolderDisplayName()).zzg("IconImageUri", leaderboardScore.getScoreHolderIconImageUri()).zzg("IconImageUrl", leaderboardScore.getScoreHolderIconImageUrl()).zzg("HiResImageUri", leaderboardScore.getScoreHolderHiResImageUri()).zzg("HiResImageUrl", leaderboardScore.getScoreHolderHiResImageUrl()).zzg("Player", leaderboardScore.getScoreHolder() == null ? null : leaderboardScore.getScoreHolder()).zzg("ScoreTag", leaderboardScore.getScoreTag()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getDisplayRank() {
        return this.zzbdG;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzbdG, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getDisplayScore() {
        return this.zzbdH;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzbdH, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getRank() {
        return this.zzbdF;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getRawScore() {
        return this.zzbdI;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Player getScoreHolder() {
        return this.zzbdN;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderDisplayName() {
        return this.zzbdN == null ? this.zzbdK : this.zzbdN.getDisplayName();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.zzbdN == null) {
            zzh.zzb(this.zzbdK, charArrayBuffer);
        } else {
            this.zzbdN.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Uri getScoreHolderHiResImageUri() {
        return this.zzbdN == null ? this.zzbdM : this.zzbdN.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderHiResImageUrl() {
        return this.zzbdN == null ? this.zzbdQ : this.zzbdN.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Uri getScoreHolderIconImageUri() {
        return this.zzbdN == null ? this.zzbdL : this.zzbdN.getIconImageUri();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderIconImageUrl() {
        return this.zzbdN == null ? this.zzbdP : this.zzbdN.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreTag() {
        return this.zzbdO;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getTimestampMillis() {
        return this.zzbdJ;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGp */
    public LeaderboardScore mo520freeze() {
        return this;
    }
}
