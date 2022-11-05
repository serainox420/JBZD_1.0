package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.constants.TimeSpan;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class ScoreSubmissionData {
    private static final String[] zzbdy = {"leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"};
    private int zzavD;
    private String zzavw;
    private String zzbdA;
    private HashMap<Integer, Result> zzbee = new HashMap<>();

    /* loaded from: classes2.dex */
    public static final class Result {
        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public Result(long j, String str, String str2, boolean z) {
            this.rawScore = j;
            this.formattedScore = str;
            this.scoreTag = str2;
            this.newBest = z;
        }

        public String toString() {
            return zzaa.zzv(this).zzg("RawScore", Long.valueOf(this.rawScore)).zzg("FormattedScore", this.formattedScore).zzg("ScoreTag", this.scoreTag).zzg("NewBest", Boolean.valueOf(this.newBest)).toString();
        }
    }

    public ScoreSubmissionData(DataHolder dataHolder) {
        this.zzavD = dataHolder.getStatusCode();
        int count = dataHolder.getCount();
        zzac.zzax(count == 3);
        for (int i = 0; i < count; i++) {
            int zzcI = dataHolder.zzcI(i);
            if (i == 0) {
                this.zzbdA = dataHolder.zzd("leaderboardId", i, zzcI);
                this.zzavw = dataHolder.zzd("playerId", i, zzcI);
            }
            if (dataHolder.zze("hasResult", i, zzcI)) {
                zza(new Result(dataHolder.zzb("rawScore", i, zzcI), dataHolder.zzd("formattedScore", i, zzcI), dataHolder.zzd("scoreTag", i, zzcI), dataHolder.zze("newBest", i, zzcI)), dataHolder.zzc("timeSpan", i, zzcI));
            }
        }
    }

    private void zza(Result result, int i) {
        this.zzbee.put(Integer.valueOf(i), result);
    }

    public String getLeaderboardId() {
        return this.zzbdA;
    }

    public String getPlayerId() {
        return this.zzavw;
    }

    public Result getScoreResult(int i) {
        return this.zzbee.get(Integer.valueOf(i));
    }

    public String toString() {
        zzaa.zza zzg = zzaa.zzv(this).zzg("PlayerId", this.zzavw).zzg("StatusCode", Integer.valueOf(this.zzavD));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 3) {
                Result result = this.zzbee.get(Integer.valueOf(i2));
                zzg.zzg("TimesSpan", TimeSpan.zziL(i2));
                zzg.zzg("Result", result == null ? "null" : result.toString());
                i = i2 + 1;
            } else {
                return zzg.toString();
            }
        }
    }
}
