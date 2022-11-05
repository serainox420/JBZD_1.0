package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public class PlayerStatsEntity extends GamesAbstractSafeParcelable implements PlayerStats {
    public static final Parcelable.Creator<PlayerStatsEntity> CREATOR = new PlayerStatsEntityCreator();
    private final float zzbfE;
    private final float zzbfF;
    private final int zzbfG;
    private final int zzbfH;
    private final int zzbfI;
    private final float zzbfJ;
    private final float zzbfK;
    private final Bundle zzbfL;
    private final float zzbfM;
    private final float zzbfN;
    private final float zzbfO;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlayerStatsEntity(float f, float f2, int i, int i2, int i3, float f3, float f4, Bundle bundle, float f5, float f6, float f7) {
        this.zzbfE = f;
        this.zzbfF = f2;
        this.zzbfG = i;
        this.zzbfH = i2;
        this.zzbfI = i3;
        this.zzbfJ = f3;
        this.zzbfK = f4;
        this.zzbfL = bundle;
        this.zzbfM = f5;
        this.zzbfN = f6;
        this.zzbfO = f7;
    }

    public PlayerStatsEntity(PlayerStats playerStats) {
        this.zzbfE = playerStats.getAverageSessionLength();
        this.zzbfF = playerStats.getChurnProbability();
        this.zzbfG = playerStats.getDaysSinceLastPlayed();
        this.zzbfH = playerStats.getNumberOfPurchases();
        this.zzbfI = playerStats.getNumberOfSessions();
        this.zzbfJ = playerStats.getSessionPercentile();
        this.zzbfK = playerStats.getSpendPercentile();
        this.zzbfM = playerStats.getSpendProbability();
        this.zzbfN = playerStats.getHighSpenderProbability();
        this.zzbfO = playerStats.getTotalSpendNext28Days();
        this.zzbfL = playerStats.zzGC();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(PlayerStats playerStats) {
        return zzaa.hashCode(Float.valueOf(playerStats.getAverageSessionLength()), Float.valueOf(playerStats.getChurnProbability()), Integer.valueOf(playerStats.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfSessions()), Float.valueOf(playerStats.getSessionPercentile()), Float.valueOf(playerStats.getSpendPercentile()), Float.valueOf(playerStats.getSpendProbability()), Float.valueOf(playerStats.getHighSpenderProbability()), Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(PlayerStats playerStats, Object obj) {
        if (!(obj instanceof PlayerStats)) {
            return false;
        }
        if (playerStats == obj) {
            return true;
        }
        PlayerStats playerStats2 = (PlayerStats) obj;
        return zzaa.equal(Float.valueOf(playerStats2.getAverageSessionLength()), Float.valueOf(playerStats.getAverageSessionLength())) && zzaa.equal(Float.valueOf(playerStats2.getChurnProbability()), Float.valueOf(playerStats.getChurnProbability())) && zzaa.equal(Integer.valueOf(playerStats2.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getDaysSinceLastPlayed())) && zzaa.equal(Integer.valueOf(playerStats2.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfPurchases())) && zzaa.equal(Integer.valueOf(playerStats2.getNumberOfSessions()), Integer.valueOf(playerStats.getNumberOfSessions())) && zzaa.equal(Float.valueOf(playerStats2.getSessionPercentile()), Float.valueOf(playerStats.getSessionPercentile())) && zzaa.equal(Float.valueOf(playerStats2.getSpendPercentile()), Float.valueOf(playerStats.getSpendPercentile())) && zzaa.equal(Float.valueOf(playerStats2.getSpendProbability()), Float.valueOf(playerStats.getSpendProbability())) && zzaa.equal(Float.valueOf(playerStats2.getHighSpenderProbability()), Float.valueOf(playerStats.getHighSpenderProbability())) && zzaa.equal(Float.valueOf(playerStats2.getTotalSpendNext28Days()), Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(PlayerStats playerStats) {
        return zzaa.zzv(playerStats).zzg("AverageSessionLength", Float.valueOf(playerStats.getAverageSessionLength())).zzg("ChurnProbability", Float.valueOf(playerStats.getChurnProbability())).zzg("DaysSinceLastPlayed", Integer.valueOf(playerStats.getDaysSinceLastPlayed())).zzg("NumberOfPurchases", Integer.valueOf(playerStats.getNumberOfPurchases())).zzg("NumberOfSessions", Integer.valueOf(playerStats.getNumberOfSessions())).zzg("SessionPercentile", Float.valueOf(playerStats.getSessionPercentile())).zzg("SpendPercentile", Float.valueOf(playerStats.getSpendPercentile())).zzg("SpendProbability", Float.valueOf(playerStats.getSpendProbability())).zzg("HighSpenderProbability", Float.valueOf(playerStats.getHighSpenderProbability())).zzg("TotalSpendNext28Days", Float.valueOf(playerStats.getTotalSpendNext28Days())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getAverageSessionLength() {
        return this.zzbfE;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getChurnProbability() {
        return this.zzbfF;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getDaysSinceLastPlayed() {
        return this.zzbfG;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getHighSpenderProbability() {
        return this.zzbfN;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getNumberOfPurchases() {
        return this.zzbfH;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getNumberOfSessions() {
        return this.zzbfI;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSessionPercentile() {
        return this.zzbfJ;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSpendPercentile() {
        return this.zzbfK;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSpendProbability() {
        return this.zzbfM;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getTotalSpendNext28Days() {
        return this.zzbfO;
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

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerStatsEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public Bundle zzGC() {
        return this.zzbfL;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGD */
    public PlayerStats mo520freeze() {
        return this;
    }
}
