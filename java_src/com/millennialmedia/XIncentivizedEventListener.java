package com.millennialmedia;
/* loaded from: classes3.dex */
public interface XIncentivizedEventListener {
    boolean onCustomEvent(XIncentiveEvent xIncentiveEvent);

    boolean onVideoComplete();

    /* loaded from: classes3.dex */
    public static class XIncentiveEvent {
        public static final String INCENTIVE_VIDEO_COMPLETE = "IncentiveVideoComplete";
        public final String args;
        public final String eventId;

        public XIncentiveEvent(String str, String str2) {
            this.eventId = str;
            this.args = str2;
        }
    }
}
