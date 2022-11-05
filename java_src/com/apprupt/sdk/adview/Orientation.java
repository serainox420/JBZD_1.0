package com.apprupt.sdk.adview;
/* loaded from: classes.dex */
public enum Orientation {
    NONE,
    PORTRAIT,
    LANDSCAPE;

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case PORTRAIT:
                return "portrait";
            case LANDSCAPE:
                return "landscape";
            default:
                return "none";
        }
    }
}
