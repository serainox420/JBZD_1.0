package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import io.fabric.sdk.android.services.b.g;
import io.fabric.sdk.android.services.c.a;
import io.fabric.sdk.android.services.common.q;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AnswersFilesManagerProvider {
    static final String SESSION_ANALYTICS_FILE_NAME = "session_analytics.tap";
    static final String SESSION_ANALYTICS_TO_SEND_DIR = "session_analytics_to_send";
    final Context context;
    final a fileStore;

    public AnswersFilesManagerProvider(Context context, a aVar) {
        this.context = context;
        this.fileStore = aVar;
    }

    public SessionAnalyticsFilesManager getAnalyticsFilesManager() throws IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
        }
        return new SessionAnalyticsFilesManager(this.context, new SessionEventTransform(), new q(), new g(this.context, this.fileStore.a(), SESSION_ANALYTICS_FILE_NAME, SESSION_ANALYTICS_TO_SEND_DIR));
    }
}
