package com.moat.analytics.mobile.aol;

import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes3.dex */
public enum MoatAdEventType {
    AD_EVT_FIRST_QUARTILE("AdVideoFirstQuartile"),
    AD_EVT_MID_POINT("AdVideoMidpoint"),
    AD_EVT_THIRD_QUARTILE("AdVideoThirdQuartile"),
    AD_EVT_COMPLETE("AdVideoComplete"),
    AD_EVT_PAUSED("AdPaused"),
    AD_EVT_PLAYING("AdPlaying"),
    AD_EVT_START("AdVideoStart"),
    AD_EVT_STOPPED("AdStopped"),
    AD_EVT_SKIPPED("AdSkipped"),
    AD_EVT_VOLUME_CHANGE("AdVolumeChange"),
    AD_EVT_ENTER_FULLSCREEN("fullScreen"),
    AD_EVT_EXIT_FULLSCREEN(SASNativeVideoAdElement.TRACKING_EVENT_NAME_EXIT_FULLSCREEN);
    
    private final String text;

    MoatAdEventType(String str) {
        this.text = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.text;
    }

    public static MoatAdEventType fromString(String str) {
        MoatAdEventType[] values;
        if (str != null) {
            for (MoatAdEventType moatAdEventType : values()) {
                if (str.equalsIgnoreCase(moatAdEventType.toString())) {
                    return moatAdEventType;
                }
            }
        }
        return null;
    }
}
