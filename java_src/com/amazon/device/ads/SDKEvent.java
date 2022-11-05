package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Set;
/* loaded from: classes.dex */
class SDKEvent {
    public static final String BRIDGE_NAME = "bridgeName";
    private final SDKEventType eventType;
    private final HashMap<String, String> parameters = new HashMap<>();

    /* loaded from: classes.dex */
    public enum SDKEventType {
        RENDERED,
        PLACED,
        VISIBLE,
        HIDDEN,
        DESTROYED,
        CLOSED,
        READY,
        RESIZED,
        BRIDGE_ADDED,
        BACK_BUTTON_PRESSED,
        VIEWABLE
    }

    public SDKEvent(SDKEventType sDKEventType) {
        this.eventType = sDKEventType;
    }

    public SDKEventType getEventType() {
        return this.eventType;
    }

    public SDKEvent setParameter(String str, String str2) {
        this.parameters.put(str, str2);
        return this;
    }

    public String getParameter(String str) {
        return this.parameters.get(str);
    }

    public Set<String> getParameterNames() {
        return this.parameters.keySet();
    }
}
