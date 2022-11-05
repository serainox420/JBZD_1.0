package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.c.d;
/* loaded from: classes.dex */
class AnswersPreferenceManager {
    static final String PREFKEY_ANALYTICS_LAUNCHED = "analytics_launched";
    static final String PREF_STORE_NAME = "settings";
    private final c prefStore;

    public static AnswersPreferenceManager build(Context context) {
        return new AnswersPreferenceManager(new d(context, PREF_STORE_NAME));
    }

    AnswersPreferenceManager(c cVar) {
        this.prefStore = cVar;
    }

    @SuppressLint({"CommitPrefEdits"})
    public void setAnalyticsLaunched() {
        this.prefStore.a(this.prefStore.b().putBoolean(PREFKEY_ANALYTICS_LAUNCHED, true));
    }

    @SuppressLint({"CommitPrefEdits"})
    public boolean hasAnalyticsLaunched() {
        return this.prefStore.a().getBoolean(PREFKEY_ANALYTICS_LAUNCHED, false);
    }
}
