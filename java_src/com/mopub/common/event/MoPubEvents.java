package com.mopub.common.event;

import android.os.HandlerThread;
import com.mopub.common.VisibleForTesting;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class MoPubEvents {

    /* renamed from: a  reason: collision with root package name */
    private static volatile EventDispatcher f4379a;

    public static void log(BaseEvent baseEvent) {
        a().dispatch(baseEvent);
    }

    @VisibleForTesting
    public static void setEventDispatcher(EventDispatcher eventDispatcher) {
        f4379a = eventDispatcher;
    }

    @VisibleForTesting
    static EventDispatcher a() {
        EventDispatcher eventDispatcher = f4379a;
        if (eventDispatcher == null) {
            synchronized (MoPubEvents.class) {
                eventDispatcher = f4379a;
                if (eventDispatcher == null) {
                    ArrayList arrayList = new ArrayList();
                    HandlerThread handlerThread = new HandlerThread("mopub_event_logging");
                    handlerThread.start();
                    arrayList.add(new ScribeEventRecorder(handlerThread.getLooper()));
                    eventDispatcher = new EventDispatcher(arrayList, handlerThread.getLooper());
                    f4379a = eventDispatcher;
                }
            }
        }
        return eventDispatcher;
    }
}
