package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import com.facebook.internal.NativeProtocol;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzic {
    public static final zzid zzHD = new zzid() { // from class: com.google.android.gms.internal.zzic.1
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
        }
    };
    public static final zzid zzHE = new zzid() { // from class: com.google.android.gms.internal.zzic.9
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            String str = map.get("urls");
            if (TextUtils.isEmpty(str)) {
                zzpk.zzbh("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] split = str.split(",");
            HashMap hashMap = new HashMap();
            PackageManager packageManager = zzqwVar.getContext().getPackageManager();
            for (String str2 : split) {
                String[] split2 = str2.split(";", 2);
                hashMap.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) != null));
            }
            zzqwVar.zza("openableURLs", hashMap);
        }
    };
    public static final zzid zzHF = new zzid() { // from class: com.google.android.gms.internal.zzic.10
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            PackageManager packageManager = zzqwVar.getContext().getPackageManager();
            try {
                try {
                    JSONArray jSONArray = new JSONObject(map.get("data")).getJSONArray("intents");
                    JSONObject jSONObject = new JSONObject();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("id");
                            String optString2 = jSONObject2.optString("u");
                            String optString3 = jSONObject2.optString("i");
                            String optString4 = jSONObject2.optString("m");
                            String optString5 = jSONObject2.optString("p");
                            String optString6 = jSONObject2.optString("c");
                            jSONObject2.optString("f");
                            jSONObject2.optString("e");
                            Intent intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                            try {
                                jSONObject.put(optString, packageManager.resolveActivity(intent, 65536) != null);
                            } catch (JSONException e) {
                                zzpk.zzb("Error constructing openable urls response.", e);
                            }
                        } catch (JSONException e2) {
                            zzpk.zzb("Error parsing the intent data.", e2);
                        }
                    }
                    zzqwVar.zzb("openableIntents", jSONObject);
                } catch (JSONException e3) {
                    zzqwVar.zzb("openableIntents", new JSONObject());
                }
            } catch (JSONException e4) {
                zzqwVar.zzb("openableIntents", new JSONObject());
            }
        }
    };
    public static final zzid zzHG = new zzid() { // from class: com.google.android.gms.internal.zzic.11
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            Uri uri;
            zzaw zzlx;
            String str = map.get("u");
            if (str == null) {
                zzpk.zzbh("URL missing from click GMSG.");
                return;
            }
            Uri parse = Uri.parse(str);
            try {
                zzlx = zzqwVar.zzlx();
            } catch (zzax e) {
                String valueOf = String.valueOf(str);
                zzpk.zzbh(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
            }
            if (zzlx != null && zzlx.zzc(parse)) {
                uri = zzlx.zza(parse, zzqwVar.getContext(), zzqwVar.getView());
                if (com.google.android.gms.ads.internal.zzw.zzdl().zzjU() && TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                    String zzF = com.google.android.gms.ads.internal.zzw.zzdl().zzF(zzqwVar.getContext());
                    uri = com.google.android.gms.ads.internal.zzw.zzcM().zza(uri, "fbs_aeid", zzF);
                    com.google.android.gms.ads.internal.zzw.zzdl().zzf(zzqwVar.getContext(), zzF);
                }
                new zzpy(zzqwVar.getContext(), zzqwVar.zzly().zzba, uri.toString()).zziP();
            }
            uri = parse;
            if (com.google.android.gms.ads.internal.zzw.zzdl().zzjU()) {
                String zzF2 = com.google.android.gms.ads.internal.zzw.zzdl().zzF(zzqwVar.getContext());
                uri = com.google.android.gms.ads.internal.zzw.zzcM().zza(uri, "fbs_aeid", zzF2);
                com.google.android.gms.ads.internal.zzw.zzdl().zzf(zzqwVar.getContext(), zzF2);
            }
            new zzpy(zzqwVar.getContext(), zzqwVar.zzly().zzba, uri.toString()).zziP();
        }
    };
    public static final zzid zzHH = new zzid() { // from class: com.google.android.gms.internal.zzic.12
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            com.google.android.gms.ads.internal.overlay.zze zzlt = zzqwVar.zzlt();
            if (zzlt != null) {
                zzlt.close();
                return;
            }
            com.google.android.gms.ads.internal.overlay.zze zzlu = zzqwVar.zzlu();
            if (zzlu != null) {
                zzlu.close();
            } else {
                zzpk.zzbh("A GMSG tried to close something that wasn't an overlay.");
            }
        }
    };
    public static final zzid zzHI = new zzid() { // from class: com.google.android.gms.internal.zzic.13
        private void zzd(zzqw zzqwVar) {
            zzpk.zzbg("Received support message, responding.");
            com.google.android.gms.ads.internal.zze zzby = zzqwVar.zzby();
            if (zzby != null && zzby.zzsO != null) {
                zzqwVar.getContext();
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("event", "checkSupport");
                jSONObject.put("supports", false);
                zzqwVar.zzb("appStreaming", jSONObject);
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "DefaultGmsgHandlers.processCheckSupportsMessage");
            }
        }

        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if ("checkSupport".equals(map.get(NativeProtocol.WEB_DIALOG_ACTION))) {
                zzd(zzqwVar);
                return;
            }
            com.google.android.gms.ads.internal.overlay.zze zzlt = zzqwVar.zzlt();
            if (zzlt == null) {
                return;
            }
            zzlt.zzg(zzqwVar, map);
        }
    };
    public static final zzid zzHJ = new zzid() { // from class: com.google.android.gms.internal.zzic.14
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            zzqwVar.zzL("1".equals(map.get("custom_close")));
        }
    };
    public static final zzid zzHK = new zzid() { // from class: com.google.android.gms.internal.zzic.15
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            String str = map.get("u");
            if (str == null) {
                zzpk.zzbh("URL missing from httpTrack GMSG.");
            } else {
                new zzpy(zzqwVar.getContext(), zzqwVar.zzly().zzba, str).zziP();
            }
        }
    };
    public static final zzid zzHL = new zzid() { // from class: com.google.android.gms.internal.zzic.16
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            String valueOf = String.valueOf(map.get("string"));
            zzpk.zzbg(valueOf.length() != 0 ? "Received log message: ".concat(valueOf) : new String("Received log message: "));
        }
    };
    public static final zzid zzHM = new zzid() { // from class: com.google.android.gms.internal.zzic.2
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            zzgy zzlL = zzqwVar.zzlL();
            if (zzlL != null) {
                zzlL.zzfX();
            }
        }
    };
    public static final zzid zzHN = new zzid() { // from class: com.google.android.gms.internal.zzic.3
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            String str = map.get("tx");
            String str2 = map.get("ty");
            String str3 = map.get("td");
            try {
                int parseInt = Integer.parseInt(str);
                int parseInt2 = Integer.parseInt(str2);
                int parseInt3 = Integer.parseInt(str3);
                zzaw zzlx = zzqwVar.zzlx();
                if (zzlx == null) {
                    return;
                }
                zzlx.zzT().zza(parseInt, parseInt2, parseInt3);
            } catch (NumberFormatException e) {
                zzpk.zzbh("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final zzid zzHO = new zzid() { // from class: com.google.android.gms.internal.zzic.4
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (!zzgd.zzDD.get().booleanValue()) {
                return;
            }
            zzqwVar.zzM(!Boolean.parseBoolean(map.get("disabled")));
        }
    };
    public static final zzid zzHP = new zzid() { // from class: com.google.android.gms.internal.zzic.5
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            String str = map.get(NativeProtocol.WEB_DIALOG_ACTION);
            if (SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE.equals(str)) {
                zzqwVar.zzbV();
            } else if (!SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME.equals(str)) {
            } else {
                zzqwVar.zzbW();
            }
        }
    };
    public static final zzid zzHQ = new zzio();
    public static final zzid zzHR = new zzip();
    public static final zzid zzHS = new zzij();
    public static final zzid zzHT = new zzit();
    public static final zzid zzHU = new zzib();
    public static final zzim zzHV = new zzim();
    public static final zzid zzHW = new zzid() { // from class: com.google.android.gms.internal.zzic.6
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (map.keySet().contains(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                zzqwVar.zzlv().zzlU();
            } else if (map.keySet().contains("stop")) {
                zzqwVar.zzlv().zzlV();
            } else if (!map.keySet().contains("cancel")) {
            } else {
                zzqwVar.zzlv().zzlW();
            }
        }
    };
    public static final zzid zzHX = new zzid() { // from class: com.google.android.gms.internal.zzic.7
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (map.keySet().contains(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                zzqwVar.zzN(true);
            }
            if (map.keySet().contains("stop")) {
                zzqwVar.zzN(false);
            }
        }
    };
    public static final zzid zzHY = new zzid() { // from class: com.google.android.gms.internal.zzic.8
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            zzqwVar.zza("locationReady", com.google.android.gms.ads.internal.zzw.zzcM().zza((View) zzqwVar, (WindowManager) zzqwVar.getContext().getSystemService("window")));
            zzpk.zzbh("GET LOCATION COMPILED");
        }
    };
}
