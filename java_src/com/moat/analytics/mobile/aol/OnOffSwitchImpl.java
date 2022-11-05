package com.moat.analytics.mobile.aol;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.moat.analytics.mobile.aol.OnOffSwitch;
import com.moat.analytics.mobile.aol.base.annotation.NonNull;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OnOffSwitchImpl implements OnOffSwitch {
    private static final int MAX_LISTENERS = 15;
    private static final int MAX_LISTENER_AGE_MSEC = 300000;
    private static final String TAG = "MoatOnOff";
    private static final AtomicReference<ExecutorService> executorServiceRef = new AtomicReference<>();
    private static final Queue<OnOffSwitch.MoatOnOrOffListener> listeners = new ConcurrentLinkedQueue();
    private static volatile OnOffSwitch.OnOrOff status = OnOffSwitch.OnOrOff.OFF;
    private static volatile boolean isDebugActive = BuildConfig.DEBUG.booleanValue();
    private static volatile int vwCheckFrequency = 200;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OnOffSwitchImpl(MoatNet moatNet) throws MoatException {
        if (executorServiceRef.get() == null) {
            if (executorServiceRef.compareAndSet(null, Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.moat.analytics.mobile.aol.OnOffSwitchImpl.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(@NonNull Runnable runnable) {
                    Thread thread = new Thread(runnable, "MoatStatus");
                    thread.setDaemon(true);
                    return thread;
                }
            }))) {
                executorServiceRef.get().submit(new MoatOnOffLoop(BuildConfig.NAMESPACE, moatNet, new MoatOnOffLoop.StatusUpdateListener() { // from class: com.moat.analytics.mobile.aol.OnOffSwitchImpl.2
                    @Override // com.moat.analytics.mobile.aol.OnOffSwitchImpl.MoatOnOffLoop.StatusUpdateListener
                    public void onStatusCheck(OnOffSwitch.OnOrOff onOrOff) throws MoatException {
                        if (OnOffSwitchImpl.status != onOrOff) {
                            synchronized (OnOffSwitchImpl.listeners) {
                                if (onOrOff == OnOffSwitch.OnOrOff.ON && OnOffSwitchImpl.isDebugActive) {
                                    Log.d(OnOffSwitchImpl.TAG, "Moat enabled - Version 1.7.11");
                                }
                                OnOffSwitch.OnOrOff unused = OnOffSwitchImpl.status = onOrOff;
                                Iterator it = OnOffSwitchImpl.listeners.iterator();
                                while (it.hasNext()) {
                                    OnOffSwitch.MoatOnOrOffListener moatOnOrOffListener = (OnOffSwitch.MoatOnOrOffListener) it.next();
                                    if (onOrOff == OnOffSwitch.OnOrOff.ON) {
                                        moatOnOrOffListener.onMoatOn();
                                    } else {
                                        moatOnOrOffListener.onMoatOff();
                                    }
                                    it.remove();
                                }
                            }
                        }
                        OnOffSwitchImpl.this.checkQueue();
                    }
                }));
            }
        }
    }

    @Override // com.moat.analytics.mobile.aol.OnOffSwitch
    public OnOffSwitch.OnOrOff getStatus() {
        return status;
    }

    @Override // com.moat.analytics.mobile.aol.OnOffSwitch
    public boolean isDebugActive() {
        return isDebugActive;
    }

    @Override // com.moat.analytics.mobile.aol.OnOffSwitch
    public int getVWIntervalMillis() {
        return vwCheckFrequency;
    }

    @Override // com.moat.analytics.mobile.aol.OnOffSwitch
    public void setDebugLogging(boolean z) {
        isDebugActive = z;
    }

    @Override // com.moat.analytics.mobile.aol.OnOffSwitch
    public void register(OnOffSwitch.MoatOnOrOffListener moatOnOrOffListener) throws MoatException {
        checkQueue();
        listeners.add(moatOnOrOffListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkQueue() {
        synchronized (listeners) {
            long currentTimeMillis = System.currentTimeMillis();
            Iterator<OnOffSwitch.MoatOnOrOffListener> it = listeners.iterator();
            while (it.hasNext()) {
                OnOffSwitch.MoatOnOrOffListener next = it.next();
                if (next.wasTriggered()) {
                    it.remove();
                } else if (currentTimeMillis - next.getTimeRegistered() >= 300000) {
                    it.remove();
                }
            }
            if (listeners.size() >= 15) {
                for (int i = 0; i < 5; i++) {
                    listeners.remove();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class MoatOnOffLoop implements Runnable {
        private static final long MIN_MILLIS_BETWEEN_RUNS;
        private static final String TAG = "MoatOnOffLoop";
        private OnOffSwitch.OnOrOff lastStatus;
        private final StatusUpdateListener listener;
        private final MoatNet moatNet;
        private final String url;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public interface StatusUpdateListener {
            void onStatusCheck(OnOffSwitch.OnOrOff onOrOff) throws MoatException;
        }

        static {
            if (BuildConfig.DEBUG.booleanValue()) {
                MIN_MILLIS_BETWEEN_RUNS = 2000L;
            } else {
                MIN_MILLIS_BETWEEN_RUNS = 90000L;
            }
        }

        private MoatOnOffLoop(String str, MoatNet moatNet, StatusUpdateListener statusUpdateListener) {
            this.lastStatus = OnOffSwitch.OnOrOff.OFF;
            this.moatNet = moatNet;
            this.listener = statusUpdateListener;
            this.url = "https://z.moatads.com/" + str + "/android/" + BuildConfig.REVISION.substring(0, 7) + "/status.json";
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                runUnsafe();
            } catch (Exception e) {
                this.lastStatus = OnOffSwitch.OnOrOff.OFF;
                Exceptions.handleException(e);
            }
        }

        private void runUnsafe() throws MoatException {
            long j = 0;
            while (true) {
                long currentTimeMillis = System.currentTimeMillis() - j;
                if (currentTimeMillis < MIN_MILLIS_BETWEEN_RUNS) {
                    try {
                        Thread.sleep((10 + MIN_MILLIS_BETWEEN_RUNS) - currentTimeMillis);
                    } catch (InterruptedException e) {
                        if (BuildConfig.DEBUG.booleanValue()) {
                            Log.e(TAG, "Interruption attempted (and ignored): " + Log.getStackTraceString(e));
                        }
                    }
                }
                j = System.currentTimeMillis();
                final OnOffSwitch.OnOrOff requestStatus = requestStatus();
                Handler handler = new Handler(Looper.getMainLooper());
                if (!requestStatus.equals(this.lastStatus) && BuildConfig.DEBUG.booleanValue()) {
                    Log.i(TAG, "Moat is now " + this.lastStatus);
                }
                this.lastStatus = requestStatus;
                handler.post(new Runnable() { // from class: com.moat.analytics.mobile.aol.OnOffSwitchImpl.MoatOnOffLoop.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            MoatOnOffLoop.this.listener.onStatusCheck(requestStatus);
                        } catch (Exception e2) {
                            Exceptions.handleException(e2);
                        }
                    }
                });
            }
        }

        private OnOffSwitch.OnOrOff requestStatus() {
            Optional<String> request = this.moatNet.request(this.url + "?ts=" + System.currentTimeMillis() + "&v=" + BuildConfig.JMMAK_VERSION);
            if (!request.isPresent()) {
                return OnOffSwitch.OnOrOff.OFF;
            }
            MoatConfig moatConfig = new MoatConfig(request.get());
            boolean unused = OnOffSwitchImpl.isDebugActive = moatConfig.isDebugEnabled();
            int unused2 = OnOffSwitchImpl.vwCheckFrequency = moatConfig.getVWIntervalMillis();
            return moatConfig.isOn() ? OnOffSwitch.OnOrOff.ON : OnOffSwitch.OnOrOff.OFF;
        }
    }
}
