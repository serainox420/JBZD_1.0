package com.adcolony.sdk;

import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyInterstitialActivity extends b {
    AdColonyInterstitial l;

    public AdColonyInterstitialActivity() {
        this.l = a.m == null ? null : a.m.s;
    }

    @Override // com.adcolony.sdk.b, android.app.Activity
    public /* bridge */ /* synthetic */ void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.adcolony.sdk.b, android.app.Activity, android.content.ComponentCallbacks
    public /* bridge */ /* synthetic */ void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.adcolony.sdk.b, android.app.Activity
    public /* bridge */ /* synthetic */ void onDestroy() {
        super.onDestroy();
    }

    @Override // com.adcolony.sdk.b, android.app.Activity
    public /* bridge */ /* synthetic */ void onPause() {
        super.onPause();
    }

    @Override // com.adcolony.sdk.b, android.app.Activity
    public /* bridge */ /* synthetic */ void onResume() {
        super.onResume();
    }

    @Override // com.adcolony.sdk.b, android.app.Activity, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    @Override // com.adcolony.sdk.b, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.d = this.l == null ? 0 : this.l.d;
        super.onCreate(bundle);
        if (a.m != null && a.m.q != null && this.l.f980a != null) {
            this.l.f980a.onOpened(this.l);
            AdColonyPubServices.onAdOpened();
        }
    }

    @Override // com.adcolony.sdk.b
    void a(z zVar) {
        super.a(zVar);
        f remove = a.m.g.f.remove(this.e);
        if (remove != null) {
            for (MediaPlayer mediaPlayer : remove.c.c.values()) {
                if (mediaPlayer.isPlaying()) {
                    mediaPlayer.stop();
                }
                mediaPlayer.release();
            }
            remove.b.i.autoPause();
            remove.b.i.release();
        }
        JSONObject f = s.f(zVar.b, "v4iap");
        JSONArray g = s.g(f, "product_ids");
        if (f != null && this.l != null && this.l.f980a != null && g.length() > 0) {
            this.l.f980a.onIAPEvent(this.l, s.b(g, 0), s.c(f, "engagement_type"));
        }
        a.m.g.a(this.c);
        if (this.l != null) {
            a.m.g.b.remove(this.l.e);
        }
        if (this.l != null && this.l.f980a != null) {
            this.l.f980a.onClosed(this.l);
            AdColonyPubServices.onAdClosed();
            this.l.b = null;
            this.l.f980a = null;
            this.l = null;
        }
        u.d.b("finish_ad call finished");
        System.gc();
    }
}
