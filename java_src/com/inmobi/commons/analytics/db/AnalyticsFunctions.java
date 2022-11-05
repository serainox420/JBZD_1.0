package com.inmobi.commons.analytics.db;

import android.util.Log;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
/* loaded from: classes2.dex */
public abstract class AnalyticsFunctions {

    /* renamed from: a  reason: collision with root package name */
    private FunctionName f3734a = null;

    /* loaded from: classes2.dex */
    public enum FunctionName {
        SS,
        ES,
        LB,
        LE,
        CE,
        PI
    }

    public abstract AnalyticsEvent processFunction();

    public FunctionName getFunctionName() {
        return this.f3734a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void insertInDatabase(AnalyticsEvent analyticsEvent) {
        try {
            AnalyticsDatabaseManager.getInstance().insertEvents(analyticsEvent);
        } catch (Exception e) {
            Log.w(AnalyticsUtils.ANALYTICS_LOGGING_TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void printWarning(String str) {
        Log.d(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IllegalStateException", new IllegalStateException(str));
    }
}
