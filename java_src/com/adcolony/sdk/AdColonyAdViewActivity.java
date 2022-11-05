package com.adcolony.sdk;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ViewGroup;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyAdViewActivity extends b {
    ax l;
    boolean m;

    public AdColonyAdViewActivity() {
        this.l = a.m == null ? null : a.m.r;
        this.m = this.l instanceof AdColonyNativeAdView;
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
        this.d = this.l == null ? 0 : this.l.p;
        super.onCreate(bundle);
        a.m.x = true;
        if (this.l.c != null && (this.l.c instanceof AdColonyNativeAdViewListener)) {
            ((AdColonyNativeAdViewListener) this.l.c).onOpened((AdColonyNativeAdView) this.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.adcolony.sdk.b
    public void a(z zVar) {
        super.a(zVar);
        if (this.l.b != null) {
            JSONObject f = s.f(zVar.b, "v4iap");
            JSONArray g = s.g(f, "product_ids");
            if (this.l.c != null) {
                if (this.m) {
                    ((AdColonyNativeAdViewListener) this.l.c).onClosed((AdColonyNativeAdView) this.l);
                    AdColonyPubServices.onAdClosed();
                    if (f != null && g.length() > 0) {
                        ((AdColonyNativeAdViewListener) this.l.c).onIAPEvent((AdColonyNativeAdView) this.l, s.b(g, 0), s.c(f, "engagement_type"));
                    }
                } else {
                    ((ay) this.l.c).c(this.l);
                    AdColonyPubServices.onAdClosed();
                    if (f != null && g.length() > 0) {
                        ((ay) this.l.c).a(this.l, s.b(g, 0), s.c(f, "engagement_type"));
                    }
                }
            }
            ((ViewGroup) this.l.b.getParent()).removeView(this.l.b);
            a.m.g.a(this.l.b);
            this.l.b = null;
            System.gc();
        }
    }
}
