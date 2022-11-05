package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.b.b;
import io.fabric.sdk.android.services.b.c;
import io.fabric.sdk.android.services.common.k;
import java.io.IOException;
import java.util.UUID;
/* loaded from: classes.dex */
class SessionAnalyticsFilesManager extends b<SessionEvent> {
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION = ".tap";
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_PREFIX = "sa";
    private io.fabric.sdk.android.services.settings.b analyticsSettingsData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, k kVar, c cVar) throws IOException {
        super(context, sessionEventTransform, kVar, cVar, 100);
    }

    @Override // io.fabric.sdk.android.services.b.b
    protected String generateUniqueRollOverFileName() {
        return SESSION_ANALYTICS_TO_SEND_FILE_PREFIX + b.ROLL_OVER_FILE_NAME_SEPARATOR + UUID.randomUUID().toString() + b.ROLL_OVER_FILE_NAME_SEPARATOR + this.currentTimeProvider.a() + SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.b.b
    public int getMaxFilesToKeep() {
        return this.analyticsSettingsData == null ? super.getMaxFilesToKeep() : this.analyticsSettingsData.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.b.b
    public int getMaxByteSizePerFile() {
        return this.analyticsSettingsData == null ? super.getMaxByteSizePerFile() : this.analyticsSettingsData.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnalyticsSettingsData(io.fabric.sdk.android.services.settings.b bVar) {
        this.analyticsSettingsData = bVar;
    }
}
