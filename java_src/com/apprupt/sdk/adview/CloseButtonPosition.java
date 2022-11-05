package com.apprupt.sdk.adview;

import com.pubmatic.sdk.banner.mraid.Consts;
/* loaded from: classes.dex */
public enum CloseButtonPosition {
    HIDDEN,
    TOP_RIGHT,
    BOTTOM_RIGHT,
    BOTTOM_LEFT,
    TOP_LEFT,
    CENTER,
    TOP_CENTER,
    BOTTOM_CENTER;

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case HIDDEN:
                return "hidden";
            case BOTTOM_RIGHT:
                return Consts.ResizePropertiesCCPositionBottomRight;
            case BOTTOM_LEFT:
                return Consts.ResizePropertiesCCPositionBottomLeft;
            case BOTTOM_CENTER:
                return Consts.ResizePropertiesCCPositionBottomCenter;
            case CENTER:
                return "center";
            case TOP_LEFT:
                return Consts.ResizePropertiesCCPositionTopLeft;
            case TOP_CENTER:
                return Consts.ResizePropertiesCCPositionTopCenter;
            default:
                return Consts.ResizePropertiesCCPositionTopRight;
        }
    }
}
