package com.inmobi.commons.metric;

import com.inmobi.commons.metric.Storage;
/* loaded from: classes2.dex */
public class Logger {
    private Storage c;

    /* renamed from: a  reason: collision with root package name */
    private MetricConfigParams f3805a = new MetricConfigParams();
    private Integer b = 2147483646;
    private Queuer d = new Queuer();
    private MetricsCallback e = null;

    /* loaded from: classes2.dex */
    public interface MetricsCallback {
        void dataCollected(EventLog eventLog);

        void movedMetricDataToFileMemory(String str);

        void reportingFailure();

        void reportingStartedWithRequest(String str);

        void reportingSuccess();
    }

    public Logger(int i, String str) {
        this.c = null;
        this.c = new Storage(i, str, this.d, this.f3805a);
    }

    public Logger(int i, String str, Storage.PreProcessor preProcessor) {
        this.c = null;
        this.c = new Storage(i, str, this.d, this.f3805a, preProcessor);
    }

    public void setMetricConfigParams(MetricConfigParams metricConfigParams) {
        if (metricConfigParams != null) {
            this.f3805a = metricConfigParams;
            this.c.f3809a = metricConfigParams;
        }
    }

    protected void finalize() throws Throwable {
        this.c.saveToLatest();
        super.finalize();
    }

    public void logEvent(EventLog eventLog) {
        this.c.readNumberOfEventsAndTimeStampFromPersistent();
        if (this.e != null) {
            this.e.dataCollected(eventLog);
        }
        this.d.log(eventLog);
        if (this.d.a() >= this.f3805a.getDumpThreshhold()) {
            this.c.saveLocalCache();
        }
        if (this.c.getEvents() >= this.f3805a.getMaxInQueue() || this.c.getTimestamp() + this.f3805a.getNextRetryInterval() <= System.currentTimeMillis() / 1000) {
            new Thread(new Runnable() { // from class: com.inmobi.commons.metric.Logger.1
                @Override // java.lang.Runnable
                public void run() {
                    Logger.this.c.sendFile();
                }
            }).start();
        }
    }

    public boolean startNewSample() {
        boolean z = false;
        synchronized (this.b) {
            Integer num = this.b;
            this.b = Integer.valueOf(this.b.intValue() + 1);
            if (this.b.intValue() >= this.f3805a.getSamplingFactor()) {
                this.b = 0;
                z = true;
            }
        }
        return z;
    }

    public void setCallback(MetricsCallback metricsCallback) {
        this.e = metricsCallback;
        this.c.setCallback(metricsCallback);
    }
}
