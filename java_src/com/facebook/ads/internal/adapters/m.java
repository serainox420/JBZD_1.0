package com.facebook.ads.internal.adapters;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class m extends x {
    private y b;
    private Context c;
    private boolean d = false;
    private String e = UUID.randomUUID().toString();
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private z p;

    private void c() {
        android.support.v4.content.l.a(this.c).a(this.p, this.p.a());
    }

    private void d() {
        if (this.p != null) {
            try {
                android.support.v4.content.l.a(this.c).a(this.p);
            } catch (Exception e) {
            }
        }
    }

    private String e() {
        if (this.f2111a != null) {
            String urlPrefix = AdSettings.getUrlPrefix();
            Uri parse = Uri.parse((urlPrefix == null || urlPrefix.isEmpty()) ? "https://www.facebook.com/audience_network/server_side_reward" : String.format("https://www.%s.facebook.com/audience_network/server_side_reward", urlPrefix));
            Uri.Builder builder = new Uri.Builder();
            builder.scheme(parse.getScheme());
            builder.authority(parse.getAuthority());
            builder.path(parse.getPath());
            builder.query(parse.getQuery());
            builder.fragment(parse.getFragment());
            builder.appendQueryParameter("puid", this.f2111a.getUserID());
            builder.appendQueryParameter("pc", this.f2111a.getCurrency());
            builder.appendQueryParameter("ptid", this.e);
            builder.appendQueryParameter(AdDatabaseHelper.COLUMN_APPID, this.m);
            return builder.build().toString();
        }
        return null;
    }

    private String f() {
        return this.n;
    }

    @Override // com.facebook.ads.internal.adapters.x
    public String a() {
        return this.f;
    }

    @Override // com.facebook.ads.internal.adapters.x
    public void a(Context context, y yVar, Map<String, Object> map) {
        this.b = yVar;
        this.c = context;
        this.d = false;
        JSONObject jSONObject = (JSONObject) map.get("data");
        this.f = jSONObject.optString(BaseVideoPlayerActivity.VIDEO_URL);
        if (this.f == null || this.f.isEmpty()) {
            this.b.a(this, AdError.INTERNAL_ERROR);
            return;
        }
        this.g = jSONObject.optString("video_play_report_url");
        this.h = jSONObject.optString("video_time_report_url");
        this.i = jSONObject.optString("impression_report_url");
        this.j = jSONObject.optString("close_report_url");
        this.o = jSONObject.optString("ct");
        this.k = jSONObject.optString("end_card_markup");
        this.l = jSONObject.optString("activation_command");
        this.n = jSONObject.optString("context_switch", "endvideo");
        String str = (String) map.get("placement_id");
        if (str != null) {
            this.m = str.split(io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR)[0];
        } else {
            this.m = "";
        }
        this.p = new z(this.e, this, yVar);
        c();
        this.d = true;
        this.b.a(this);
    }

    @Override // com.facebook.ads.internal.adapters.x
    public boolean b() {
        if (!this.d) {
            return false;
        }
        Intent intent = new Intent(this.c, AudienceNetworkActivity.class);
        intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.REWARDED_VIDEO);
        intent.putExtra(AudienceNetworkActivity.VIDEO_URL, this.f);
        intent.putExtra(AudienceNetworkActivity.VIDEO_TIME_REPORT_URL, this.h);
        intent.putExtra(AudienceNetworkActivity.VIDEO_PLAY_REPORT_URL, this.g);
        if (!com.facebook.ads.internal.h.f(this.c)) {
            intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, 6);
        }
        intent.putExtra(AudienceNetworkActivity.END_CARD_ACTIVATION_COMMAND, this.l);
        intent.putExtra(AudienceNetworkActivity.IMPRESSION_REPORT_URL, this.i);
        intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.e);
        intent.putExtra(AudienceNetworkActivity.END_CARD_MARKUP, this.k);
        intent.putExtra(AudienceNetworkActivity.CLOSE_REPORT_URL, this.j);
        intent.putExtra(AudienceNetworkActivity.CLIENT_TOKEN, this.o);
        intent.putExtra(AudienceNetworkActivity.REWARD_SERVER_URL, e());
        intent.putExtra(AudienceNetworkActivity.CONTEXT_SWITCH_BEHAVIOR, f());
        if (!(this.c instanceof Activity)) {
            intent.setFlags(intent.getFlags() | DriveFile.MODE_READ_ONLY);
        }
        this.c.startActivity(intent);
        return true;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        d();
    }
}
