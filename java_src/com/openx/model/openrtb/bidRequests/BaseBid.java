package com.openx.model.openrtb.bidRequests;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BaseBid {
    /* JADX INFO: Access modifiers changed from: protected */
    public void toJSON(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj != null) {
            jSONObject.put(str, obj);
        }
    }
}
