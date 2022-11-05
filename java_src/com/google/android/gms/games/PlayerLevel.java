package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class PlayerLevel extends GamesAbstractSafeParcelable {
    public static final Parcelable.Creator<PlayerLevel> CREATOR = new PlayerLevelCreator();
    private final int zzaYw;
    private final long zzaYx;
    private final long zzaYy;

    public PlayerLevel(int i, long j, long j2) {
        boolean z = true;
        zzac.zza(j >= 0, "Min XP must be positive!");
        zzac.zza(j2 <= j ? false : z, "Max XP must be more than min XP!");
        this.zzaYw = i;
        this.zzaYx = j;
        this.zzaYy = j2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevel)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PlayerLevel playerLevel = (PlayerLevel) obj;
        return zzaa.equal(Integer.valueOf(playerLevel.getLevelNumber()), Integer.valueOf(getLevelNumber())) && zzaa.equal(Long.valueOf(playerLevel.getMinXp()), Long.valueOf(getMinXp())) && zzaa.equal(Long.valueOf(playerLevel.getMaxXp()), Long.valueOf(getMaxXp()));
    }

    public int getLevelNumber() {
        return this.zzaYw;
    }

    public long getMaxXp() {
        return this.zzaYy;
    }

    public long getMinXp() {
        return this.zzaYx;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaYw), Long.valueOf(this.zzaYx), Long.valueOf(this.zzaYy));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("LevelNumber", Integer.valueOf(getLevelNumber())).zzg("MinXp", Long.valueOf(getMinXp())).zzg("MaxXp", Long.valueOf(getMaxXp())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerLevelCreator.zza(this, parcel, i);
    }
}
