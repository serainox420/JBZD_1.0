package com.loopme.common;

import com.loopme.common.AdParams;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.ErrorType;
import com.loopme.debugging.LiveDebug;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes2.dex */
public class ResponseParser {
    private static final String JSON_DEBUG = "debug";
    private static final String JSON_EXPIRED_TIME = "ad_expiry_time";
    private static final String JSON_FORMAT = "format";
    private static final String JSON_ORIENTATION = "orientation";
    private static final String JSON_PACKAGE_IDS = "package_ids";
    private static final String JSON_PART_PRELOAD = "preload25";
    private static final String JSON_SCRIPT = "script";
    private static final String JSON_SETTINGS = "settings";
    private static final String JSON_TOKEN = "token";
    private static final String JSON_V360 = "v360";
    private static final String LOG_TAG = ResponseParser.class.getSimpleName();
    private int mAdFormat;
    private Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onParseError(LoopMeError loopMeError);
    }

    public ResponseParser(Listener listener, int i) {
        if (listener == null) {
            Logging.out(LOG_TAG, "Wrong parameter(s)");
        }
        this.mListener = listener;
        this.mAdFormat = i;
    }

    public AdParams getAdParams(String str) {
        String str2;
        boolean z = true;
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
            JSONObject jSONObject2 = jSONObject.getJSONObject(JSON_SETTINGS);
            String string = jSONObject2.getString("format");
            if (!isValidFormat(string)) {
                ErrorLog.post("Broken response [wrong format parameter: " + string + "]", ErrorType.SERVER);
            }
            switch (this.mAdFormat) {
                case 1000:
                    str2 = "banner";
                    break;
                case 1001:
                    str2 = "interstitial";
                    break;
                default:
                    str2 = "";
                    break;
            }
            if (!string.equalsIgnoreCase(str2)) {
                handleParseError("Wrong Ad format");
                return null;
            }
            LiveDebug.setLiveDebug(parseInt(jSONObject2, JSON_DEBUG) == 1);
            boolean z2 = parseInt(jSONObject2, JSON_PART_PRELOAD) == 1;
            StaticParams.PART_PRELOAD = z2;
            if (parseInt(jSONObject2, JSON_V360) != 1) {
                z = false;
            }
            return new AdParams.AdParamsBuilder(string).html(parseString(jSONObject, JSON_SCRIPT)).orientation(parseString(jSONObject2, "orientation")).expiredTime(parseInt(jSONObject2, JSON_EXPIRED_TIME)).token(parseString(jSONObject2, JSON_TOKEN)).packageIds(parseArray(jSONObject2, JSON_PACKAGE_IDS)).partPreload(z2).video360(z).build();
        } catch (ClassCastException e) {
            e.printStackTrace();
            handleParseError("Exception during json parse");
            ErrorLog.post("Broken response", ErrorType.SERVER);
            return null;
        } catch (JSONException e2) {
            handleParseError("Exception during json parse");
            ErrorLog.post("Broken response", ErrorType.SERVER);
            return null;
        }
    }

    private boolean isValidFormat(String str) {
        if (str == null) {
            return false;
        }
        return str.equalsIgnoreCase("banner") || str.equalsIgnoreCase("interstitial");
    }

    private void handleParseError(String str) {
        if (this.mListener != null) {
            this.mListener.onParseError(new LoopMeError(str));
        }
    }

    private List<String> parseArray(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArray.length()) {
                    break;
                }
                arrayList.add((String) jSONArray.get(i2));
                i = i2 + 1;
            }
        } catch (JSONException e) {
            Logging.out(LOG_TAG, str + " absent");
        }
        return arrayList;
    }

    private String parseString(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            Logging.out(LOG_TAG, str + " absent");
            return null;
        }
    }

    private JSONObject parseJsonObject(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException e) {
            Logging.out(LOG_TAG, str + " absent");
            return null;
        }
    }

    private int parseInt(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getInt(str);
        } catch (JSONException e) {
            Logging.out(LOG_TAG, str + " absent");
            return 0;
        }
    }
}
