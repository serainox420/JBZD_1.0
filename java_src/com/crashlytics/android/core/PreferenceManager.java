package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.c.d;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"CommitPrefEdits"})
/* loaded from: classes.dex */
public class PreferenceManager {
    static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final String PREF_MIGRATION_COMPLETE = "preferences_migration_complete";
    private static final boolean SHOULD_ALWAYS_SEND_REPORTS_DEFAULT = false;
    private final c preferenceStore;

    public static PreferenceManager create(c cVar, CrashlyticsCore crashlyticsCore) {
        if (!cVar.a().getBoolean(PREF_MIGRATION_COMPLETE, false)) {
            d dVar = new d(crashlyticsCore);
            if (!cVar.a().contains(PREF_ALWAYS_SEND_REPORTS_KEY) && dVar.a().contains(PREF_ALWAYS_SEND_REPORTS_KEY)) {
                cVar.a(cVar.b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, dVar.a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false)));
            }
            cVar.a(cVar.b().putBoolean(PREF_MIGRATION_COMPLETE, true));
        }
        return new PreferenceManager(cVar);
    }

    public PreferenceManager(c cVar) {
        this.preferenceStore = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldAlwaysSendReports(boolean z) {
        this.preferenceStore.a(this.preferenceStore.b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldAlwaysSendReports() {
        return this.preferenceStore.a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }
}
