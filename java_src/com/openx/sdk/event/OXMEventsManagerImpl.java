package com.openx.sdk.event;

import android.content.Context;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.sdk.OXMBaseManager;
import com.openx.sdk.event.OXMEvent;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
/* loaded from: classes3.dex */
public final class OXMEventsManagerImpl extends OXMBaseManager implements OXMEventsListener {
    private static String TAG = "OXMEventsManagerImpl";
    private Hashtable<OXMEvent.OXMEventType, Vector<OXMEventsHandler>> mEventListeners = new Hashtable<>();

    private Hashtable<OXMEvent.OXMEventType, Vector<OXMEventsHandler>> getEventsListener() {
        return this.mEventListeners;
    }

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void init(Context context) {
        super.init(context);
    }

    @Override // com.openx.sdk.event.OXMEventsListener
    public void registerEventListener(OXMEvent.OXMEventType oXMEventType, OXMEventsHandler oXMEventsHandler) {
        OXLog.debug(TAG, "Registering Listener: " + oXMEventType.name());
        if (!getEventsListener().containsKey(oXMEventType)) {
            Vector<OXMEventsHandler> vector = new Vector<>();
            vector.add(oXMEventsHandler);
            getEventsListener().put(oXMEventType, vector);
            return;
        }
        Vector<OXMEventsHandler> vector2 = getEventsListener().get(oXMEventType);
        if (!vector2.contains(oXMEventsHandler)) {
            vector2.add(oXMEventsHandler);
        }
    }

    @Override // com.openx.sdk.event.OXMEventsListener
    public void unregisterEventListener(OXMEvent.OXMEventType oXMEventType, OXMEventsHandler oXMEventsHandler) {
        if (getEventsListener().containsKey(oXMEventType)) {
            Vector<OXMEventsHandler> vector = getEventsListener().get(oXMEventType);
            if (vector.contains(oXMEventsHandler)) {
                vector.remove(oXMEventsHandler);
            }
        }
    }

    @Override // com.openx.sdk.event.OXMEventsListener
    public void unregisterAllEventListeners() {
        if (getEventsListener().size() > 0) {
            getEventsListener().clear();
        }
    }

    @Override // com.openx.sdk.event.OXMEventsListener
    public void fireEvent(OXMEvent oXMEvent) {
        OXLog.info(TAG, "FIRING EVENT: " + oXMEvent.getEventType().name());
        if (oXMEvent != null) {
            if ((oXMEvent == null || oXMEvent.getEventType() != null) && getEventsListener().size() > 0) {
                Enumeration<OXMEvent.OXMEventType> keys = getEventsListener().keys();
                while (keys.hasMoreElements()) {
                    OXMEvent.OXMEventType nextElement = keys.nextElement();
                    if (nextElement == oXMEvent.getEventType()) {
                        Enumeration<OXMEventsHandler> elements = getEventsListener().get(nextElement).elements();
                        while (elements.hasMoreElements()) {
                            elements.nextElement().onPerform(oXMEvent);
                        }
                    }
                }
            }
        }
    }

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void dispose() {
        super.dispose();
        unregisterAllEventListeners();
    }
}
