package com.revmob.client;

import android.app.Activity;
import com.facebook.share.internal.ShareConstants;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.revmob.RevMobAdsListener;
import com.revmob.internal.RMLog;
import com.revmob.internal.m;
import com.revmob.internal.u;
import com.revmob.internal.w;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class g extends f {

    /* renamed from: a  reason: collision with root package name */
    private Activity f4791a;
    private boolean b;
    private RevMobAdsListener d;
    private m e;

    public g(Activity activity, boolean z, RevMobAdsListener revMobAdsListener) {
        this.f4791a = activity;
        this.b = z;
        this.d = revMobAdsListener;
    }

    public final m a() {
        return this.e;
    }

    @Override // com.revmob.client.f
    public final void a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray jSONArray = jSONObject.getJSONArray("links");
        com.revmob.internal.c.a(com.revmob.ads.a.b.a(jSONObject, "customUserAgent", com.revmob.internal.c.a()), (Activity) null);
        com.revmob.internal.c.a(com.revmob.ads.a.b.a(jSONObject, "ip_address", com.revmob.internal.c.b()));
        com.revmob.internal.c.c(com.revmob.ads.a.b.a(jSONObject, "eula_version", com.revmob.internal.c.j()), null);
        com.revmob.internal.c.b(com.revmob.ads.a.b.a(jSONObject, "eula_url", com.revmob.internal.c.i()), (Activity) null);
        Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldExtractSocial", Consts.False));
        com.revmob.internal.c.a(Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldExtractGeolocation", Consts.False)));
        Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldExtractOtherAppsData", Consts.False));
        Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldContinueOnBackground", Consts.False));
        com.revmob.internal.c.a(Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "should_show_eula", Consts.False)), (Activity) null);
        com.revmob.internal.c.b(Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldNotify", "downloadCreativesErrors", Consts.False)));
        com.revmob.internal.c.c(Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldNotify", "clickRedirectionErrors", Consts.False)));
        com.revmob.internal.c.d(Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldNotify", "exceptions", Consts.False)));
        com.revmob.internal.c.e(Boolean.parseBoolean(com.revmob.ads.a.b.a(jSONObject, "shouldNotify", "adReceived", Consts.False)));
        RMLog.i("Application startSession: " + this.f4791a.getApplicationContext());
        if (jSONObject.has("maxSessions") && jSONObject.has("maxCampaigns")) {
            com.revmob.a.e.a(jSONObject.getInt("maxSessions"), jSONObject.getInt("maxCampaigns"), jSONObject.getInt("maxImpressions"));
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                String string = jSONArray.getJSONObject(i).getString("rel");
                String string2 = jSONArray.getJSONObject(i).getString(ShareConstants.WEB_DIALOG_PARAM_HREF);
                RevMobClient.a();
                RevMobClient.a(string, string2);
            } catch (JSONException e) {
                u.a(e, null, w.c, null, "handleResponse");
            }
        }
        if (this.b) {
            RevMobClient.a().a(com.revmob.a.e.a(), new c(this.f4791a));
        }
        this.f4791a.runOnUiThread(new h(this));
    }

    @Override // com.revmob.client.f
    public final void b(String str) {
        RMLog.d(str);
    }
}
