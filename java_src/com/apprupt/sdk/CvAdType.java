package com.apprupt.sdk;

import com.facebook.appevents.AppEventsConstants;
import com.inmobi.re.controller.JSController;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public enum CvAdType {
    NORMAL,
    CLIPKIT,
    IN_PLACE,
    AD_COLONY_INTERSTITIAL,
    AD_COLONY_INLINE,
    UNKNOWN;

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case IN_PLACE:
                return "inplace";
            case CLIPKIT:
                return "clipkit";
            case AD_COLONY_INLINE:
                return "ac-inline";
            case AD_COLONY_INTERSTITIAL:
                return "ac-interstitial";
            case UNKNOWN:
                return "unknown";
            default:
                return JSController.STYLE_NORMAL;
        }
    }

    public static CvAdType a(String str) {
        if (str == null || str.length() == 0 || JSController.STYLE_NORMAL.equals(str) || "none".equals(str) || "null".equals(str) || AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(str)) {
            return NORMAL;
        }
        return "inplace".equals(str) ? IN_PLACE : "clipkit".equals(str) ? CLIPKIT : "ac-inline".equals(str) ? AD_COLONY_INLINE : "ac-interstitial".equals(str) ? AD_COLONY_INTERSTITIAL : UNKNOWN;
    }
}
