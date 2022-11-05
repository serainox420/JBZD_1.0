package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.services.settings.b;
import java.io.IOException;
/* loaded from: classes.dex */
class DisabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void setAnalyticsSettingsData(b bVar, String str) {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void processEvent(SessionEvent.Builder builder) {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void sendEvents() {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void deleteAllEvents() {
    }

    @Override // io.fabric.sdk.android.services.b.e
    public boolean rollFileOver() throws IOException {
        return false;
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
    }

    @Override // io.fabric.sdk.android.services.b.e
    public void cancelTimeBasedFileRollOver() {
    }
}
