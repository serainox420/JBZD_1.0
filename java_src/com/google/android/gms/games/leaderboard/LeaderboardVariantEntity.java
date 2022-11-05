package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.constants.LeaderboardCollection;
import com.google.android.gms.games.internal.constants.TimeSpan;
/* loaded from: classes2.dex */
public final class LeaderboardVariantEntity implements LeaderboardVariant {
    private final int zzbdS;
    private final int zzbdT;
    private final boolean zzbdU;
    private final long zzbdV;
    private final String zzbdW;
    private final long zzbdX;
    private final String zzbdY;
    private final String zzbdZ;
    private final long zzbea;
    private final String zzbeb;
    private final String zzbec;
    private final String zzbed;

    public LeaderboardVariantEntity(LeaderboardVariant leaderboardVariant) {
        this.zzbdS = leaderboardVariant.getTimeSpan();
        this.zzbdT = leaderboardVariant.getCollection();
        this.zzbdU = leaderboardVariant.hasPlayerInfo();
        this.zzbdV = leaderboardVariant.getRawPlayerScore();
        this.zzbdW = leaderboardVariant.getDisplayPlayerScore();
        this.zzbdX = leaderboardVariant.getPlayerRank();
        this.zzbdY = leaderboardVariant.getDisplayPlayerRank();
        this.zzbdZ = leaderboardVariant.getPlayerScoreTag();
        this.zzbea = leaderboardVariant.getNumScores();
        this.zzbeb = leaderboardVariant.zzGq();
        this.zzbec = leaderboardVariant.zzGr();
        this.zzbed = leaderboardVariant.zzGs();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(LeaderboardVariant leaderboardVariant) {
        return zzaa.hashCode(Integer.valueOf(leaderboardVariant.getTimeSpan()), Integer.valueOf(leaderboardVariant.getCollection()), Boolean.valueOf(leaderboardVariant.hasPlayerInfo()), Long.valueOf(leaderboardVariant.getRawPlayerScore()), leaderboardVariant.getDisplayPlayerScore(), Long.valueOf(leaderboardVariant.getPlayerRank()), leaderboardVariant.getDisplayPlayerRank(), Long.valueOf(leaderboardVariant.getNumScores()), leaderboardVariant.zzGq(), leaderboardVariant.zzGs(), leaderboardVariant.zzGr());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(LeaderboardVariant leaderboardVariant, Object obj) {
        if (!(obj instanceof LeaderboardVariant)) {
            return false;
        }
        if (leaderboardVariant == obj) {
            return true;
        }
        LeaderboardVariant leaderboardVariant2 = (LeaderboardVariant) obj;
        return zzaa.equal(Integer.valueOf(leaderboardVariant2.getTimeSpan()), Integer.valueOf(leaderboardVariant.getTimeSpan())) && zzaa.equal(Integer.valueOf(leaderboardVariant2.getCollection()), Integer.valueOf(leaderboardVariant.getCollection())) && zzaa.equal(Boolean.valueOf(leaderboardVariant2.hasPlayerInfo()), Boolean.valueOf(leaderboardVariant.hasPlayerInfo())) && zzaa.equal(Long.valueOf(leaderboardVariant2.getRawPlayerScore()), Long.valueOf(leaderboardVariant.getRawPlayerScore())) && zzaa.equal(leaderboardVariant2.getDisplayPlayerScore(), leaderboardVariant.getDisplayPlayerScore()) && zzaa.equal(Long.valueOf(leaderboardVariant2.getPlayerRank()), Long.valueOf(leaderboardVariant.getPlayerRank())) && zzaa.equal(leaderboardVariant2.getDisplayPlayerRank(), leaderboardVariant.getDisplayPlayerRank()) && zzaa.equal(Long.valueOf(leaderboardVariant2.getNumScores()), Long.valueOf(leaderboardVariant.getNumScores())) && zzaa.equal(leaderboardVariant2.zzGq(), leaderboardVariant.zzGq()) && zzaa.equal(leaderboardVariant2.zzGs(), leaderboardVariant.zzGs()) && zzaa.equal(leaderboardVariant2.zzGr(), leaderboardVariant.zzGr());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(LeaderboardVariant leaderboardVariant) {
        return zzaa.zzv(leaderboardVariant).zzg("TimeSpan", TimeSpan.zziL(leaderboardVariant.getTimeSpan())).zzg("Collection", LeaderboardCollection.zziL(leaderboardVariant.getCollection())).zzg("RawPlayerScore", leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getRawPlayerScore()) : "none").zzg("DisplayPlayerScore", leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerScore() : "none").zzg("PlayerRank", leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getPlayerRank()) : "none").zzg("DisplayPlayerRank", leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerRank() : "none").zzg("NumScores", Long.valueOf(leaderboardVariant.getNumScores())).zzg("TopPageNextToken", leaderboardVariant.zzGq()).zzg("WindowPageNextToken", leaderboardVariant.zzGs()).zzg("WindowPagePrevToken", leaderboardVariant.zzGr()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public int getCollection() {
        return this.zzbdT;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getDisplayPlayerRank() {
        return this.zzbdY;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getDisplayPlayerScore() {
        return this.zzbdW;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getNumScores() {
        return this.zzbea;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getPlayerRank() {
        return this.zzbdX;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getPlayerScoreTag() {
        return this.zzbdZ;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getRawPlayerScore() {
        return this.zzbdV;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public int getTimeSpan() {
        return this.zzbdS;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public boolean hasPlayerInfo() {
        return this.zzbdU;
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

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzGq() {
        return this.zzbeb;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzGr() {
        return this.zzbec;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzGs() {
        return this.zzbed;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGt */
    public LeaderboardVariant mo520freeze() {
        return this;
    }
}
