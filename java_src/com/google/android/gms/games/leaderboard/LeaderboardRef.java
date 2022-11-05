package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class LeaderboardRef extends zzc implements Leaderboard {
    private final int zzaZk;
    private final Game zzbdD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LeaderboardRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzaZk = i2;
        this.zzbdD = new GameRef(dataHolder, i);
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return LeaderboardEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getDisplayName() {
        return getString("name");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zza("name", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public Game getGame() {
        return this.zzbdD;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public Uri getIconImageUri() {
        return zzdg("board_icon_image_uri");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getIconImageUrl() {
        return getString("board_icon_image_url");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getLeaderboardId() {
        return getString("external_leaderboard_id");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public int getScoreOrder() {
        return getInteger("score_order");
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public ArrayList<LeaderboardVariant> getVariants() {
        ArrayList<LeaderboardVariant> arrayList = new ArrayList<>(this.zzaZk);
        for (int i = 0; i < this.zzaZk; i++) {
            arrayList.add(new LeaderboardVariantRef(this.zzaBi, this.zzaDL + i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return LeaderboardEntity.zza(this);
    }

    public String toString() {
        return LeaderboardEntity.zzb(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGn */
    public Leaderboard mo520freeze() {
        return new LeaderboardEntity(this);
    }
}
