package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
/* loaded from: classes2.dex */
public class PlayerStatsRef extends zzc implements PlayerStats {
    private Bundle zzbfL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlayerStatsRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return PlayerStatsEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getAverageSessionLength() {
        return getFloat("ave_session_length_minutes");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getChurnProbability() {
        return getFloat("churn_probability");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getDaysSinceLastPlayed() {
        return getInteger("days_since_last_played");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getHighSpenderProbability() {
        if (!zzdf("high_spender_probability")) {
            return -1.0f;
        }
        return getFloat("high_spender_probability");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getNumberOfPurchases() {
        return getInteger("num_purchases");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getNumberOfSessions() {
        return getInteger("num_sessions");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSessionPercentile() {
        return getFloat("num_sessions_percentile");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSpendPercentile() {
        return getFloat("spend_percentile");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSpendProbability() {
        if (!zzdf("spend_probability")) {
            return -1.0f;
        }
        return getFloat("spend_probability");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getTotalSpendNext28Days() {
        if (!zzdf("total_spend_next_28_days")) {
            return -1.0f;
        }
        return getFloat("total_spend_next_28_days");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return PlayerStatsEntity.zza(this);
    }

    public String toString() {
        return PlayerStatsEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((PlayerStatsEntity) ((PlayerStats) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public Bundle zzGC() {
        if (this.zzbfL != null) {
            return this.zzbfL;
        }
        this.zzbfL = new Bundle();
        String string = getString("unknown_raw_keys");
        String string2 = getString("unknown_raw_values");
        if (string != null && string2 != null) {
            String[] split = string.split(",");
            String[] split2 = string2.split(",");
            com.google.android.gms.common.internal.zzc.zza(split.length <= split2.length, "Invalid raw arguments!");
            for (int i = 0; i < split.length; i++) {
                this.zzbfL.putString(split[i], split2[i]);
            }
        }
        return this.zzbfL;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGD */
    public PlayerStats mo520freeze() {
        return new PlayerStatsEntity(this);
    }
}
