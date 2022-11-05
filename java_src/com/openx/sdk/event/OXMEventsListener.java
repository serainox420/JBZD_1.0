package com.openx.sdk.event;

import com.openx.sdk.event.OXMEvent;
/* loaded from: classes3.dex */
public interface OXMEventsListener {
    void fireEvent(OXMEvent oXMEvent);

    void registerEventListener(OXMEvent.OXMEventType oXMEventType, OXMEventsHandler oXMEventsHandler);

    void unregisterAllEventListeners();

    void unregisterEventListener(OXMEvent.OXMEventType oXMEventType, OXMEventsHandler oXMEventsHandler);
}
