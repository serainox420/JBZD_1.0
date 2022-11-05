package com.applovin.impl.sdk;

import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdType;
import java.io.File;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cw extends bw implements dh {

    /* renamed from: a  reason: collision with root package name */
    private final Collection f1645a;
    private final JSONObject b;
    private final AppLovinAdLoadListener c;
    private final z d;
    private boolean i;
    private c j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cw(JSONObject jSONObject, AppLovinAdLoadListener appLovinAdLoadListener, AppLovinSdkImpl appLovinSdkImpl) {
        super("RenderAd", appLovinSdkImpl);
        this.j = new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR);
        this.b = jSONObject;
        this.c = appLovinAdLoadListener;
        this.f1645a = d();
        this.d = appLovinSdkImpl.getFileManager();
    }

    private float a(String str, AppLovinAdType appLovinAdType, int i) {
        if (appLovinAdType.equals(AppLovinAdType.INCENTIVIZED)) {
            return 0.5f;
        }
        if (appLovinAdType.equals(AppLovinAdType.REGULAR) && str != null && i == -1) {
            return 0.5f;
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    private com.applovin.impl.adview.v a(int i) {
        return i == 1 ? com.applovin.impl.adview.v.WhiteXOnTransparentGrey : com.applovin.impl.adview.v.WhiteXOnOpaqueBlack;
    }

    private com.applovin.impl.adview.v a(String str) {
        return str != null ? com.applovin.impl.adview.v.WhiteXOnTransparentGrey : com.applovin.impl.adview.v.WhiteXOnOpaqueBlack;
    }

    private String a(String str, String str2) {
        File a2 = this.d.a(str2.replace("/", io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR), this.f.getApplicationContext(), true);
        if (a2 == null) {
            return null;
        }
        if (a2.exists()) {
            this.g.d(this.e, "Loaded " + str2 + " from cache: file://" + a2.getAbsolutePath());
            return "file://" + a2.getAbsolutePath();
        }
        if (!this.d.a(a2, str + str2)) {
            return null;
        }
        return "file://" + a2.getAbsolutePath();
    }

    private void a(JSONObject jSONObject) {
        int i;
        int i2;
        float a2;
        com.applovin.impl.adview.v a3;
        String str;
        String str2;
        String string = jSONObject.getString(AdType.HTML);
        AppLovinAdSize fromString = jSONObject.has("size") ? AppLovinAdSize.fromString(jSONObject.getString("size")) : AppLovinAdSize.BANNER;
        String str3 = null;
        if (string == null || string.length() <= 0) {
            this.g.e(this.e, "No HTML received for requested ad");
            c();
            return;
        }
        String b = b(string);
        AppLovinAdImpl.AdTarget valueOf = jSONObject.has("ad_target") ? AppLovinAdImpl.AdTarget.valueOf(jSONObject.getString("ad_target").toUpperCase(Locale.ENGLISH)) : AppLovinAdImpl.AdTarget.DEFAULT;
        AppLovinAdType fromString2 = jSONObject.has("ad_type") ? AppLovinAdType.fromString(jSONObject.getString("ad_type").toUpperCase(Locale.ENGLISH)) : AppLovinAdType.REGULAR;
        this.j = new c(fromString, fromString2);
        if (jSONObject.has(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
            String string2 = jSONObject.getString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            if (string2 == null || string2.isEmpty()) {
                str2 = null;
            } else {
                try {
                    str3 = this.d.a(this.h, string2);
                    this.i = true;
                    str2 = str3;
                } catch (Exception e) {
                    str2 = str3;
                }
            }
            if (str2 == null) {
                c();
                return;
            }
            str3 = str2;
        }
        long j = -1;
        if (jSONObject.has("ad_id")) {
            j = jSONObject.getLong("ad_id");
        }
        if (jSONObject.has("countdown_length")) {
            try {
                i = jSONObject.getInt("countdown_length");
            } catch (JSONException e2) {
                i = 0;
            }
        } else {
            i = 0;
        }
        if (jSONObject.has("close_delay")) {
            try {
                i2 = jSONObject.getInt("close_delay");
            } catch (JSONException e3) {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        if (jSONObject.has("close_delay_graphic")) {
            try {
                a2 = jSONObject.getInt("close_delay_graphic");
            } catch (JSONException e4) {
                a2 = a(str3, fromString2, i2);
            }
        } else {
            a2 = a(str3, fromString2, i2);
        }
        if (jSONObject.has("close_style")) {
            try {
                a3 = a(jSONObject.getInt("close_style"));
            } catch (JSONException e5) {
                a3 = a(str3);
            }
        } else {
            a3 = a(str3);
        }
        if (jSONObject.has("clcodes")) {
            try {
                str = ((JSONArray) jSONObject.get("clcodes")).getString(0);
            } catch (JSONException e6) {
                str = "";
            }
        } else {
            str = "";
        }
        String str4 = "";
        if (jSONObject.has("video_end_url")) {
            try {
                str4 = jSONObject.getString("video_end_url");
            } catch (Exception e7) {
            }
        }
        String str5 = "";
        if (jSONObject.has("mute_image")) {
            try {
                str5 = this.f.getFileManager().a(this.h, jSONObject.getString("mute_image"), false);
            } catch (Exception e8) {
            }
        }
        String str6 = "";
        if (jSONObject.has("unmute_image")) {
            try {
                str6 = this.f.getFileManager().a(this.h, jSONObject.getString("unmute_image"), false);
            } catch (Exception e9) {
            }
        }
        String str7 = "";
        if (jSONObject.has("click_tracking_url")) {
            try {
                str7 = jSONObject.getString("click_tracking_url");
            } catch (Exception e10) {
            }
        }
        a(new AppLovinAdImpl.Builder().setHtml(b).setSize(fromString).setType(fromString2).setVideoFilename(str3).setTarget(valueOf).setCloseStyle(a3).setVideoCloseDelay(i2).setCloseDelay(a2).setCountdownLength(i).setCurrentAdIdNumber(j).setClCode(str).setCompletionUrl(str4).setSupplementalClickTrackingUrl(str7).setMuteImageFilename(str5).setUnmuteImageFilename(str6).build());
    }

    private String b(String str) {
        return ((Boolean) this.f.a(bx.B)).booleanValue() ? c(str) : str;
    }

    private String c(String str) {
        String[] split;
        StringBuilder sb = new StringBuilder(str);
        for (String str2 : ((String) this.f.a(bx.C)).split(",")) {
            int i = 0;
            int i2 = 0;
            while (i2 < sb.length() && (i2 = sb.indexOf(str2, i)) != -1) {
                int length = sb.length();
                i = i2;
                while (!this.f1645a.contains(Character.valueOf(sb.charAt(i))) && i < length) {
                    i++;
                }
                if (i <= i2 || i == length) {
                    this.g.d(this.e, "Unable to cache resource; ad HTML is invalid.");
                } else {
                    String a2 = a(str2, sb.substring(str2.length() + i2, i));
                    if (a2 != null) {
                        sb.replace(i2, i, a2);
                    }
                }
            }
        }
        return sb.toString();
    }

    private Collection d() {
        HashSet hashSet = new HashSet();
        for (char c : ((String) this.f.a(bx.ac)).toCharArray()) {
            hashSet.add(Character.valueOf(c));
        }
        hashSet.add('\"');
        return hashSet;
    }

    void a(AppLovinAd appLovinAd) {
        this.f.getLogger().d(a(), "Rendered new ad:" + appLovinAd);
        if (this.c != null) {
            this.c.adReceived(appLovinAd);
        }
    }

    void c() {
        try {
            if (this.c != null) {
                if (this.c instanceof x) {
                    ((x) this.c).a(this.j, -6);
                } else {
                    this.c.failedToReceiveAd(-6);
                }
            }
        } catch (Throwable th) {
            this.g.e(this.e, "Unable process a failure to receive an ad", th);
        }
    }

    @Override // com.applovin.impl.sdk.dh
    public String e() {
        return "tRA";
    }

    @Override // com.applovin.impl.sdk.dh
    public boolean f() {
        return this.i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.d(this.e, "Rendering ad...");
        try {
            a(this.b);
        } catch (IllegalArgumentException e) {
            this.g.e(this.e, "Ad response is not valid", e);
            c();
        } catch (JSONException e2) {
            this.g.e(this.e, "Unable to parse ad service response", e2);
            c();
        } catch (Exception e3) {
            this.g.e(this.e, "Unable to render ad", e3);
            c();
        }
    }
}
