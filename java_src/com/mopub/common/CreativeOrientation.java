package com.mopub.common;
/* loaded from: classes3.dex */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    UNDEFINED;

    public static CreativeOrientation fromHeader(String str) {
        if ("l".equalsIgnoreCase(str)) {
            return LANDSCAPE;
        }
        if ("p".equalsIgnoreCase(str)) {
            return PORTRAIT;
        }
        return UNDEFINED;
    }
}
