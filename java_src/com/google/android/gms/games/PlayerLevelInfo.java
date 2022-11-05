package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class PlayerLevelInfo extends GamesAbstractSafeParcelable {
    public static final Parcelable.Creator<PlayerLevelInfo> CREATOR = new PlayerLevelInfoCreator();
    private final long zzaYA;
    private final PlayerLevel zzaYB;
    private final PlayerLevel zzaYC;
    private final long zzaYz;

    public PlayerLevelInfo(long j, long j2, PlayerLevel playerLevel, PlayerLevel playerLevel2) {
        zzac.zzaw(j != -1);
        zzac.zzw(playerLevel);
        zzac.zzw(playerLevel2);
        this.zzaYz = j;
        this.zzaYA = j2;
        this.zzaYB = playerLevel;
        this.zzaYC = playerLevel2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevelInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        PlayerLevelInfo playerLevelInfo = (PlayerLevelInfo) obj;
        return zzaa.equal(Long.valueOf(this.zzaYz), Long.valueOf(playerLevelInfo.zzaYz)) && zzaa.equal(Long.valueOf(this.zzaYA), Long.valueOf(playerLevelInfo.zzaYA)) && zzaa.equal(this.zzaYB, playerLevelInfo.zzaYB) && zzaa.equal(this.zzaYC, playerLevelInfo.zzaYC);
    }

    public PlayerLevel getCurrentLevel() {
        return this.zzaYB;
    }

    public long getCurrentXpTotal() {
        return this.zzaYz;
    }

    public long getLastLevelUpTimestamp() {
        return this.zzaYA;
    }

    public PlayerLevel getNextLevel() {
        return this.zzaYC;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzaYz), Long.valueOf(this.zzaYA), this.zzaYB, this.zzaYC);
    }

    public boolean isMaxLevel() {
        return this.zzaYB.equals(this.zzaYC);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerLevelInfoCreator.zza(this, parcel, i);
    }
}
