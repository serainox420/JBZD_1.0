package com.amazon.device.ads;

import com.amazon.device.ads.JSONUtils;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes.dex */
class OrientationProperties {
    private Boolean allowOrientationChange;
    private ForceOrientation forceOrientation;
    private final JSONUtils.JSONUtilities jsonUtils;

    public OrientationProperties() {
        this(new JSONUtils.JSONUtilities());
    }

    OrientationProperties(JSONUtils.JSONUtilities jSONUtilities) {
        this.allowOrientationChange = true;
        this.forceOrientation = ForceOrientation.NONE;
        this.jsonUtils = jSONUtilities;
    }

    public Boolean isAllowOrientationChange() {
        return this.allowOrientationChange;
    }

    public void setAllowOrientationChange(Boolean bool) {
        this.allowOrientationChange = bool;
    }

    public ForceOrientation getForceOrientation() {
        return this.forceOrientation;
    }

    public void setForceOrientation(ForceOrientation forceOrientation) {
        this.forceOrientation = forceOrientation;
    }

    public String toString() {
        return toJSONObject().toString();
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        this.jsonUtils.put(jSONObject, Consts.OrientationPpropertiesForceOrientation, this.forceOrientation.toString());
        this.jsonUtils.put(jSONObject, Consts.OrientationPpropertiesAllowOrientationChange, this.allowOrientationChange.booleanValue());
        return jSONObject;
    }

    public void fromJSONObject(JSONObject jSONObject) {
        this.allowOrientationChange = Boolean.valueOf(this.jsonUtils.getBooleanFromJSON(jSONObject, Consts.OrientationPpropertiesAllowOrientationChange, this.allowOrientationChange.booleanValue()));
        this.forceOrientation = ForceOrientation.valueOf(this.jsonUtils.getStringFromJSON(jSONObject, Consts.OrientationPpropertiesForceOrientation, this.forceOrientation.toString()).toUpperCase(Locale.US));
    }
}
