package com.flurry.sdk;

import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes2.dex */
public enum fx {
    Unknown("unknown"),
    CreativeView(SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW),
    Start(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START),
    Midpoint(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT),
    FirstQuartile(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE),
    ThirdQuartile(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE),
    Complete(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE),
    Mute(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE),
    UnMute(SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE),
    Pause(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE),
    Rewind(SASNativeVideoAdElement.TRACKING_EVENT_NAME_REWIND),
    Resume(SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME),
    FullScreen("fullscreen"),
    Expand("expand"),
    Collapse("collapse"),
    AcceptInvitation("acceptInvitation"),
    Close("close");
    
    private String r;

    fx(String str) {
        this.r = str;
    }

    public static fx a(String str) {
        if (CreativeView.r.equals(str)) {
            return CreativeView;
        }
        if (Start.r.equals(str)) {
            return Start;
        }
        if (Midpoint.r.equals(str)) {
            return Midpoint;
        }
        if (FirstQuartile.r.equals(str)) {
            return FirstQuartile;
        }
        if (ThirdQuartile.r.equals(str)) {
            return ThirdQuartile;
        }
        if (Complete.r.equals(str)) {
            return Complete;
        }
        if (Mute.r.equals(str)) {
            return Mute;
        }
        if (UnMute.r.equals(str)) {
            return UnMute;
        }
        if (Pause.r.equals(str)) {
            return Pause;
        }
        if (Rewind.r.equals(str)) {
            return Rewind;
        }
        if (Resume.r.equals(str)) {
            return Resume;
        }
        if (FullScreen.r.equals(str)) {
            return FullScreen;
        }
        if (Expand.r.equals(str)) {
            return Expand;
        }
        if (Collapse.r.equals(str)) {
            return Collapse;
        }
        if (AcceptInvitation.r.equals(str)) {
            return AcceptInvitation;
        }
        if (Close.r.equals(str)) {
            return Close;
        }
        return Unknown;
    }
}
