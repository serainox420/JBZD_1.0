package com.video.adsdk.internal;

import android.os.Build;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Tracker {
    public static final int ADVERTISING_FAILD_TO_LOAD_ERROR = 13;
    public static final int ADVERTISING_NOT_AVAILABLE_ERROR = 12;
    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    public static final int TIME_OUT_ERROR = 11;
    public static final String url = "http://adn9.smartstream.tv/ios-player-tracking/index.php";

    private static void post(String str, String str2, Callback callback) throws IOException {
        new OkHttpClient().newCall(new Request.Builder().url(str).post(RequestBody.create(JSON, str2)).build()).enqueue(callback);
    }

    public static void sendMessage(int i, String str, String str2, String str3, String str4) {
        try {
            post(url, createJsonString(i, "videoUrl: " + str2 + " adUrl: " + str3 + " request url: " + str4 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str), new Callback() { // from class: com.video.adsdk.internal.Tracker.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static String createJsonString(int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PubMaticConstants.OS_PARAM, "device name = " + Build.MODEL + " brand = " + Build.BRAND + " OS version = " + Build.VERSION.RELEASE + " SDK version = " + Build.VERSION.SDK_INT);
            jSONObject.put(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE, str);
            jSONObject.put(NativeProtocol.BRIDGE_ARG_ERROR_CODE, i);
            jSONObject.put("app", "VideoAdSDK");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
