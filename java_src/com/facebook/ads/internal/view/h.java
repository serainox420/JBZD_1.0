package com.facebook.ads.internal.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.view.c;
import com.facebook.ads.internal.view.d;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class h implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2330a = h.class.getSimpleName();
    private final d.a b;
    private final c c;
    private final com.facebook.ads.internal.adapters.p d;
    private com.facebook.ads.internal.adapters.o e;
    private long f = System.currentTimeMillis();
    private long g;
    private c.a h;

    public h(final AudienceNetworkActivity audienceNetworkActivity, d.a aVar) {
        this.b = aVar;
        this.c = new c(audienceNetworkActivity, new c.b() { // from class: com.facebook.ads.internal.view.h.1
            @Override // com.facebook.ads.internal.view.c.b
            public void a() {
                h.this.d.b();
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(int i) {
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(String str, Map<String, String> map) {
                Uri parse = Uri.parse(str);
                if ("fbad".equals(parse.getScheme()) && "close".equals(parse.getAuthority())) {
                    audienceNetworkActivity.finish();
                    return;
                }
                if ("fbad".equals(parse.getScheme()) && com.facebook.ads.internal.a.b.a(parse.getAuthority())) {
                    h.this.b.a("com.facebook.ads.interstitial.clicked");
                }
                com.facebook.ads.internal.a.a a2 = com.facebook.ads.internal.a.b.a(audienceNetworkActivity, h.this.e.B(), parse, map);
                if (a2 == null) {
                    return;
                }
                try {
                    h.this.h = a2.a();
                    h.this.g = System.currentTimeMillis();
                    a2.b();
                } catch (Exception e) {
                    Log.e(h.f2330a, "Error executing action", e);
                }
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void b() {
                h.this.d.a();
            }
        }, 1);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.d = new com.facebook.ads.internal.adapters.p(audienceNetworkActivity, this.c, this.c.getViewabilityChecker(), new com.facebook.ads.internal.adapters.b() { // from class: com.facebook.ads.internal.view.h.2
            @Override // com.facebook.ads.internal.adapters.b
            public void d() {
                h.this.b.a("com.facebook.ads.interstitial.impression.logged");
            }
        });
        this.d.c();
        aVar.a(this.c);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        if (bundle != null && bundle.containsKey("dataModel")) {
            this.e = com.facebook.ads.internal.adapters.o.a(bundle.getBundle("dataModel"));
            if (this.e == null) {
                return;
            }
            this.c.loadDataWithBaseURL(com.facebook.ads.internal.util.i.a(), this.e.a(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
            this.c.a(this.e.g(), this.e.h());
            return;
        }
        this.e = com.facebook.ads.internal.adapters.o.b(intent);
        if (this.e == null) {
            return;
        }
        this.d.a(this.e);
        this.c.loadDataWithBaseURL(com.facebook.ads.internal.util.i.a(), this.e.a(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        this.c.a(this.e.g(), this.e.h());
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
        if (this.e != null) {
            bundle.putBundle("dataModel", this.e.i());
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void e() {
        this.c.onPause();
    }

    @Override // com.facebook.ads.internal.view.d
    public void f() {
        if (this.g > 0 && this.h != null && this.e != null) {
            com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(this.g, this.h, this.e.f()));
        }
        this.c.onResume();
    }

    @Override // com.facebook.ads.internal.view.d
    public void g() {
        if (this.e != null) {
            com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(this.f, c.a.XOUT, this.e.f()));
            if (!TextUtils.isEmpty(this.e.B())) {
                HashMap hashMap = new HashMap();
                this.c.getViewabilityChecker().a(hashMap);
                hashMap.put("touch", com.facebook.ads.internal.util.h.a(this.c.getTouchData()));
                com.facebook.ads.internal.g.g.a(this.c.getContext()).f(this.e.B(), hashMap);
            }
        }
        com.facebook.ads.internal.util.i.a(this.c);
        this.c.destroy();
    }
}
