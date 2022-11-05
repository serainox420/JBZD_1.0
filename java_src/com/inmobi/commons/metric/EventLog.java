package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class EventLog {

    /* renamed from: a  reason: collision with root package name */
    private EventType f3804a;
    private JSONObject b;

    public EventLog(EventType eventType, JSONObject jSONObject) {
        this.f3804a = eventType;
        this.b = jSONObject;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("t", this.f3804a.getValue());
            jSONObject.put("v", this.b);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to log json.", e);
        }
        return jSONObject.toString();
    }
}
