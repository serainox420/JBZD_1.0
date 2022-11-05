package com.moat.analytics.mobile.aol;

import android.os.Build;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class MoatConfig {
    public static final int DEFAULT_VW_INTERVAL_MS = 200;
    private static final String JSON_KEY_OS_BLACKLIST = "ob";
    private static final String JSON_KEY_STATUS = "sa";
    private static final String JSON_KEY_VW_INTERVAL = "in";
    private static final String JSON_VAL_STATUS_ON = "on";
    private static final int MAX_WV_INTERVAL_MS = 1000;
    private static final int MIN_VW_INTERVAL_MS = 100;
    private boolean isOn = false;
    private boolean isDebug = false;
    private int vwIntervalMillis = 200;

    public MoatConfig(String str) {
        parseConfig(str);
    }

    public void parseConfig(String str) {
        int i;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(JSON_KEY_STATUS);
            boolean equals = string.equals(BuildConfig.REVISION);
            if ((string.equals(JSON_VAL_STATUS_ON) || equals) && !isOSBlacklisted(jSONObject)) {
                this.isOn = true;
                this.isDebug = equals;
            }
            if (jSONObject.has(JSON_KEY_VW_INTERVAL) && (i = jSONObject.getInt(JSON_KEY_VW_INTERVAL)) >= 100 && i <= 1000) {
                this.vwIntervalMillis = i;
            }
        } catch (Exception e) {
            this.isOn = false;
            this.isDebug = false;
            this.vwIntervalMillis = 200;
        }
    }

    private boolean isOSBlacklisted(JSONObject jSONObject) {
        try {
            if (jSONObject.has(JSON_KEY_OS_BLACKLIST)) {
                JSONArray jSONArray = jSONObject.getJSONArray(JSON_KEY_OS_BLACKLIST);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    if (jSONArray.getInt(i) == Build.VERSION.SDK_INT) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public boolean isDebugEnabled() {
        return this.isDebug;
    }

    public boolean isOn() {
        return this.isOn;
    }

    public int getVWIntervalMillis() {
        return this.vwIntervalMillis;
    }
}
