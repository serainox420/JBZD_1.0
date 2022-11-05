package com.applovin.impl.sdk;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.loopme.debugging.Params;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
class bx {
    private static final List bp = Arrays.asList(Boolean.class, Float.class, Integer.class, Long.class, String.class);
    private static final List bq = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    public static final bz f1624a = a("is_disabled", false);
    public static final bz b = a("honor_publisher_settings", true);
    public static final bz c = a(Params.DEVICE_ID, "");
    public static final bz d = a("publisher_id", "");
    public static final bz e = a("device_token", "");
    public static final bz f = a("submit_data_retry_count", 1);
    public static final bz g = a("vr_retry_count", 1);
    public static final bz h = a("fetch_ad_retry_count", 1);
    public static final bz i = a("is_verbose_logging", false);
    public static final bz j = a("api_endpoint", "http://d.applovin.com/");
    public static final bz k = a("adserver_endpoint", "http://a.applovin.com/");
    public static final bz l = a("get_retry_delay", Long.valueOf((long) NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS));
    public static final bz m = a("hash_algorithm", "SHA-1");
    public static final bz n = a("short_hash_size", 16);
    public static final bz o = a("http_connection_timeout", 30000);
    public static final bz p = a("fetch_ad_connection_timeout", 30000);
    public static final bz q = a("http_socket_timeout", 20000);
    public static final bz r = a("ad_session_minutes", 60);
    public static final bz s = a("ad_request_parameters", "");
    public static final bz t = a("ad_refresh_enabled", true);
    public static final bz u = a("ad_refresh_seconds", 120L);
    public static final bz v = a("mrec_ad_refresh_enabled", true);
    public static final bz w = a("mrec_ad_refresh_seconds", 120L);
    public static final bz x = a("leader_ad_refresh_enabled", true);
    public static final bz y = a("leader_ad_refresh_seconds", 120L);
    public static final bz z = a("plugin_version", "");
    public static final bz A = a("ad_preload_enabled", true);
    public static final bz B = a("ad_resource_caching_enabled", true);
    public static final bz C = a("resource_cache_prefix", "https://vid.applovin.com/,https://pdn.applovin.com/,https://img.applovin.com/,https://d.applovin.com/,https://assets.applovin.com/,https://cdnjs.cloudflare.com/,http://vid.applovin.com/,http://pdn.applovin.com/,http://img.applovin.com/,http://d.applovin.com/,http://assets.applovin.com/,http://cdnjs.cloudflare.com/");
    public static final bz D = a("ad_auto_preload_sizes", "BANNER,INTER");
    public static final bz E = a("ad_auto_preload_incent", true);
    public static final bz F = a("is_tracking_enabled", true);
    public static final bz G = a("force_back_button_enabled_always", false);
    public static final bz H = a("countdown_color", "#C8FFFFFF");
    public static final bz I = a("close_fade_in_time", 400);
    public static final bz J = a("show_close_on_exit", true);
    public static final bz K = a("text_incent_prompt_title", "Earn a Reward");
    public static final bz L = a("text_incent_prompt_body", "Would you like to watch a video for a reward?");
    public static final bz M = a("text_incent_prompt_yes_option", "Watch Now");
    public static final bz N = a("text_incent_prompt_no_option", "No Thanks");
    public static final bz O = a("text_incent_completion_title", "Video Reward");
    public static final bz P = a("text_incent_completion_body_success", "You have earned a reward!");
    public static final bz Q = a("text_incent_completion_body_quota_exceeded", "You have already earned the maximum reward for today.");
    public static final bz R = a("text_incent_completion_body_reward_rejected", "Your reward was rejected.");
    public static final bz S = a("text_incent_completion_body_network_failure", "We were unable to contact the rewards server. Please try again later.");
    public static final bz T = a("text_incent_completion_close_option", "Okay");
    public static final bz U = a("show_incent_prepopup", true);
    public static final bz V = a("show_incent_postpopup", true);
    public static final bz W = a("preload_capacity_banner", 1);
    public static final bz X = a("preload_capacity_mrec", 1);
    public static final bz Y = a("preload_capacity_inter", 1);
    public static final bz Z = a("preload_capacity_leader", 1);
    public static final bz aa = a("preload_capacity_incent", 2);
    public static final bz ab = a("dismiss_video_on_error", true);
    public static final bz ac = a("precache_delimiters", ")]',");
    public static final bz ad = a("close_button_size_graphic", 27);
    public static final bz ae = a("close_button_size_video", 30);
    public static final bz af = a("close_button_top_margin_graphic", 10);
    public static final bz ag = a("close_button_right_margin_graphic", 10);
    public static final bz ah = a("close_button_top_margin_video", 8);
    public static final bz ai = a("close_button_right_margin_video", 4);
    public static final bz aj = a("force_back_button_enabled_poststitial", false);
    public static final bz ak = a("force_back_button_enabled_close_button", false);
    public static final bz al = a("close_button_touch_area", 0);
    public static final bz am = a("is_video_skippable", false);
    public static final bz an = a("cache_cleanup_enabled", false);
    public static final bz ao = a("cache_file_ttl_seconds", 86400L);
    public static final bz ap = a("cache_max_size_mb", -1);
    public static final bz aq = a("preload_merge_init_tasks_incent", true);
    public static final bz ar = a("preload_merge_init_tasks_inter", true);
    public static final bz as = a("submit_postback_timeout", 10000);
    public static final bz at = a("submit_postback_retries", 10);
    public static final bz au = a("widget_imp_tracking_delay", 2000);
    public static final bz av = a("draw_countdown_clock", true);
    public static final bz aw = a("countdown_clock_size", 32);
    public static final bz ax = a("countdown_clock_stroke_size", 4);
    public static final bz ay = a("countdown_clock_text_size", 28);
    public static final bz az = a("ad_auto_preload_native", true);
    public static final bz aA = a("widget_fail_on_slot_count_diff", true);
    public static final bz aB = a("video_zero_length_as_computed", false);
    public static final bz aC = a("video_countdown_clock_margin", 10);
    public static final bz aD = a("video_countdown_clock_gravity", 83);
    public static final bz aE = a("preload_capacity_widget", 1);
    public static final bz aF = a("widget_latch_timeout_ms", 500);
    public static final bz aG = a("android_gc_on_widget_detach", true);
    public static final bz aH = a("lhs_close_button_video", false);
    public static final bz aI = a("lhs_close_button_graphic", false);
    public static final bz aJ = a("lhs_skip_button", true);
    public static final bz aK = a("countdown_toggleable", false);
    public static final bz aL = a("native_batch_precache_count", 1);
    public static final bz aM = a("mute_controls_enabled", false);
    public static final bz aN = a("allow_user_muting", true);
    public static final bz aO = a("mute_button_size", 32);
    public static final bz aP = a("mute_button_margin", 10);
    public static final bz aQ = a("mute_button_gravity", 85);
    public static final bz aR = a("max_apps_to_send", 0);
    public static final bz aS = a("is_app_list_shared", false);
    public static final bz aT = a("qq", false);
    public static final bz aU = a("hw_accelerate_webviews", false);
    public static final bz aV = a("mute_videos", false);
    public static final bz aW = a("event_tracking_endpoint", "http://rt.applovin.com/pix");
    public static final bz aX = a("top_level_events", "landing,checkout,iap");
    public static final bz aY = a("events_enabled", true);
    public static final bz aZ = a("force_ssl", false);
    public static final bz ba = a("postback_service_max_queue_size", 100);
    public static final bz bb = a("max_postback_attempts", 3);
    public static final bz bc = a("click_overlay_enabled", false);
    public static final bz bd = a("click_overlay_color", "#66000000");
    public static final bz be = a("click_tracking_retry_count", 3);
    public static final bz bf = a("click_tracking_retry_delay", 2000);
    public static final bz bg = a("click_tracking_timeout", 10000);
    public static final bz bh = a("android_click_spinner_size", 50);
    public static final bz bi = a("android_click_spinner_style", 16973853);
    public static final bz bj = a("android_dismiss_inters_on_click", false);
    public static final bz bk = a("android_require_external_storage_permission", true);
    public static final bz bl = a("android_drop_nomedia", true);
    public static final bz bm = a("native_auto_cache_preload_resources", true);
    public static final bz bn = a("sanitize_webview", false);
    public static final bz bo = a("webview_package_name", "com.google.android.webview");

    private static bz a(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("No default value specified");
        }
        if (!bp.contains(obj.getClass())) {
            throw new IllegalArgumentException("Unsupported value type: " + obj.getClass());
        }
        bz bzVar = new bz(str, obj);
        bq.add(bzVar);
        return bzVar;
    }

    public static Collection a() {
        return Collections.unmodifiableList(bq);
    }

    public static int b() {
        return bq.size();
    }
}
