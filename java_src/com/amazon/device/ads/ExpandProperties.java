package com.amazon.device.ads;

import com.amazon.device.ads.JSONUtils;
import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ExpandProperties {
    private int height;
    private final boolean isModal;
    private final JSONUtils.JSONUtilities jsonUtils;
    private boolean useCustomClose;
    private int width;

    public ExpandProperties() {
        this(new JSONUtils.JSONUtilities());
    }

    ExpandProperties(JSONUtils.JSONUtilities jSONUtilities) {
        this.width = -1;
        this.height = -1;
        this.useCustomClose = false;
        this.isModal = true;
        this.jsonUtils = jSONUtilities;
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

    public Boolean getUseCustomClose() {
        return Boolean.valueOf(this.useCustomClose);
    }

    public void setUseCustomClose(Boolean bool) {
        this.useCustomClose = bool.booleanValue();
    }

    public Boolean getIsModal() {
        return true;
    }

    public ExpandProperties toClone() {
        ExpandProperties expandProperties = new ExpandProperties();
        expandProperties.width = this.width;
        expandProperties.height = this.height;
        expandProperties.useCustomClose = this.useCustomClose;
        return expandProperties;
    }

    public String toString() {
        return toJSONObject().toString();
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        this.jsonUtils.put(jSONObject, "width", this.width);
        this.jsonUtils.put(jSONObject, "height", this.height);
        this.jsonUtils.put(jSONObject, "useCustomClose", this.useCustomClose);
        JSONUtils.JSONUtilities jSONUtilities = this.jsonUtils;
        getClass();
        jSONUtilities.put(jSONObject, JSInterface.JSON_IS_MODAL, true);
        return jSONObject;
    }

    public void fromJSONObject(JSONObject jSONObject) {
        this.width = this.jsonUtils.getIntegerFromJSON(jSONObject, "width", this.width);
        this.height = this.jsonUtils.getIntegerFromJSON(jSONObject, "height", this.height);
        this.useCustomClose = this.jsonUtils.getBooleanFromJSON(jSONObject, "useCustomClose", this.useCustomClose);
    }
}
