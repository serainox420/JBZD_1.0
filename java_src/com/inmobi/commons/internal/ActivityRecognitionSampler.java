package com.inmobi.commons.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class ActivityRecognitionSampler {
    static Looper b;
    static Handler c;
    static List<ActivitySample> d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    static HandlerThread f3787a = new HandlerThread("ActivityDetectionSampler");

    /* loaded from: classes2.dex */
    public static class ActivitySample {

        /* renamed from: a  reason: collision with root package name */
        private long f3788a;
        private int b;

        public long getTimestamp() {
            return this.f3788a;
        }

        public int getActivity() {
            return this.b;
        }

        public ActivitySample(int i, long j) {
            this.b = i;
            this.f3788a = j;
        }
    }

    static {
        f3787a.start();
        b = f3787a.getLooper();
        c = new Handler(b) { // from class: com.inmobi.commons.internal.ActivityRecognitionSampler.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        int detectedActivity = ActivityRecognitionManager.getDetectedActivity();
                        if (detectedActivity != -1) {
                            if (ActivityRecognitionSampler.d.size() <= AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionMaxSize()) {
                                ActivityRecognitionSampler.d.add(new ActivitySample(detectedActivity, System.currentTimeMillis()));
                            } else {
                                return;
                            }
                        }
                        ActivityRecognitionSampler.b();
                        return;
                    default:
                        return;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        if (AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled()) {
            c.sendMessageDelayed(c.obtainMessage(1), AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionInterval());
        }
    }

    public static void start() {
        if (!c.hasMessages(1)) {
            c.sendEmptyMessage(1);
        }
    }

    public static void stop() {
        c.removeMessages(1);
        d.clear();
    }

    public static List<ActivitySample> getCollectedList() {
        return AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled() ? d : Collections.emptyList();
    }
}
