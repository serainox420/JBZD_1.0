package com.flurry.sdk;

import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class dr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> a(JSONObject jSONObject, String str) throws JSONException {
        return lz.b(jSONObject.getJSONArray(str));
    }
}
