package com.mopub.common.event;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.ScribeBackoffPolicy;
import com.mopub.network.ScribeRequest;
import com.mopub.network.ScribeRequestManager;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
/* loaded from: classes3.dex */
public class ScribeEventRecorder implements EventRecorder {

    /* renamed from: a  reason: collision with root package name */
    private final EventSampler f4380a;
    private final Queue<BaseEvent> b;
    private final EventSerializer c;
    private final ScribeRequestManager d;
    private final Handler e;
    private final a f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScribeEventRecorder(Looper looper) {
        this(new EventSampler(), new LinkedList(), new EventSerializer(), new ScribeRequestManager(looper), new Handler(looper));
    }

    @VisibleForTesting
    ScribeEventRecorder(EventSampler eventSampler, Queue<BaseEvent> queue, EventSerializer eventSerializer, ScribeRequestManager scribeRequestManager, Handler handler) {
        this.f4380a = eventSampler;
        this.b = queue;
        this.c = eventSerializer;
        this.d = scribeRequestManager;
        this.e = handler;
        this.f = new a();
    }

    @Override // com.mopub.common.event.EventRecorder
    public void record(BaseEvent baseEvent) {
        if (this.f4380a.a(baseEvent)) {
            if (this.b.size() >= 500) {
                MoPubLog.d("EventQueue is at max capacity. Event \"" + baseEvent.getName() + "\" is being dropped.");
                return;
            }
            this.b.add(baseEvent);
            if (this.b.size() >= 100) {
                a();
            }
            c();
        }
    }

    @VisibleForTesting
    void a() {
        if (!this.d.isAtCapacity()) {
            final List<BaseEvent> b = b();
            if (!b.isEmpty()) {
                this.d.makeRequest(new ScribeRequest.ScribeRequestFactory() { // from class: com.mopub.common.event.ScribeEventRecorder.1
                    @Override // com.mopub.network.ScribeRequest.ScribeRequestFactory
                    public ScribeRequest createRequest(ScribeRequest.Listener listener) {
                        return new ScribeRequest("https://analytics.mopub.com/i/jot/exchange_client_event", b, ScribeEventRecorder.this.c, listener);
                    }
                }, new ScribeBackoffPolicy());
            }
        }
    }

    @VisibleForTesting
    List<BaseEvent> b() {
        ArrayList arrayList = new ArrayList();
        while (this.b.peek() != null && arrayList.size() < 100) {
            arrayList.add(this.b.poll());
        }
        return arrayList;
    }

    @VisibleForTesting
    void c() {
        if (!this.e.hasMessages(0) && !this.b.isEmpty()) {
            this.e.postDelayed(this.f, 120000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScribeEventRecorder.this.a();
            ScribeEventRecorder.this.c();
        }
    }
}
