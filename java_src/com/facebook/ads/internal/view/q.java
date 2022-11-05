package com.facebook.ads.internal.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.ad;
import com.facebook.ads.internal.view.d;
/* loaded from: classes.dex */
public class q implements d {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.ads.internal.view.d.a.e f2357a = new com.facebook.ads.internal.view.d.a.e() { // from class: com.facebook.ads.internal.view.q.1
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.d dVar) {
            q.this.e.finish();
        }
    };
    private final com.facebook.ads.internal.view.d.a.k b = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.q.2
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.j jVar) {
            q.this.g.a("videoInterstitalEvent", jVar);
        }
    };
    private final com.facebook.ads.internal.view.d.a.i c = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.q.3
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.h hVar) {
            q.this.g.a("videoInterstitalEvent", hVar);
        }
    };
    private final com.facebook.ads.internal.view.d.a.c d = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.q.4
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.b bVar) {
            q.this.g.a("videoInterstitalEvent", bVar);
        }
    };
    private final AudienceNetworkActivity e;
    private final m f;
    private final d.a g;
    private ad h;
    private int i;

    public q(AudienceNetworkActivity audienceNetworkActivity, d.a aVar) {
        this.e = audienceNetworkActivity;
        this.f = new m(audienceNetworkActivity);
        this.f.a(new com.facebook.ads.internal.view.d.b.b(audienceNetworkActivity));
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.b);
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2357a);
        this.g = aVar;
        this.f.setIsFullScreen(true);
        this.f.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        this.f.setLayoutParams(layoutParams);
        aVar.a(this.f);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        boolean booleanExtra = intent.getBooleanExtra(AudienceNetworkActivity.AUTOPLAY, false);
        String stringExtra = intent.getStringExtra(AudienceNetworkActivity.VIDEO_URL);
        String stringExtra2 = intent.getStringExtra(AudienceNetworkActivity.VIDEO_MPD);
        Bundle bundleExtra = intent.getBundleExtra(AudienceNetworkActivity.VIDEO_LOGGER);
        String stringExtra3 = intent.getStringExtra(AudienceNetworkActivity.CLIENT_TOKEN);
        String stringExtra4 = intent.getStringExtra(AudienceNetworkActivity.VIDEO_REPORT_URL);
        this.i = intent.getIntExtra(AudienceNetworkActivity.VIDEO_SEEK_TIME, 0);
        this.f.setAutoplay(booleanExtra);
        this.h = new ad(audienceNetworkActivity, com.facebook.ads.internal.g.g.a(audienceNetworkActivity.getApplicationContext()), this.f, stringExtra4, stringExtra3, bundleExtra);
        this.f.setVideoMPD(stringExtra2);
        this.f.setVideoURI(stringExtra);
        if (this.i > 0) {
            this.f.a(this.i);
        }
        this.f.d();
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
    }

    public void a(View view) {
        this.f.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void e() {
        this.g.a("videoInterstitalEvent", new com.facebook.ads.internal.view.d.a.f());
        this.f.e();
    }

    @Override // com.facebook.ads.internal.view.d
    public void f() {
        this.g.a("videoInterstitalEvent", new com.facebook.ads.internal.view.d.a.g());
        this.f.d();
    }

    @Override // com.facebook.ads.internal.view.d
    public void g() {
        this.g.a("videoInterstitalEvent", new com.facebook.ads.internal.view.d.a.o(this.i, this.f.getCurrentPosition()));
        this.h.b(this.f.getCurrentPosition());
        this.f.g();
    }
}
