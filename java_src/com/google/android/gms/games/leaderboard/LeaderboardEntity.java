package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class LeaderboardEntity implements Leaderboard {
    private final String zzaXJ;
    private final Uri zzaXy;
    private final String zzakb;
    private final String zzbdA;
    private final int zzbdB;
    private final ArrayList<LeaderboardVariantEntity> zzbdC;
    private final Game zzbdD;

    public LeaderboardEntity(Leaderboard leaderboard) {
        this.zzbdA = leaderboard.getLeaderboardId();
        this.zzakb = leaderboard.getDisplayName();
        this.zzaXy = leaderboard.getIconImageUri();
        this.zzaXJ = leaderboard.getIconImageUrl();
        this.zzbdB = leaderboard.getScoreOrder();
        Game game = leaderboard.getGame();
        this.zzbdD = game == null ? null : new GameEntity(game);
        ArrayList<LeaderboardVariant> variants = leaderboard.getVariants();
        int size = variants.size();
        this.zzbdC = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.zzbdC.add((LeaderboardVariantEntity) variants.get(i).mo520freeze());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Leaderboard leaderboard) {
        return zzaa.hashCode(leaderboard.getLeaderboardId(), leaderboard.getDisplayName(), leaderboard.getIconImageUri(), Integer.valueOf(leaderboard.getScoreOrder()), leaderboard.getVariants());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Leaderboard leaderboard, Object obj) {
        if (!(obj instanceof Leaderboard)) {
            return false;
        }
        if (leaderboard == obj) {
            return true;
        }
        Leaderboard leaderboard2 = (Leaderboard) obj;
        return zzaa.equal(leaderboard2.getLeaderboardId(), leaderboard.getLeaderboardId()) && zzaa.equal(leaderboard2.getDisplayName(), leaderboard.getDisplayName()) && zzaa.equal(leaderboard2.getIconImageUri(), leaderboard.getIconImageUri()) && zzaa.equal(Integer.valueOf(leaderboard2.getScoreOrder()), Integer.valueOf(leaderboard.getScoreOrder())) && zzaa.equal(leaderboard2.getVariants(), leaderboard.getVariants());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Leaderboard leaderboard) {
        return zzaa.zzv(leaderboard).zzg("LeaderboardId", leaderboard.getLeaderboardId()).zzg("DisplayName", leaderboard.getDisplayName()).zzg("IconImageUri", leaderboard.getIconImageUri()).zzg("IconImageUrl", leaderboard.getIconImageUrl()).zzg("ScoreOrder", Integer.valueOf(leaderboard.getScoreOrder())).zzg("Variants", leaderboard.getVariants()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getDisplayName() {
        return this.zzakb;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzakb, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public Game getGame() {
        return this.zzbdD;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public Uri getIconImageUri() {
        return this.zzaXy;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getIconImageUrl() {
        return this.zzaXJ;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getLeaderboardId() {
        return this.zzbdA;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public int getScoreOrder() {
        return this.zzbdB;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public ArrayList<LeaderboardVariant> getVariants() {
        return new ArrayList<>(this.zzbdC);
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
    /* renamed from: zzGn */
    public Leaderboard mo520freeze() {
        return this;
    }
}
