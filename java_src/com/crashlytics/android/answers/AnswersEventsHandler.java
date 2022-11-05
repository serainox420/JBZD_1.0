package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.b.d;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.b;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes.dex */
class AnswersEventsHandler implements d {
    private final Context context;
    final ScheduledExecutorService executor;
    private final AnswersFilesManagerProvider filesManagerProvider;
    private final h kit;
    private final SessionMetadataCollector metadataCollector;
    private final c requestFactory;
    SessionAnalyticsManagerStrategy strategy = new DisabledSessionAnalyticsManagerStrategy();

    public AnswersEventsHandler(h hVar, Context context, AnswersFilesManagerProvider answersFilesManagerProvider, SessionMetadataCollector sessionMetadataCollector, c cVar, ScheduledExecutorService scheduledExecutorService) {
        this.kit = hVar;
        this.context = context;
        this.filesManagerProvider = answersFilesManagerProvider;
        this.metadataCollector = sessionMetadataCollector;
        this.requestFactory = cVar;
        this.executor = scheduledExecutorService;
    }

    public void processEventAsync(SessionEvent.Builder builder) {
        processEvent(builder, false, false);
    }

    public void processEventAsyncAndFlush(SessionEvent.Builder builder) {
        processEvent(builder, false, true);
    }

    public void processEventSync(SessionEvent.Builder builder) {
        processEvent(builder, true, false);
    }

    public void setAnalyticsSettingsData(final b bVar, final String str) {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.setAnalyticsSettingsData(bVar, str);
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to set analytics settings data", e);
                }
            }
        });
    }

    public void disable() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SessionAnalyticsManagerStrategy sessionAnalyticsManagerStrategy = AnswersEventsHandler.this.strategy;
                    AnswersEventsHandler.this.strategy = new DisabledSessionAnalyticsManagerStrategy();
                    sessionAnalyticsManagerStrategy.deleteAllEvents();
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to disable events", e);
                }
            }
        });
    }

    @Override // io.fabric.sdk.android.services.b.d
    public void onRollOver(String str) {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.sendEvents();
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to send events files", e);
                }
            }
        });
    }

    public void enable() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SessionEventMetadata metadata = AnswersEventsHandler.this.metadataCollector.getMetadata();
                    SessionAnalyticsFilesManager analyticsFilesManager = AnswersEventsHandler.this.filesManagerProvider.getAnalyticsFilesManager();
                    analyticsFilesManager.registerRollOverListener(AnswersEventsHandler.this);
                    AnswersEventsHandler.this.strategy = new EnabledSessionAnalyticsManagerStrategy(AnswersEventsHandler.this.kit, AnswersEventsHandler.this.context, AnswersEventsHandler.this.executor, analyticsFilesManager, AnswersEventsHandler.this.requestFactory, metadata);
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to enable events", e);
                }
            }
        });
    }

    public void flushEvents() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.rollFileOver();
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to flush events", e);
                }
            }
        });
    }

    void processEvent(final SessionEvent.Builder builder, boolean z, final boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.processEvent(builder);
                    if (z2) {
                        AnswersEventsHandler.this.strategy.rollFileOver();
                    }
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to process event", e);
                }
            }
        };
        if (z) {
            executeSync(runnable);
        } else {
            executeAsync(runnable);
        }
    }

    private void executeSync(Runnable runnable) {
        try {
            this.executor.submit(runnable).get();
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to run events task", e);
        }
    }

    private void executeAsync(Runnable runnable) {
        try {
            this.executor.submit(runnable);
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().e(Answers.TAG, "Failed to submit events task", e);
        }
    }
}
