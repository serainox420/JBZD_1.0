package com.amazon.device.ads;

import com.amazon.device.ads.JSONUtils;
import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ResizeProperties {
    private static final boolean ALLOW_OFFSCREEN_DEFAULT = true;
    private static final String CUSTOM_CLOSE_POSITION_DEFAULT = "top-right";
    public static final int DIMENSION_NOT_SET = -1;
    private boolean allowOffscreen;
    private String customClosePosition;
    private int height;
    private final JSONUtils.JSONUtilities jsonUtils;
    private int offsetX;
    private int offsetY;
    private int width;

    public ResizeProperties() {
        this(new JSONUtils.JSONUtilities());
    }

    ResizeProperties(JSONUtils.JSONUtilities jSONUtilities) {
        this.width = -1;
        this.height = -1;
        this.offsetX = -1;
        this.offsetY = -1;
        this.customClosePosition = "top-right";
        this.allowOffscreen = true;
        this.jsonUtils = jSONUtilities;
    }

    public void reset() {
        this.width = -1;
        this.height = -1;
        this.offsetX = -1;
        this.offsetY = -1;
        this.customClosePosition = "top-right";
        this.allowOffscreen = true;
    }

    public boolean areResizePropertiesSet() {
        return (this.width == -1 || this.height == -1 || this.offsetX == -1 || this.offsetY == -1) ? false : true;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getOffsetX() {
        return this.offsetX;
    }

    public int getOffsetY() {
        return this.offsetY;
    }

    public String getCustomClosePosition() {
        return this.customClosePosition;
    }

    public boolean getAllowOffscreen() {
        return this.allowOffscreen;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        setDimensionIfSet(jSONObject, "width", this.width);
        setDimensionIfSet(jSONObject, "height", this.height);
        setDimensionIfSet(jSONObject, Consts.ResizePropertiesOffsetX, this.offsetX);
        setDimensionIfSet(jSONObject, Consts.ResizePropertiesOffsetY, this.offsetY);
        this.jsonUtils.put(jSONObject, Consts.ResizePropertiesCustomClosePosition, this.customClosePosition);
        this.jsonUtils.put(jSONObject, Consts.ResizePropertiesAllowOffscreen, this.allowOffscreen);
        return jSONObject;
    }

    private void setDimensionIfSet(JSONObject jSONObject, String str, int i) {
        if (i != -1) {
            this.jsonUtils.put(jSONObject, str, i);
        }
    }

    public boolean fromJSONObject(JSONObject jSONObject) {
        this.width = this.jsonUtils.getIntegerFromJSON(jSONObject, "width", this.width);
        this.height = this.jsonUtils.getIntegerFromJSON(jSONObject, "height", this.height);
        this.offsetX = this.jsonUtils.getIntegerFromJSON(jSONObject, Consts.ResizePropertiesOffsetX, this.offsetX);
        this.offsetY = this.jsonUtils.getIntegerFromJSON(jSONObject, Consts.ResizePropertiesOffsetY, this.offsetY);
        this.customClosePosition = this.jsonUtils.getStringFromJSON(jSONObject, Consts.ResizePropertiesCustomClosePosition, this.customClosePosition);
        this.allowOffscreen = this.jsonUtils.getBooleanFromJSON(jSONObject, Consts.ResizePropertiesAllowOffscreen, this.allowOffscreen);
        if (areResizePropertiesSet()) {
            return true;
        }
        reset();
        return false;
    }
}
