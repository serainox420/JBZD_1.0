package com.inmobi.commons.internal;

import com.inmobi.commons.metric.EventType;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.metric.Storage;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ApiStatCollector {

    /* renamed from: a  reason: collision with root package name */
    private static Logger f3789a = new Logger(3, "apiStats", new Storage.PreProcessor() { // from class: com.inmobi.commons.internal.ApiStatCollector.1
        @Override // com.inmobi.commons.metric.Storage.PreProcessor
        public JSONObject process(JSONObject jSONObject) {
            HashMap hashMap = new HashMap();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("payload");
                for (int i = 0; i < jSONArray.length(); i++) {
                    int i2 = jSONArray.getJSONObject(i).getInt("t");
                    Integer num = (Integer) hashMap.get(Integer.valueOf(i2));
                    if (num == null) {
                        hashMap.put(Integer.valueOf(i2), 1);
                    } else {
                        hashMap.put(Integer.valueOf(i2), Integer.valueOf(num.intValue() + 1));
                    }
                }
                JSONArray jSONArray2 = new JSONArray();
                for (Map.Entry entry : hashMap.entrySet()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("t", entry.getKey());
                    jSONObject2.put("v", entry.getValue());
                    jSONArray2.put(jSONObject2);
                }
                jSONObject.put("payload", jSONArray2);
            } catch (JSONException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to aggregate data. Sending data as-is.");
            }
            return jSONObject;
        }
    });

    /* loaded from: classes2.dex */
    public static class ApiEventType implements EventType {
        public static final int API_IMAI_OPEN_EMBEDDED = 1001;
        public static final int API_IMAI_OPEN_EXTERNAL = 1002;
        public static final int API_IMAI_PING = 1003;
        public static final int API_IMAI_PING_IN_WEB_VIEW = 1004;
        public static final int API_MRAID_ASYNC_PING = 31;
        public static final int API_MRAID_CLOSE = 13;
        public static final int API_MRAID_CLOSE_VIDEO = 50;
        public static final int API_MRAID_CREATE_CALENDAR_EVENT = 30;
        public static final int API_MRAID_EXPAND = 11;
        public static final int API_MRAID_GET_AUDIO_VOLUME = 37;
        public static final int API_MRAID_GET_CURRENT_POSITION = 18;
        public static final int API_MRAID_GET_DEFAULT_POSITION = 19;
        public static final int API_MRAID_GET_EXPAND_PROPERTIES = 4;
        public static final int API_MRAID_GET_GALLERY_IMAGE = 25;
        public static final int API_MRAID_GET_MAX_SIZE = 20;
        public static final int API_MRAID_GET_MIC_INTENSITY = 51;
        public static final int API_MRAID_GET_ORIENTATION = 16;
        public static final int API_MRAID_GET_ORIENTATION_PROPERTIES = 5;
        public static final int API_MRAID_GET_PLACEMENT_TYPE = 15;
        public static final int API_MRAID_GET_RESIZE_PROPERTIES = 6;
        public static final int API_MRAID_GET_SCREEN_SIZE = 17;
        public static final int API_MRAID_GET_STATE = 3;
        public static final int API_MRAID_GET_VIDEO_VOLUME = 45;
        public static final int API_MRAID_HIDE_VIDEO = 48;
        public static final int API_MRAID_IS_AUDIO_MUTED = 35;
        public static final int API_MRAID_IS_VIDEO_MUTED = 43;
        public static final int API_MRAID_IS_VIEWABLE = 14;
        public static final int API_MRAID_MAKE_CALL = 29;
        public static final int API_MRAID_MUTE_AUDIO = 33;
        public static final int API_MRAID_MUTE_VIDEO = 41;
        public static final int API_MRAID_OPEN = 1;
        public static final int API_MRAID_OPEN_EXTERNAL = 2;
        public static final int API_MRAID_PAUSE_AUDIO = 39;
        public static final int API_MRAID_PAUSE_VIDEO = 47;
        public static final int API_MRAID_PLAY_AUDIO = 32;
        public static final int API_MRAID_PLAY_VIDEO = 40;
        public static final int API_MRAID_POST_TO_SOCIAL = 21;
        public static final int API_MRAID_RESIZE = 12;
        public static final int API_MRAID_SEEK_AUDIO = 38;
        public static final int API_MRAID_SEEK_VIDEO = 46;
        public static final int API_MRAID_SEND_MAIL = 28;
        public static final int API_MRAID_SEND_SMS = 27;
        public static final int API_MRAID_SET_AUDIO_VOLUME = 36;
        public static final int API_MRAID_SET_EXPAND_PROPERTIES = 7;
        public static final int API_MRAID_SET_ORIENTATION_PROPERTIES = 8;
        public static final int API_MRAID_SET_RESIZE_PROPERTIES = 9;
        public static final int API_MRAID_SET_VIDEO_VOLUME = 44;
        public static final int API_MRAID_SHOW_VIDEO = 49;
        public static final int API_MRAID_STORE_PICTURE = 23;
        public static final int API_MRAID_SUPPORTS = 22;
        public static final int API_MRAID_TAKE_CAMERA_PICTURE = 24;
        public static final int API_MRAID_UNMUTE_AUDIO = 34;
        public static final int API_MRAID_UNMUTE_VIDEO = 42;
        public static final int API_MRAID_USE_CUSTOM_CLOSE = 10;
        public static final int API_MRAID_VIBRATE = 26;

        /* renamed from: a  reason: collision with root package name */
        int f3790a;

        public ApiEventType(int i) {
            this.f3790a = i;
        }

        @Override // com.inmobi.commons.metric.EventType
        public int getValue() {
            return this.f3790a;
        }
    }

    public static Logger getLogger() {
        return f3789a;
    }
}
