package com.openx.sdk.event;
/* loaded from: classes3.dex */
public class OXMEvent {
    private Object mArgs;
    private OXMEventType mEventType;
    private Object mSender;

    /* loaded from: classes3.dex */
    public enum OXMEventType {
        INTERSTITIAL_WINDOW_CLOSED,
        CLOSE_ACTIVE_INTERNAL_WINDOW,
        ACTION_HAS_BEGAN,
        ACTION_HAS_DONE,
        CONFIGURATION_CHANGED,
        ORIENTATION_PROPERTIES_CHANGED,
        LOG
    }

    public OXMEvent(OXMEventType oXMEventType, Object obj, Object obj2) {
        this.mEventType = oXMEventType;
        this.mSender = obj;
        this.mArgs = obj2;
    }

    public OXMEventType getEventType() {
        return this.mEventType;
    }

    public Object getSender() {
        return this.mSender;
    }

    public Object getArgs() {
        return this.mArgs;
    }
}
