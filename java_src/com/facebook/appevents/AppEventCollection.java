package com.facebook.appevents;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.internal.AttributionIdentifiers;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppEventCollection {
    private final HashMap<AccessTokenAppIdPair, SessionEventsState> stateMap = new HashMap<>();

    public synchronized void addPersistedEvents(PersistedEvents persistedEvents) {
        if (persistedEvents != null) {
            for (AccessTokenAppIdPair accessTokenAppIdPair : persistedEvents.keySet()) {
                SessionEventsState sessionEventsState = getSessionEventsState(accessTokenAppIdPair);
                for (AppEvent appEvent : persistedEvents.get(accessTokenAppIdPair)) {
                    sessionEventsState.addEvent(appEvent);
                }
            }
        }
    }

    public synchronized void addEvent(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        getSessionEventsState(accessTokenAppIdPair).addEvent(appEvent);
    }

    public synchronized Set<AccessTokenAppIdPair> keySet() {
        return this.stateMap.keySet();
    }

    public synchronized SessionEventsState get(AccessTokenAppIdPair accessTokenAppIdPair) {
        return this.stateMap.get(accessTokenAppIdPair);
    }

    public synchronized int getEventCount() {
        int i;
        int i2 = 0;
        Iterator<SessionEventsState> it = this.stateMap.values().iterator();
        while (true) {
            i = i2;
            if (it.hasNext()) {
                i2 = it.next().getAccumulatedEventCount() + i;
            }
        }
        return i;
    }

    private synchronized SessionEventsState getSessionEventsState(AccessTokenAppIdPair accessTokenAppIdPair) {
        SessionEventsState sessionEventsState;
        sessionEventsState = this.stateMap.get(accessTokenAppIdPair);
        if (sessionEventsState == null) {
            Context applicationContext = FacebookSdk.getApplicationContext();
            sessionEventsState = new SessionEventsState(AttributionIdentifiers.getAttributionIdentifiers(applicationContext), AppEventsLogger.getAnonymousAppDeviceGUID(applicationContext));
        }
        this.stateMap.put(accessTokenAppIdPair, sessionEventsState);
        return sessionEventsState;
    }
}
