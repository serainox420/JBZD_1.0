package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.b.f;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.b;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
class EnabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    static final int UNDEFINED_ROLLOVER_INTERVAL_SECONDS = -1;
    private final Context context;
    private final ScheduledExecutorService executorService;
    private final SessionAnalyticsFilesManager filesManager;
    f filesSender;
    private final c httpRequestFactory;
    private final h kit;
    final SessionEventMetadata metadata;
    private final AtomicReference<ScheduledFuture<?>> rolloverFutureRef = new AtomicReference<>();
    g apiKey = new g();
    EventFilter eventFilter = new KeepAllEventFilter();
    boolean customEventsEnabled = true;
    boolean predefinedEventsEnabled = true;
    volatile int rolloverIntervalSeconds = -1;

    public EnabledSessionAnalyticsManagerStrategy(h hVar, Context context, ScheduledExecutorService scheduledExecutorService, SessionAnalyticsFilesManager sessionAnalyticsFilesManager, c cVar, SessionEventMetadata sessionEventMetadata) {
        this.kit = hVar;
        this.context = context;
        this.executorService = scheduledExecutorService;
        this.filesManager = sessionAnalyticsFilesManager;
        this.httpRequestFactory = cVar;
        this.metadata = sessionEventMetadata;
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void setAnalyticsSettingsData(b bVar, String str) {
        this.filesSender = AnswersRetryFilesSender.build(new SessionAnalyticsFilesSender(this.kit, str, bVar.f5712a, this.httpRequestFactory, this.apiKey.a(this.context)));
        this.filesManager.setAnalyticsSettingsData(bVar);
        this.customEventsEnabled = bVar.f;
        io.fabric.sdk.android.c.h().a(Answers.TAG, "Custom event tracking " + (this.customEventsEnabled ? "enabled" : "disabled"));
        this.predefinedEventsEnabled = bVar.g;
        io.fabric.sdk.android.c.h().a(Answers.TAG, "Predefined event tracking " + (this.predefinedEventsEnabled ? "enabled" : "disabled"));
        if (bVar.i > 1) {
            io.fabric.sdk.android.c.h().a(Answers.TAG, "Event sampling enabled");
            this.eventFilter = new SamplingEventFilter(bVar.i);
        }
        this.rolloverIntervalSeconds = bVar.b;
        scheduleTimeBasedFileRollOver(0L, this.rolloverIntervalSeconds);
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void processEvent(SessionEvent.Builder builder) {
        SessionEvent build = builder.build(this.metadata);
        if (!this.customEventsEnabled && SessionEvent.Type.CUSTOM.equals(build.type)) {
            io.fabric.sdk.android.c.h().a(Answers.TAG, "Custom events tracking disabled - skipping event: " + build);
        } else if (!this.predefinedEventsEnabled && SessionEvent.Type.PREDEFINED.equals(build.type)) {
            io.fabric.sdk.android.c.h().a(Answers.TAG, "Predefined events tracking disabled - skipping event: " + build);
        } else if (this.eventFilter.skipEvent(build)) {
            io.fabric.sdk.android.c.h().a(Answers.TAG, "Skipping filtered event: " + build);
        } else {
            try {
                this.filesManager.writeEvent(build);
            } catch (IOException e) {
                io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to write event: " + build, e);
            }
            scheduleTimeBasedRollOverIfNeeded();
        }
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
        if (this.rolloverIntervalSeconds != -1) {
            scheduleTimeBasedFileRollOver(this.rolloverIntervalSeconds, this.rolloverIntervalSeconds);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void sendEvents() {
        int i;
        Exception e;
        if (this.filesSender == null) {
            i.a(this.context, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        i.a(this.context, "Sending all files");
        List<File> batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
        int i2 = 0;
        while (batchOfFilesToSend.size() > 0) {
            try {
                i.a(this.context, String.format(Locale.US, "attempt to send batch of %d files", Integer.valueOf(batchOfFilesToSend.size())));
                boolean send = this.filesSender.send(batchOfFilesToSend);
                if (send) {
                    i = batchOfFilesToSend.size() + i2;
                    try {
                        this.filesManager.deleteSentFiles(batchOfFilesToSend);
                        i2 = i;
                    } catch (Exception e2) {
                        e = e2;
                        i.a(this.context, "Failed to send batch of analytics files to server: " + e.getMessage(), e);
                        i2 = i;
                        if (i2 != 0) {
                        }
                    }
                }
                if (!send) {
                    break;
                }
                batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
            } catch (Exception e3) {
                i = i2;
                e = e3;
            }
        }
        if (i2 != 0) {
            this.filesManager.deleteOldestInRollOverIfOverMax();
        }
    }

    @Override // io.fabric.sdk.android.services.b.e
    public void cancelTimeBasedFileRollOver() {
        if (this.rolloverFutureRef.get() != null) {
            i.a(this.context, "Cancelling time-based rollover because no events are currently being generated.");
            this.rolloverFutureRef.get().cancel(false);
            this.rolloverFutureRef.set(null);
        }
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void deleteAllEvents() {
        this.filesManager.deleteAllEventsFiles();
    }

    @Override // io.fabric.sdk.android.services.b.e
    public boolean rollFileOver() {
        try {
            return this.filesManager.rollFileOver();
        } catch (IOException e) {
            i.a(this.context, "Failed to roll file over.", e);
            return false;
        }
    }

    void scheduleTimeBasedFileRollOver(long j, long j2) {
        if (this.rolloverFutureRef.get() == null) {
            io.fabric.sdk.android.services.b.i iVar = new io.fabric.sdk.android.services.b.i(this.context, this);
            i.a(this.context, "Scheduling time based file roll over every " + j2 + " seconds");
            try {
                this.rolloverFutureRef.set(this.executorService.scheduleAtFixedRate(iVar, j, j2, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e) {
                i.a(this.context, "Failed to schedule time based file roll over", e);
            }
        }
    }
}
