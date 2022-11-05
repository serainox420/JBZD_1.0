package com.google.android.gms.fitness;

import android.content.Intent;
import android.os.Build;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzaod;
import com.google.android.gms.internal.zzaoe;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaog;
import com.google.android.gms.internal.zzaoh;
import com.google.android.gms.internal.zzaoi;
import com.google.android.gms.internal.zzaoj;
import com.google.android.gms.internal.zzaok;
import com.google.android.gms.internal.zzapi;
import com.google.android.gms.internal.zzapj;
import com.google.android.gms.internal.zzapk;
import com.google.android.gms.internal.zzapl;
import com.google.android.gms.internal.zzapm;
import com.google.android.gms.internal.zzapn;
import com.google.android.gms.internal.zzapo;
import com.google.android.gms.internal.zzapp;
import com.google.android.gms.internal.zzapq;
import com.google.android.gms.internal.zzaps;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class Fitness {
    public static final String ACTION_TRACK = "vnd.google.fitness.TRACK";
    public static final String ACTION_VIEW = "vnd.google.fitness.VIEW";
    public static final String ACTION_VIEW_GOAL = "vnd.google.fitness.VIEW_GOAL";
    public static final String EXTRA_END_TIME = "vnd.google.fitness.end_time";
    public static final String EXTRA_START_TIME = "vnd.google.fitness.start_time";
    @Deprecated
    public static final Void API = null;
    public static final Api<Api.ApiOptions.NoOptions> SENSORS_API = zzaoj.API;
    public static final SensorsApi SensorsApi = new zzapp();
    public static final Api<Api.ApiOptions.NoOptions> RECORDING_API = zzaoi.API;
    public static final RecordingApi RecordingApi = new zzapo();
    public static final Api<Api.ApiOptions.NoOptions> SESSIONS_API = zzaok.API;
    public static final SessionsApi SessionsApi = new zzapq();
    public static final Api<Api.ApiOptions.NoOptions> HISTORY_API = zzaog.API;
    public static final HistoryApi HistoryApi = new zzapm();
    public static final Api<Api.ApiOptions.NoOptions> GOALS_API = zzaof.API;
    public static final GoalsApi GoalsApi = new zzapl();
    public static final Api<Api.ApiOptions.NoOptions> CONFIG_API = zzaoe.API;
    public static final ConfigApi ConfigApi = new zzapk();
    public static final Api<Api.ApiOptions.NoOptions> BLE_API = zzaod.API;
    public static final BleApi BleApi = zzBU();
    public static final Api<Api.ApiOptions.NoOptions> zzaKN = zzaoh.API;
    public static final zzapi zzaSf = new zzapn();
    public static final Scope SCOPE_ACTIVITY_READ = new Scope(Scopes.FITNESS_ACTIVITY_READ);
    public static final Scope SCOPE_ACTIVITY_READ_WRITE = new Scope(Scopes.FITNESS_ACTIVITY_READ_WRITE);
    public static final Scope SCOPE_LOCATION_READ = new Scope(Scopes.FITNESS_LOCATION_READ);
    public static final Scope SCOPE_LOCATION_READ_WRITE = new Scope(Scopes.FITNESS_LOCATION_READ_WRITE);
    public static final Scope SCOPE_BODY_READ = new Scope(Scopes.FITNESS_BODY_READ);
    public static final Scope SCOPE_BODY_READ_WRITE = new Scope(Scopes.FITNESS_BODY_READ_WRITE);
    public static final Scope SCOPE_NUTRITION_READ = new Scope(Scopes.FITNESS_NUTRITION_READ);
    public static final Scope SCOPE_NUTRITION_READ_WRITE = new Scope(Scopes.FITNESS_NUTRITION_READ_WRITE);

    private Fitness() {
    }

    public static long getEndTime(Intent intent, TimeUnit timeUnit) {
        long longExtra = intent.getLongExtra(EXTRA_END_TIME, -1L);
        if (longExtra == -1) {
            return -1L;
        }
        return timeUnit.convert(longExtra, TimeUnit.MILLISECONDS);
    }

    public static long getStartTime(Intent intent, TimeUnit timeUnit) {
        long longExtra = intent.getLongExtra(EXTRA_START_TIME, -1L);
        if (longExtra == -1) {
            return -1L;
        }
        return timeUnit.convert(longExtra, TimeUnit.MILLISECONDS);
    }

    private static BleApi zzBU() {
        return Build.VERSION.SDK_INT >= 18 ? new zzapj() : new zzaps();
    }
}
