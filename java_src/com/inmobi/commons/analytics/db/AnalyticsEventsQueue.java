package com.inmobi.commons.analytics.db;

import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class AnalyticsEventsQueue extends Vector<AnalyticsFunctions> {

    /* renamed from: a  reason: collision with root package name */
    private static AnalyticsEventsQueue f3732a = null;
    private static final long serialVersionUID = -1291938489149189478L;
    private AtomicBoolean b = new AtomicBoolean(false);

    public static synchronized AnalyticsEventsQueue getInstance() {
        AnalyticsEventsQueue analyticsEventsQueue;
        synchronized (AnalyticsEventsQueue.class) {
            if (f3732a == null) {
                f3732a = new AnalyticsEventsQueue();
            }
            analyticsEventsQueue = f3732a;
        }
        return analyticsEventsQueue;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.inmobi.commons.analytics.db.AnalyticsEventsQueue$1] */
    public synchronized void processFunctions() {
        if (!this.b.get()) {
            this.b.set(true);
            new Thread() { // from class: com.inmobi.commons.analytics.db.AnalyticsEventsQueue.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (!AnalyticsEventsQueue.this.isEmpty()) {
                        try {
                            AnalyticsEventsQueue.this.a(AnalyticsEventsQueue.this.remove(0));
                        } catch (Exception e) {
                            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception processing function", e);
                            return;
                        }
                    }
                }
            }.start();
        }
    }

    @Override // java.util.Vector, java.util.AbstractCollection, java.util.Collection, java.util.List
    public synchronized boolean isEmpty() {
        boolean isEmpty;
        isEmpty = super.isEmpty();
        if (isEmpty) {
            this.b.set(false);
        }
        return isEmpty;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AnalyticsFunctions analyticsFunctions) {
        analyticsFunctions.processFunction();
    }
}
