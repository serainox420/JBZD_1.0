package com.amazon.device.ads;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public enum RelativePosition {
    TOP_LEFT,
    TOP_RIGHT,
    CENTER,
    BOTTOM_LEFT,
    BOTTOM_RIGHT,
    TOP_CENTER,
    BOTTOM_CENTER;
    
    private static final HashMap<String, RelativePosition> POSITIONS = new HashMap<>();

    static {
        POSITIONS.put(Consts.ResizePropertiesCCPositionTopLeft, TOP_LEFT);
        POSITIONS.put(Consts.ResizePropertiesCCPositionTopRight, TOP_RIGHT);
        POSITIONS.put(Consts.ResizePropertiesCCPositionTopCenter, TOP_CENTER);
        POSITIONS.put(Consts.ResizePropertiesCCPositionBottomLeft, BOTTOM_LEFT);
        POSITIONS.put(Consts.ResizePropertiesCCPositionBottomRight, BOTTOM_RIGHT);
        POSITIONS.put(Consts.ResizePropertiesCCPositionBottomCenter, BOTTOM_CENTER);
        POSITIONS.put("center", CENTER);
    }

    public static RelativePosition fromString(String str) {
        return POSITIONS.get(str);
    }
}
