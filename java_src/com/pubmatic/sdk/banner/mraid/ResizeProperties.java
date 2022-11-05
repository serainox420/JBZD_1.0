package com.pubmatic.sdk.banner.mraid;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Formatter;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3.dex */
public class ResizeProperties {
    private int width = 0;
    private int height = 0;
    private Consts.CustomClosePosition customClosePosition = Consts.CustomClosePosition.TopRight;
    private int offsetX = 0;
    private int offsetY = 0;
    private boolean allowOffscreen = false;

    public static ResizeProperties propertiesFromArgs(Map<String, String> map) {
        ResizeProperties resizeProperties = new ResizeProperties();
        try {
            resizeProperties.setWidth(Integer.parseInt(map.get("width")));
            resizeProperties.setHeight(Integer.parseInt(map.get("height")));
            resizeProperties.setOffsetX(Integer.parseInt(map.get(Consts.ResizePropertiesOffsetX)));
            resizeProperties.setOffsetY(Integer.parseInt(map.get(Consts.ResizePropertiesOffsetY)));
            resizeProperties.setAllowOffscreen("true".equals(map.get(Consts.ResizePropertiesAllowOffscreen)));
            String str = map.get(Consts.ResizePropertiesCustomClosePosition);
            if (Consts.ResizePropertiesCCPositionTopLeft.equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.TopLeft);
            } else if (Consts.ResizePropertiesCCPositionTopCenter.equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.TopCenter);
            } else if (Consts.ResizePropertiesCCPositionTopRight.equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.TopRight);
            } else if ("center".equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.Center);
            } else if (Consts.ResizePropertiesCCPositionBottomLeft.equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.BottomLeft);
            } else if (Consts.ResizePropertiesCCPositionBottomCenter.equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.BottomCenter);
            } else if (Consts.ResizePropertiesCCPositionBottomRight.equals(str)) {
                resizeProperties.setCustomClosePosition(Consts.CustomClosePosition.BottomRight);
            }
        } catch (Exception e) {
        }
        return resizeProperties;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public Consts.CustomClosePosition getCustomClosePosition() {
        return this.customClosePosition;
    }

    public void setCustomClosePosition(Consts.CustomClosePosition customClosePosition) {
        this.customClosePosition = customClosePosition;
    }

    public int getOffsetX() {
        return this.offsetX;
    }

    public void setOffsetX(int i) {
        this.offsetX = i;
    }

    public int getOffsetY() {
        return this.offsetY;
    }

    public void setOffsetY(int i) {
        this.offsetY = i;
    }

    public boolean getAllowOffscreen() {
        return this.allowOffscreen;
    }

    public void setAllowOffscreen(boolean z) {
        this.allowOffscreen = z;
    }

    public String toString() {
        String str = Consts.ResizePropertiesCCPositionTopRight;
        switch (this.customClosePosition) {
            case TopLeft:
                str = Consts.ResizePropertiesCCPositionTopLeft;
                break;
            case TopCenter:
                str = Consts.ResizePropertiesCCPositionTopCenter;
                break;
            case TopRight:
                str = Consts.ResizePropertiesCCPositionTopRight;
                break;
            case Center:
                str = "center";
                break;
            case BottomLeft:
                str = Consts.ResizePropertiesCCPositionBottomLeft;
                break;
            case BottomCenter:
                str = Consts.ResizePropertiesCCPositionBottomCenter;
                break;
            case BottomRight:
                str = Consts.ResizePropertiesCCPositionBottomRight;
                break;
        }
        String str2 = Consts.False;
        if (this.allowOffscreen) {
            str2 = "true";
        }
        Formatter formatter = new Formatter(Locale.US);
        formatter.format("{width:%d,height:%d,customClosePosition:'%s',offsetX:%d,offsetY:%d,allowOffscreen:%s}", Integer.valueOf(this.width), Integer.valueOf(this.height), str, Integer.valueOf(this.offsetX), Integer.valueOf(this.offsetY), str2);
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
