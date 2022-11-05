package io.fabric.sdk.android.services.settings;

import com.crashlytics.android.beta.BuildConfig;
import com.facebook.share.internal.ShareConstants;
import com.intentsoftware.addapptr.AATKit;
import com.intentsoftware.addapptr.ad.NativeAd;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DefaultSettingsJsonTransform.java */
/* loaded from: classes3.dex */
class k implements u {
    @Override // io.fabric.sdk.android.services.settings.u
    public s a(io.fabric.sdk.android.services.common.k kVar, JSONObject jSONObject) throws JSONException {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new s(a(kVar, optInt2, jSONObject), a(jSONObject.getJSONObject("app")), e(jSONObject.getJSONObject("session")), f(jSONObject.getJSONObject("prompt")), c(jSONObject.getJSONObject("features")), d(jSONObject.getJSONObject("analytics")), g(jSONObject.getJSONObject(BuildConfig.ARTIFACT_ID)), optInt, optInt2);
    }

    private e a(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("identifier");
        String string2 = jSONObject.getString("status");
        String string3 = jSONObject.getString("url");
        String string4 = jSONObject.getString("reports_url");
        boolean optBoolean = jSONObject.optBoolean("update_required", false);
        c cVar = null;
        if (jSONObject.has(NativeAd.ICON_IMAGE_ASSET) && jSONObject.getJSONObject(NativeAd.ICON_IMAGE_ASSET).has("hash")) {
            cVar = b(jSONObject.getJSONObject(NativeAd.ICON_IMAGE_ASSET));
        }
        return new e(string, string2, string3, string4, optBoolean, cVar);
    }

    private c b(JSONObject jSONObject) throws JSONException {
        return new c(jSONObject.getString("hash"), jSONObject.getInt("width"), jSONObject.getInt("height"));
    }

    private m c(JSONObject jSONObject) {
        return new m(jSONObject.optBoolean("prompt_enabled", false), jSONObject.optBoolean("collect_logged_exceptions", true), jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_analytics", false));
    }

    private b d(JSONObject jSONObject) {
        return new b(jSONObject.optString("url", "https://e.crashlytics.com/spi/v2/events"), jSONObject.optInt("flush_interval_secs", AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS), jSONObject.optInt("max_byte_size_per_file", 8000), jSONObject.optInt("max_file_count_per_send", 1), jSONObject.optInt("max_pending_send_file_count", 100), jSONObject.optBoolean("track_custom_events", true), jSONObject.optBoolean("track_predefined_events", true), jSONObject.optInt("sampling_rate", 1), jSONObject.optBoolean("flush_on_background", true));
    }

    private p e(JSONObject jSONObject) throws JSONException {
        return new p(jSONObject.optInt("log_buffer_size", 64000), jSONObject.optInt("max_chained_exception_depth", 8), jSONObject.optInt("max_custom_exception_events", 64), jSONObject.optInt("max_custom_key_value_pairs", 64), jSONObject.optInt("identifier_mask", 255), jSONObject.optBoolean("send_session_without_crash", false), jSONObject.optInt("max_complete_sessions_count", 4));
    }

    private o f(JSONObject jSONObject) throws JSONException {
        return new o(jSONObject.optString("title", "Send Crash Report?"), jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, "Looks like we crashed! Please help us fix the problem by sending a crash report."), jSONObject.optString("send_button_title", "Send"), jSONObject.optBoolean("show_cancel_button", true), jSONObject.optString("cancel_button_title", "Don't Send"), jSONObject.optBoolean("show_always_send_button", true), jSONObject.optString("always_send_button_title", "Always Send"));
    }

    private f g(JSONObject jSONObject) throws JSONException {
        return new f(jSONObject.optString("update_endpoint", t.f5726a), jSONObject.optInt("update_suspend_duration", 3600));
    }

    private long a(io.fabric.sdk.android.services.common.k kVar, long j, JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("expires_at")) {
            return jSONObject.getLong("expires_at");
        }
        return kVar.a() + (1000 * j);
    }
}
