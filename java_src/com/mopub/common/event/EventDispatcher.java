package com.mopub.common.event;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3.dex */
public class EventDispatcher {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<EventRecorder> f4375a;
    private final Looper b;
    private final Handler c;
    private final Handler.Callback d = new Handler.Callback() { // from class: com.mopub.common.event.EventDispatcher.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.obj instanceof BaseEvent) {
                for (EventRecorder eventRecorder : EventDispatcher.this.f4375a) {
                    eventRecorder.record((BaseEvent) message.obj);
                }
                return true;
            }
            MoPubLog.d("EventDispatcher received non-BaseEvent message type.");
            return true;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public EventDispatcher(Iterable<EventRecorder> iterable, Looper looper) {
        this.f4375a = iterable;
        this.b = looper;
        this.c = new Handler(this.b, this.d);
    }

    public void dispatch(BaseEvent baseEvent) {
        Message.obtain(this.c, 0, baseEvent).sendToTarget();
    }
}
