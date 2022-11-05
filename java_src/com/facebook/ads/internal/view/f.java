package com.facebook.ads.internal.view;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.l;
import com.facebook.ads.internal.view.a.a;
import com.facebook.ads.internal.view.a.d;
import com.facebook.ads.internal.view.d;
@TargetApi(19)
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2325a = f.class.getSimpleName();
    private final AudienceNetworkActivity b;
    private final com.facebook.ads.internal.view.a.a c;
    private final com.facebook.ads.internal.view.a.d d;
    private final com.facebook.ads.internal.view.a.b e;
    private String g;
    private String h;
    private long i;
    private final AudienceNetworkActivity.BackButtonInterceptor f = new AudienceNetworkActivity.BackButtonInterceptor() { // from class: com.facebook.ads.internal.view.f.1
        @Override // com.facebook.ads.AudienceNetworkActivity.BackButtonInterceptor
        public boolean interceptBackButton() {
            if (f.this.d.canGoBack()) {
                f.this.d.goBack();
                return true;
            }
            return false;
        }
    };
    private boolean j = true;
    private long k = -1;
    private boolean l = true;

    public f(final AudienceNetworkActivity audienceNetworkActivity, d.a aVar) {
        this.b = audienceNetworkActivity;
        this.c = new com.facebook.ads.internal.view.a.a(audienceNetworkActivity);
        this.c.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        this.c.setLayoutParams(layoutParams);
        this.c.setListener(new a.InterfaceC0101a() { // from class: com.facebook.ads.internal.view.f.2
            @Override // com.facebook.ads.internal.view.a.a.InterfaceC0101a
            public void a() {
                audienceNetworkActivity.finish();
            }
        });
        aVar.a(this.c);
        this.d = new com.facebook.ads.internal.view.a.d(audienceNetworkActivity);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.c.getId());
        layoutParams2.addRule(12);
        this.d.setLayoutParams(layoutParams2);
        this.d.setListener(new d.a() { // from class: com.facebook.ads.internal.view.f.3
            @Override // com.facebook.ads.internal.view.a.d.a
            public void a(int i) {
                if (f.this.j) {
                    f.this.e.setProgress(i);
                }
            }

            @Override // com.facebook.ads.internal.view.a.d.a
            public void a(String str) {
                f.this.j = true;
                f.this.c.setUrl(str);
            }

            @Override // com.facebook.ads.internal.view.a.d.a
            public void b(String str) {
                f.this.c.setTitle(str);
            }

            @Override // com.facebook.ads.internal.view.a.d.a
            public void c(String str) {
                f.this.e.setProgress(100);
                f.this.j = false;
            }
        });
        aVar.a(this.d);
        this.e = new com.facebook.ads.internal.view.a.b(audienceNetworkActivity, null, 16842872);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) (2.0f * audienceNetworkActivity.getResources().getDisplayMetrics().density));
        layoutParams3.addRule(3, this.c.getId());
        this.e.setLayoutParams(layoutParams3);
        this.e.setProgress(0);
        aVar.a(this.e);
        audienceNetworkActivity.addBackButtonInterceptor(this.f);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        if (this.k < 0) {
            this.k = System.currentTimeMillis();
        }
        if (bundle == null) {
            this.g = intent.getStringExtra(AudienceNetworkActivity.BROWSER_URL);
            this.h = intent.getStringExtra(AudienceNetworkActivity.CLIENT_TOKEN);
            this.i = intent.getLongExtra(AudienceNetworkActivity.HANDLER_TIME, -1L);
        } else {
            this.g = bundle.getString(AudienceNetworkActivity.BROWSER_URL);
            this.h = bundle.getString(AudienceNetworkActivity.CLIENT_TOKEN);
            this.i = bundle.getLong(AudienceNetworkActivity.HANDLER_TIME, -1L);
        }
        this.d.loadUrl(this.g != null ? this.g : "about:blank");
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
        bundle.putString(AudienceNetworkActivity.BROWSER_URL, this.g);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void e() {
        this.d.onPause();
        if (this.l) {
            this.l = false;
            com.facebook.ads.internal.g.g.a(this.b).a(this.h, new l.a(this.d.getFirstUrl()).a(this.i).b(this.k).c(this.d.getResponseEndMs()).d(this.d.getDomContentLoadedMs()).e(this.d.getScrollReadyMs()).f(this.d.getLoadFinishMs()).g(System.currentTimeMillis()).a());
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void f() {
        this.d.onResume();
    }

    @Override // com.facebook.ads.internal.view.d
    public void g() {
        this.b.removeBackButtonInterceptor(this.f);
        com.facebook.ads.internal.util.i.a(this.d);
        this.d.destroy();
    }
}
