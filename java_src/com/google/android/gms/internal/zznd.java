package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.text.TextUtils;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.internal.zznm;
import com.google.firebase.a.a;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.loopme.common.StaticParams;
import com.millennialmedia.NativeAd;
import com.openx.view.mraid.JSInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zznd {
    private static final SimpleDateFormat zzTJ = new SimpleDateFormat("yyyyMMdd", Locale.US);

    private static Integer zzB(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0144 A[Catch: JSONException -> 0x023c, TryCatch #0 {JSONException -> 0x023c, blocks: (B:2:0x0000, B:4:0x0030, B:7:0x0038, B:9:0x0043, B:11:0x004e, B:12:0x0057, B:14:0x0075, B:15:0x0084, B:17:0x0097, B:18:0x009f, B:20:0x00a6, B:22:0x00ac, B:24:0x00c8, B:31:0x00e7, B:35:0x00f4, B:36:0x00f8, B:40:0x0105, B:41:0x0109, B:45:0x0116, B:47:0x011c, B:49:0x0121, B:50:0x0125, B:52:0x012d, B:53:0x012f, B:55:0x0144, B:56:0x014d, B:65:0x0264, B:64:0x0260, B:63:0x025c, B:28:0x00d6, B:30:0x00de), top: B:70:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzmn zza(Context context, zzmk zzmkVar, String str) {
        String str2;
        long j;
        boolean optBoolean;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("ad_base_url", null);
            String optString2 = jSONObject.optString("ad_url", null);
            String optString3 = jSONObject.optString("ad_size", null);
            String optString4 = jSONObject.optString("ad_slot_size", optString3);
            boolean z = (zzmkVar == null || zzmkVar.zzRE == 0) ? false : true;
            String optString5 = jSONObject.optString("ad_json", null);
            if (optString5 == null) {
                optString5 = jSONObject.optString("ad_html", null);
            }
            if (optString5 == null) {
                optString5 = jSONObject.optString(NativeAd.COMPONENT_ID_BODY, null);
            }
            long j2 = -1;
            String optString6 = jSONObject.optString("debug_dialog", null);
            String optString7 = jSONObject.optString("debug_signals", null);
            long j3 = jSONObject.has("interstitial_timeout") ? (long) (jSONObject.getDouble("interstitial_timeout") * 1000.0d) : -1L;
            String optString8 = jSONObject.optString("orientation", null);
            int i = -1;
            if ("portrait".equals(optString8)) {
                i = com.google.android.gms.ads.internal.zzw.zzcO().zzkR();
            } else if ("landscape".equals(optString8)) {
                i = com.google.android.gms.ads.internal.zzw.zzcO().zzkQ();
            }
            zzmn zzmnVar = null;
            if (!TextUtils.isEmpty(optString5) || TextUtils.isEmpty(optString2)) {
                str2 = optString5;
            } else {
                zzmnVar = zznc.zza(zzmkVar, context, zzmkVar.zzvn.zzba, optString2, null, null, null, null);
                optString = zzmnVar.zzNJ;
                str2 = zzmnVar.body;
                j2 = zzmnVar.zzSr;
            }
            if (str2 == null) {
                return new zzmn(0);
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("click_urls");
            List<String> list = zzmnVar == null ? null : zzmnVar.zzKF;
            if (optJSONArray != null) {
                list = zza(optJSONArray, list);
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("impression_urls");
            List<String> list2 = zzmnVar == null ? null : zzmnVar.zzKG;
            if (optJSONArray2 != null) {
                list2 = zza(optJSONArray2, list2);
            }
            JSONArray optJSONArray3 = jSONObject.optJSONArray("manual_impression_urls");
            List<String> list3 = zzmnVar == null ? null : zzmnVar.zzSp;
            if (optJSONArray3 != null) {
                list3 = zza(optJSONArray3, list3);
            }
            if (zzmnVar != null) {
                if (zzmnVar.orientation != -1) {
                    i = zzmnVar.orientation;
                }
                if (zzmnVar.zzSm > 0) {
                    j = zzmnVar.zzSm;
                    String optString9 = jSONObject.optString("active_view");
                    String str3 = null;
                    optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
                    if (optBoolean) {
                        str3 = jSONObject.optString("ad_passback_url", null);
                    }
                    boolean optBoolean2 = jSONObject.optBoolean("mediation", false);
                    boolean optBoolean3 = jSONObject.optBoolean("custom_render_allowed", false);
                    boolean optBoolean4 = jSONObject.optBoolean("content_url_opted_out", true);
                    boolean optBoolean5 = jSONObject.optBoolean("content_vertical_opted_out", true);
                    boolean optBoolean6 = jSONObject.optBoolean("prefetch", false);
                    long optLong = jSONObject.optLong("refresh_interval_milliseconds", -1L);
                    long optLong2 = jSONObject.optLong("mediation_config_cache_time_milliseconds", -1L);
                    String optString10 = jSONObject.optString("gws_query_id", "");
                    boolean equals = "height".equals(jSONObject.optString("fluid", ""));
                    boolean optBoolean7 = jSONObject.optBoolean("native_express", false);
                    List<String> zza = zza(jSONObject.optJSONArray("video_start_urls"), (List<String>) null);
                    List<String> zza2 = zza(jSONObject.optJSONArray("video_complete_urls"), (List<String>) null);
                    return new zzmn(zzmkVar, optString, str2, list, list2, j, optBoolean2, optLong2, list3, optLong, i, optString3, j2, optString6, optBoolean, str3, optString9, optBoolean3, z, zzmkVar.zzRG, optBoolean4, optBoolean6, optString10, equals, optBoolean7, zzoo.zza(jSONObject.optJSONArray("rewards")), zza, zza2, jSONObject.optBoolean("use_displayed_impression", false), zzmp.zzf(jSONObject.optJSONObject("auto_protection_configuration")), zzmkVar.zzRV, jSONObject.optString("set_cookie", ""), zza(jSONObject.optJSONArray("remote_ping_urls"), (List<String>) null), jSONObject.optBoolean("render_in_browser", zzmkVar.zzKJ), optString4, zzor.zzh(jSONObject.optJSONObject("safe_browsing")), optString7, optBoolean5, zzmkVar.zzSh);
                }
            }
            j = j3;
            String optString92 = jSONObject.optString("active_view");
            String str32 = null;
            optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
            if (optBoolean) {
            }
            boolean optBoolean22 = jSONObject.optBoolean("mediation", false);
            boolean optBoolean32 = jSONObject.optBoolean("custom_render_allowed", false);
            boolean optBoolean42 = jSONObject.optBoolean("content_url_opted_out", true);
            boolean optBoolean52 = jSONObject.optBoolean("content_vertical_opted_out", true);
            boolean optBoolean62 = jSONObject.optBoolean("prefetch", false);
            long optLong3 = jSONObject.optLong("refresh_interval_milliseconds", -1L);
            long optLong22 = jSONObject.optLong("mediation_config_cache_time_milliseconds", -1L);
            String optString102 = jSONObject.optString("gws_query_id", "");
            boolean equals2 = "height".equals(jSONObject.optString("fluid", ""));
            boolean optBoolean72 = jSONObject.optBoolean("native_express", false);
            List<String> zza3 = zza(jSONObject.optJSONArray("video_start_urls"), (List<String>) null);
            List<String> zza22 = zza(jSONObject.optJSONArray("video_complete_urls"), (List<String>) null);
            return new zzmn(zzmkVar, optString, str2, list, list2, j, optBoolean22, optLong22, list3, optLong3, i, optString3, j2, optString6, optBoolean, str32, optString92, optBoolean32, z, zzmkVar.zzRG, optBoolean42, optBoolean62, optString102, equals2, optBoolean72, zzoo.zza(jSONObject.optJSONArray("rewards")), zza3, zza22, jSONObject.optBoolean("use_displayed_impression", false), zzmp.zzf(jSONObject.optJSONObject("auto_protection_configuration")), zzmkVar.zzRV, jSONObject.optString("set_cookie", ""), zza(jSONObject.optJSONArray("remote_ping_urls"), (List<String>) null), jSONObject.optBoolean("render_in_browser", zzmkVar.zzKJ), optString4, zzor.zzh(jSONObject.optJSONObject("safe_browsing")), optString7, optBoolean52, zzmkVar.zzSh);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzpk.zzbh(valueOf.length() != 0 ? "Could not parse the inline ad response: ".concat(valueOf) : new String("Could not parse the inline ad response: "));
            return new zzmn(0);
        }
    }

    private static List<String> zza(JSONArray jSONArray, List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        if (list == null) {
            list = new LinkedList<>();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list.add(jSONArray.getString(i));
        }
        return list;
    }

    public static JSONObject zza(Context context, zzna zznaVar) {
        zzeg[] zzegVarArr;
        zzeg[] zzegVarArr2;
        zzmk zzmkVar = zznaVar.zzTi;
        Location location = zznaVar.zzzb;
        zzni zzniVar = zznaVar.zzTj;
        Bundle bundle = zznaVar.zzRF;
        JSONObject jSONObject = zznaVar.zzTk;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("extra_caps", zzgd.zzEe.get());
            if (zznaVar.zzRM.size() > 0) {
                hashMap.put("eid", TextUtils.join(",", zznaVar.zzRM));
            }
            if (zzmkVar.zzRx != null) {
                hashMap.put("ad_pos", zzmkVar.zzRx);
            }
            zza(hashMap, zzmkVar.zzRy);
            if (zzmkVar.zzvr.zzzA != null) {
                boolean z = false;
                boolean z2 = false;
                for (zzeg zzegVar : zzmkVar.zzvr.zzzA) {
                    if (!zzegVar.zzzC && !z2) {
                        hashMap.put(StaticParams.FORMAT_TAG, zzegVar.zzzy);
                        z2 = true;
                    }
                    if (zzegVar.zzzC && !z) {
                        hashMap.put("fluid", "height");
                        z = true;
                    }
                    if (z2 && z) {
                        break;
                    }
                }
            } else {
                hashMap.put(StaticParams.FORMAT_TAG, zzmkVar.zzvr.zzzy);
                if (zzmkVar.zzvr.zzzC) {
                    hashMap.put("fluid", "height");
                }
            }
            if (zzmkVar.zzvr.width == -1) {
                hashMap.put("smart_w", "full");
            }
            if (zzmkVar.zzvr.height == -2) {
                hashMap.put("smart_h", "auto");
            }
            if (zzmkVar.zzvr.zzzA != null) {
                StringBuilder sb = new StringBuilder();
                boolean z3 = false;
                for (zzeg zzegVar2 : zzmkVar.zzvr.zzzA) {
                    if (zzegVar2.zzzC) {
                        z3 = true;
                    } else {
                        if (sb.length() != 0) {
                            sb.append("|");
                        }
                        sb.append(zzegVar2.width == -1 ? (int) (zzegVar2.widthPixels / zzniVar.zzxk) : zzegVar2.width);
                        sb.append(JSInterface.JSON_X);
                        sb.append(zzegVar2.height == -2 ? (int) (zzegVar2.heightPixels / zzniVar.zzxk) : zzegVar2.height);
                    }
                }
                if (z3) {
                    if (sb.length() != 0) {
                        sb.insert(0, "|");
                    }
                    sb.insert(0, "320x50");
                }
                hashMap.put("sz", sb);
            }
            if (zzmkVar.zzRE != 0) {
                hashMap.put("native_version", Integer.valueOf(zzmkVar.zzRE));
                hashMap.put("native_templates", zzmkVar.zzvK);
                hashMap.put("native_image_orientation", zzc(zzmkVar.zzvF));
                if (!zzmkVar.zzRN.isEmpty()) {
                    hashMap.put("native_custom_templates", zzmkVar.zzRN);
                }
            }
            if (zzmkVar.zzvr.zzzD) {
                hashMap.put("ene", true);
            }
            if (zzmkVar.zzvH != null) {
                hashMap.put("is_icon_ad", true);
                hashMap.put("icon_ad_expansion_behavior", Integer.valueOf(zzmkVar.zzvH.zzzZ));
            }
            hashMap.put("slotname", zzmkVar.zzvl);
            hashMap.put("pn", zzmkVar.applicationInfo.packageName);
            if (zzmkVar.zzRz != null) {
                hashMap.put("vc", Integer.valueOf(zzmkVar.zzRz.versionCode));
            }
            hashMap.put("ms", zznaVar.zzRA);
            hashMap.put("seq_num", zzmkVar.zzRB);
            hashMap.put("session_id", zzmkVar.zzRC);
            hashMap.put("js", zzmkVar.zzvn.zzba);
            zza(hashMap, zzniVar, zznaVar.zzTg, zzmkVar.zzSa, zznaVar.zzTf);
            zza(hashMap, zznaVar, context);
            hashMap.put("platform", Build.MANUFACTURER);
            hashMap.put("submodel", Build.MODEL);
            if (location != null) {
                zza(hashMap, location);
            } else if (zzmkVar.zzRy.versionCode >= 2 && zzmkVar.zzRy.zzzb != null) {
                zza(hashMap, zzmkVar.zzRy.zzzb);
            }
            if (zzmkVar.versionCode >= 2) {
                hashMap.put("quality_signals", zzmkVar.zzRD);
            }
            if (zzmkVar.versionCode >= 4 && zzmkVar.zzRG) {
                hashMap.put("forceHttps", Boolean.valueOf(zzmkVar.zzRG));
            }
            if (bundle != null) {
                hashMap.put("content_info", bundle);
            }
            if (zzmkVar.versionCode >= 5) {
                hashMap.put("u_sd", Float.valueOf(zzmkVar.zzxk));
                hashMap.put("sh", Integer.valueOf(zzmkVar.zzRI));
                hashMap.put("sw", Integer.valueOf(zzmkVar.zzRH));
            } else {
                hashMap.put("u_sd", Float.valueOf(zzniVar.zzxk));
                hashMap.put("sh", Integer.valueOf(zzniVar.zzRI));
                hashMap.put("sw", Integer.valueOf(zzniVar.zzRH));
            }
            if (zzmkVar.versionCode >= 6) {
                if (!TextUtils.isEmpty(zzmkVar.zzRJ)) {
                    try {
                        hashMap.put("view_hierarchy", new JSONObject(zzmkVar.zzRJ));
                    } catch (JSONException e) {
                        zzpk.zzc("Problem serializing view hierarchy to JSON", e);
                    }
                }
                hashMap.put("correlation_id", Long.valueOf(zzmkVar.zzRK));
            }
            if (zzmkVar.versionCode >= 7) {
                hashMap.put("request_id", zzmkVar.zzRL);
            }
            if (zzmkVar.versionCode >= 11 && zzmkVar.zzRP != null) {
                hashMap.put("capability", zzmkVar.zzRP.toBundle());
            }
            if (zzmkVar.versionCode >= 12 && !TextUtils.isEmpty(zzmkVar.zzRQ)) {
                hashMap.put("anchor", zzmkVar.zzRQ);
            }
            if (zzmkVar.versionCode >= 13) {
                hashMap.put("android_app_volume", Float.valueOf(zzmkVar.zzRR));
            }
            if (zzmkVar.versionCode >= 18) {
                hashMap.put("android_app_muted", Boolean.valueOf(zzmkVar.zzRX));
            }
            if (zzmkVar.versionCode >= 14 && zzmkVar.zzRS > 0) {
                hashMap.put("target_api", Integer.valueOf(zzmkVar.zzRS));
            }
            if (zzmkVar.versionCode >= 15) {
                hashMap.put("scroll_index", Integer.valueOf(zzmkVar.zzRT == -1 ? -1 : zzmkVar.zzRT));
            }
            if (zzmkVar.versionCode >= 16) {
                hashMap.put("_activity_context", Boolean.valueOf(zzmkVar.zzRU));
            }
            if (zzmkVar.versionCode >= 18) {
                if (!TextUtils.isEmpty(zzmkVar.zzRY)) {
                    try {
                        hashMap.put("app_settings", new JSONObject(zzmkVar.zzRY));
                    } catch (JSONException e2) {
                        zzpk.zzc("Problem creating json from app settings", e2);
                    }
                }
                hashMap.put("render_in_browser", Boolean.valueOf(zzmkVar.zzKJ));
            }
            if (zzmkVar.versionCode >= 18) {
                hashMap.put("android_num_video_cache_tasks", Integer.valueOf(zzmkVar.zzRZ));
            }
            zza(context, hashMap, zzmkVar.zzvn);
            hashMap.put("cache_state", jSONObject);
            if (zzmkVar.versionCode >= 19) {
                hashMap.put("gct", zzmkVar.zzSb);
            }
            if (zzmkVar.versionCode >= 21 && zzmkVar.zzSc) {
                hashMap.put("de", "1");
            }
            if (zzgd.zzDc.get().booleanValue()) {
                zza(hashMap, zzmkVar);
            }
            if (zzmkVar.versionCode >= 22 && com.google.android.gms.ads.internal.zzw.zzdl().zzjQ()) {
                hashMap.put("gmp_app_id", zzmkVar.zzSe);
                hashMap.put("fbs_aiid", zzmkVar.zzSf);
                hashMap.put("fbs_aeid", zzmkVar.zzSg);
            }
            if (zzpk.zzak(2)) {
                String valueOf = String.valueOf(com.google.android.gms.ads.internal.zzw.zzcM().zzQ(hashMap).toString(2));
                zzpk.v(valueOf.length() != 0 ? "Ad Request JSON: ".concat(valueOf) : new String("Ad Request JSON: "));
            }
            return com.google.android.gms.ads.internal.zzw.zzcM().zzQ(hashMap);
        } catch (JSONException e3) {
            String valueOf2 = String.valueOf(e3.getMessage());
            zzpk.zzbh(valueOf2.length() != 0 ? "Problem serializing ad request to JSON: ".concat(valueOf2) : new String("Problem serializing ad request to JSON: "));
            return null;
        }
    }

    private static void zza(Context context, HashMap<String, Object> hashMap, zzqh zzqhVar) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle2.putString("cl", "149960398");
        bundle2.putString("rapid_rc", "dev");
        bundle2.putString("rapid_rollup", "HEAD");
        bundle.putBundle("build_meta", bundle2);
        bundle.putString("mf", Boolean.toString(zzgd.zzEg.get().booleanValue()));
        bundle.putBoolean("instant_app", zzadg.zzbi(context).zzzx());
        bundle.putBoolean("lite", zzqhVar.zzYZ);
        hashMap.put("sdk_env", bundle);
    }

    private static void zza(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long valueOf2 = Long.valueOf(location.getTime() * 1000);
        Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        hashMap2.put("radius", valueOf);
        hashMap2.put("lat", valueOf3);
        hashMap2.put("long", valueOf4);
        hashMap2.put("time", valueOf2);
        hashMap.put("uule", hashMap2);
    }

    private static void zza(HashMap<String, Object> hashMap, zzec zzecVar) {
        String zzkF = zzpi.zzkF();
        if (zzkF != null) {
            hashMap.put("abf", zzkF);
        }
        if (zzecVar.zzyT != -1) {
            hashMap.put("cust_age", zzTJ.format(new Date(zzecVar.zzyT)));
        }
        if (zzecVar.extras != null) {
            hashMap.put(AppLinkData.ARGUMENTS_EXTRAS_KEY, zzecVar.extras);
        }
        if (zzecVar.zzyU != -1) {
            hashMap.put("cust_gender", Integer.valueOf(zzecVar.zzyU));
        }
        if (zzecVar.zzyV != null) {
            hashMap.put("kw", zzecVar.zzyV);
        }
        if (zzecVar.zzyX != -1) {
            hashMap.put("tag_for_child_directed_treatment", Integer.valueOf(zzecVar.zzyX));
        }
        if (zzecVar.zzyW) {
            hashMap.put("adtest", "on");
        }
        if (zzecVar.versionCode >= 2) {
            if (zzecVar.zzyY) {
                hashMap.put("d_imp_hdr", 1);
            }
            if (!TextUtils.isEmpty(zzecVar.zzyZ)) {
                hashMap.put("ppid", zzecVar.zzyZ);
            }
            if (zzecVar.zzza != null) {
                zza(hashMap, zzecVar.zzza);
            }
        }
        if (zzecVar.versionCode >= 3 && zzecVar.zzzc != null) {
            hashMap.put("url", zzecVar.zzzc);
        }
        if (zzecVar.versionCode >= 5) {
            if (zzecVar.zzze != null) {
                hashMap.put("custom_targeting", zzecVar.zzze);
            }
            if (zzecVar.zzzf != null) {
                hashMap.put("category_exclusions", zzecVar.zzzf);
            }
            if (zzecVar.zzzg != null) {
                hashMap.put("request_agent", zzecVar.zzzg);
            }
        }
        if (zzecVar.versionCode >= 6 && zzecVar.zzzh != null) {
            hashMap.put("request_pkg", zzecVar.zzzh);
        }
        if (zzecVar.versionCode >= 7) {
            hashMap.put("is_designed_for_families", Boolean.valueOf(zzecVar.zzzi));
        }
    }

    private static void zza(HashMap<String, Object> hashMap, zzfp zzfpVar) {
        String str;
        String str2 = null;
        if (Color.alpha(zzfpVar.zzAH) != 0) {
            hashMap.put("acolor", zzab(zzfpVar.zzAH));
        }
        if (Color.alpha(zzfpVar.backgroundColor) != 0) {
            hashMap.put("bgcolor", zzab(zzfpVar.backgroundColor));
        }
        if (Color.alpha(zzfpVar.zzAI) != 0 && Color.alpha(zzfpVar.zzAJ) != 0) {
            hashMap.put("gradientto", zzab(zzfpVar.zzAI));
            hashMap.put("gradientfrom", zzab(zzfpVar.zzAJ));
        }
        if (Color.alpha(zzfpVar.zzAK) != 0) {
            hashMap.put("bcolor", zzab(zzfpVar.zzAK));
        }
        hashMap.put("bthick", Integer.toString(zzfpVar.zzAL));
        switch (zzfpVar.zzAM) {
            case 0:
                str = "none";
                break;
            case 1:
                str = "dashed";
                break;
            case 2:
                str = "dotted";
                break;
            case 3:
                str = "solid";
                break;
            default:
                str = null;
                break;
        }
        if (str != null) {
            hashMap.put("btype", str);
        }
        switch (zzfpVar.zzAN) {
            case 0:
                str2 = "light";
                break;
            case 1:
                str2 = a.b.MEDIUM;
                break;
            case 2:
                str2 = "dark";
                break;
        }
        if (str2 != null) {
            hashMap.put("callbuttoncolor", str2);
        }
        if (zzfpVar.zzAO != null) {
            hashMap.put("channel", zzfpVar.zzAO);
        }
        if (Color.alpha(zzfpVar.zzAP) != 0) {
            hashMap.put("dcolor", zzab(zzfpVar.zzAP));
        }
        if (zzfpVar.zzAQ != null) {
            hashMap.put("font", zzfpVar.zzAQ);
        }
        if (Color.alpha(zzfpVar.zzAR) != 0) {
            hashMap.put("hcolor", zzab(zzfpVar.zzAR));
        }
        hashMap.put("headersize", Integer.toString(zzfpVar.zzAS));
        if (zzfpVar.zzAT != null) {
            hashMap.put("q", zzfpVar.zzAT);
        }
    }

    private static void zza(HashMap<String, Object> hashMap, zzmk zzmkVar) {
        boolean z = true;
        String str = zzmkVar.zzvr.zzzy;
        boolean z2 = str.equals("interstitial_mb") || str.equals("reward_mb");
        Bundle bundle = zzmkVar.zzSd;
        if (bundle == null) {
            z = false;
        }
        if (!z2 || !z) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBundle("interstitial_pool", bundle);
        hashMap.put("counters", bundle2);
    }

    private static void zza(HashMap<String, Object> hashMap, zzna zznaVar, Context context) {
        Bundle bundle = new Bundle();
        bundle.putString("doritos", zznaVar.zzTh);
        if (zzgd.zzCS.get().booleanValue()) {
            String str = null;
            boolean z = false;
            if (zznaVar.zzpR != null) {
                str = zznaVar.zzpR.getId();
                z = zznaVar.zzpR.isLimitAdTrackingEnabled();
            }
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("rdid", str);
                bundle.putBoolean("is_lat", z);
                bundle.putString("idtype", "adid");
            } else {
                bundle.putString("pdid", zzel.zzeT().zzae(context));
                bundle.putString("pdidtype", "ssaid");
            }
        }
        hashMap.put("pii", bundle);
    }

    private static void zza(HashMap<String, Object> hashMap, zzni zzniVar, zznm.zza zzaVar, Bundle bundle, Bundle bundle2) {
        hashMap.put(AnalyticsSQLiteHelper.EVENT_LIST_AM, Integer.valueOf(zzniVar.zzUE));
        hashMap.put("cog", zzB(zzniVar.zzUF));
        hashMap.put("coh", zzB(zzniVar.zzUG));
        if (!TextUtils.isEmpty(zzniVar.zzUH)) {
            hashMap.put("carrier", zzniVar.zzUH);
        }
        hashMap.put("gl", zzniVar.zzUI);
        if (zzniVar.zzUJ) {
            hashMap.put("simulator", 1);
        }
        if (zzniVar.zzUK) {
            hashMap.put("is_sidewinder", 1);
        }
        hashMap.put("ma", zzB(zzniVar.zzUL));
        hashMap.put("sp", zzB(zzniVar.zzUM));
        hashMap.put("hl", zzniVar.zzUN);
        if (!TextUtils.isEmpty(zzniVar.zzUO)) {
            hashMap.put("mv", zzniVar.zzUO);
        }
        hashMap.put("muv", Integer.valueOf(zzniVar.zzUP));
        if (zzniVar.zzUQ != -2) {
            hashMap.put("cnt", Integer.valueOf(zzniVar.zzUQ));
        }
        hashMap.put("gnt", Integer.valueOf(zzniVar.zzUR));
        hashMap.put("pt", Integer.valueOf(zzniVar.zzUS));
        hashMap.put("rm", Integer.valueOf(zzniVar.zzUT));
        hashMap.put("riv", Integer.valueOf(zzniVar.zzUU));
        Bundle bundle3 = new Bundle();
        bundle3.putString("build", zzniVar.zzUZ);
        Bundle bundle4 = new Bundle();
        bundle4.putBoolean("is_charging", zzniVar.zzUW);
        bundle4.putDouble("battery_level", zzniVar.zzUV);
        bundle3.putBundle("battery", bundle4);
        Bundle bundle5 = new Bundle();
        bundle5.putInt("active_network_state", zzniVar.zzUY);
        bundle5.putBoolean("active_network_metered", zzniVar.zzUX);
        if (zzaVar != null) {
            Bundle bundle6 = new Bundle();
            bundle6.putInt("predicted_latency_micros", zzaVar.zzVf);
            bundle6.putLong("predicted_down_throughput_bps", zzaVar.zzVg);
            bundle6.putLong("predicted_up_throughput_bps", zzaVar.zzVh);
            bundle5.putBundle("predictions", bundle6);
        }
        bundle3.putBundle("network", bundle5);
        Bundle bundle7 = new Bundle();
        bundle7.putBoolean("is_browser_custom_tabs_capable", zzniVar.zzVa);
        bundle3.putBundle("browser", bundle7);
        if (bundle != null) {
            bundle3.putBundle("android_mem_info", zzg(bundle));
        }
        Bundle bundle8 = new Bundle();
        bundle8.putBundle("parental_controls", bundle2);
        bundle3.putBundle("play_store", bundle8);
        hashMap.put("device", bundle3);
    }

    private static String zzab(int i) {
        return String.format(Locale.US, "#%06x", Integer.valueOf(16777215 & i));
    }

    public static JSONObject zzb(zzmn zzmnVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (zzmnVar.zzNJ != null) {
            jSONObject.put("ad_base_url", zzmnVar.zzNJ);
        }
        if (zzmnVar.zzSq != null) {
            jSONObject.put("ad_size", zzmnVar.zzSq);
        }
        jSONObject.put("native", zzmnVar.zzzB);
        if (zzmnVar.zzzB) {
            jSONObject.put("ad_json", zzmnVar.body);
        } else {
            jSONObject.put("ad_html", zzmnVar.body);
        }
        if (zzmnVar.zzSs != null) {
            jSONObject.put("debug_dialog", zzmnVar.zzSs);
        }
        if (zzmnVar.zzSJ != null) {
            jSONObject.put("debug_signals", zzmnVar.zzSJ);
        }
        if (zzmnVar.zzSm != -1) {
            jSONObject.put("interstitial_timeout", zzmnVar.zzSm / 1000.0d);
        }
        if (zzmnVar.orientation == com.google.android.gms.ads.internal.zzw.zzcO().zzkR()) {
            jSONObject.put("orientation", "portrait");
        } else if (zzmnVar.orientation == com.google.android.gms.ads.internal.zzw.zzcO().zzkQ()) {
            jSONObject.put("orientation", "landscape");
        }
        if (zzmnVar.zzKF != null) {
            jSONObject.put("click_urls", zzl(zzmnVar.zzKF));
        }
        if (zzmnVar.zzKG != null) {
            jSONObject.put("impression_urls", zzl(zzmnVar.zzKG));
        }
        if (zzmnVar.zzSp != null) {
            jSONObject.put("manual_impression_urls", zzl(zzmnVar.zzSp));
        }
        if (zzmnVar.zzSv != null) {
            jSONObject.put("active_view", zzmnVar.zzSv);
        }
        jSONObject.put("ad_is_javascript", zzmnVar.zzSt);
        if (zzmnVar.zzSu != null) {
            jSONObject.put("ad_passback_url", zzmnVar.zzSu);
        }
        jSONObject.put("mediation", zzmnVar.zzSn);
        jSONObject.put("custom_render_allowed", zzmnVar.zzSw);
        jSONObject.put("content_url_opted_out", zzmnVar.zzSx);
        jSONObject.put("content_vertical_opted_out", zzmnVar.zzSK);
        jSONObject.put("prefetch", zzmnVar.zzSy);
        if (zzmnVar.zzKL != -1) {
            jSONObject.put("refresh_interval_milliseconds", zzmnVar.zzKL);
        }
        if (zzmnVar.zzSo != -1) {
            jSONObject.put("mediation_config_cache_time_milliseconds", zzmnVar.zzSo);
        }
        if (!TextUtils.isEmpty(zzmnVar.zzSB)) {
            jSONObject.put("gws_query_id", zzmnVar.zzSB);
        }
        jSONObject.put("fluid", zzmnVar.zzzC ? "height" : "");
        jSONObject.put("native_express", zzmnVar.zzzD);
        if (zzmnVar.zzSD != null) {
            jSONObject.put("video_start_urls", zzl(zzmnVar.zzSD));
        }
        if (zzmnVar.zzSE != null) {
            jSONObject.put("video_complete_urls", zzl(zzmnVar.zzSE));
        }
        if (zzmnVar.zzSC != null) {
            jSONObject.put("rewards", zzmnVar.zzSC.zzjP());
        }
        jSONObject.put("use_displayed_impression", zzmnVar.zzSF);
        jSONObject.put("auto_protection_configuration", zzmnVar.zzSG);
        jSONObject.put("render_in_browser", zzmnVar.zzKJ);
        return jSONObject;
    }

    private static String zzc(zzhc zzhcVar) {
        switch (zzhcVar != null ? zzhcVar.zzHb : 0) {
            case 1:
                return "portrait";
            case 2:
                return "landscape";
            default:
                return "any";
        }
    }

    private static Bundle zzg(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("runtime_free", Long.toString(bundle.getLong("runtime_free_memory", -1L)));
        bundle2.putString("runtime_max", Long.toString(bundle.getLong("runtime_max_memory", -1L)));
        bundle2.putString("runtime_total", Long.toString(bundle.getLong("runtime_total_memory", -1L)));
        bundle2.putString("web_view_count", Integer.toString(bundle.getInt("web_view_count", 0)));
        Debug.MemoryInfo memoryInfo = (Debug.MemoryInfo) bundle.getParcelable("debug_memory_info");
        if (memoryInfo != null) {
            bundle2.putString("debug_info_dalvik_private_dirty", Integer.toString(memoryInfo.dalvikPrivateDirty));
            bundle2.putString("debug_info_dalvik_pss", Integer.toString(memoryInfo.dalvikPss));
            bundle2.putString("debug_info_dalvik_shared_dirty", Integer.toString(memoryInfo.dalvikSharedDirty));
            bundle2.putString("debug_info_native_private_dirty", Integer.toString(memoryInfo.nativePrivateDirty));
            bundle2.putString("debug_info_native_pss", Integer.toString(memoryInfo.nativePss));
            bundle2.putString("debug_info_native_shared_dirty", Integer.toString(memoryInfo.nativeSharedDirty));
            bundle2.putString("debug_info_other_private_dirty", Integer.toString(memoryInfo.otherPrivateDirty));
            bundle2.putString("debug_info_other_pss", Integer.toString(memoryInfo.otherPss));
            bundle2.putString("debug_info_other_shared_dirty", Integer.toString(memoryInfo.otherSharedDirty));
        }
        return bundle2;
    }

    static JSONArray zzl(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
            jSONArray.put(str);
        }
        return jSONArray;
    }
}
