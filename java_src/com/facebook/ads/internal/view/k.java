package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.util.ah;
import com.facebook.ads.internal.util.w;
import com.facebook.ads.internal.util.z;
import com.facebook.ads.internal.view.d;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class k implements d {

    /* renamed from: a  reason: collision with root package name */
    private com.facebook.ads.internal.j.a f2344a;
    private m b;
    private w c;
    private ah d;
    private d.a e;
    private String f;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> g;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d> h;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l> i;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n> j;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.q> k;
    private String l;
    private final Context m;
    private String n;
    private String o;

    public k(Context context, d.a aVar) {
        this.m = context;
        this.e = aVar;
        k();
    }

    private void k() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.b = new m(this.m);
        this.b.h();
        this.b.setAutoplay(true);
        this.b.setIsFullScreen(true);
        this.b.setLayoutParams(layoutParams);
        this.b.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.k = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.q>() { // from class: com.facebook.ads.internal.view.k.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.q> a() {
                return com.facebook.ads.internal.view.d.a.q.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.q qVar) {
                k.this.d.a(qVar.b(), k.this.b, qVar.a());
            }
        };
        this.g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.view.k.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (k.this.e != null) {
                    k.this.e.a(com.facebook.ads.internal.j.REWARDED_VIDEO_COMPLETE.a(), bVar);
                }
                if (k.this.c != null) {
                    k.this.c.b(k.this.b.getCurrentPosition());
                }
                k.this.i();
            }
        };
        this.h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d>() { // from class: com.facebook.ads.internal.view.k.3
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.d> a() {
                return com.facebook.ads.internal.view.d.a.d.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.d dVar) {
                if (k.this.e != null) {
                    k.this.e.a(com.facebook.ads.internal.j.REWARDED_VIDEO_ERROR.a());
                }
                k.this.i();
            }
        };
        this.i = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l>() { // from class: com.facebook.ads.internal.view.k.4
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.l> a() {
                return com.facebook.ads.internal.view.d.a.l.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                if (k.this.f2344a != null) {
                    k.this.f2344a.a();
                }
            }
        };
        this.j = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.view.k.5
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                if (k.this.b.getState() == com.facebook.ads.internal.view.d.c.d.PREPARING || k.this.c == null) {
                    return;
                }
                k.this.c.a(k.this.b.getCurrentPosition());
            }
        };
        this.b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        this.b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        this.b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
        this.b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.j);
        this.b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.k);
        this.b.a(new com.facebook.ads.internal.view.d.b.i(this.m));
        com.facebook.ads.internal.view.d.b.c cVar = new com.facebook.ads.internal.view.d.b.c(this.m, "", true);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        cVar.setLayoutParams(layoutParams2);
        cVar.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.b.a(cVar);
        this.f2344a = new com.facebook.ads.internal.j.a(this.b, 1, new a.AbstractC0098a() { // from class: com.facebook.ads.internal.view.k.6
            @Override // com.facebook.ads.internal.j.a.AbstractC0098a
            public void a() {
                if (!k.this.d.b()) {
                    k.this.d.a();
                    HashMap hashMap = new HashMap();
                    if (TextUtils.isEmpty(k.this.l)) {
                        new z(hashMap).execute(k.this.a());
                    } else {
                        k.this.f2344a.a(hashMap);
                        hashMap.put("touch", com.facebook.ads.internal.util.h.a(k.this.b()));
                        com.facebook.ads.internal.g.g.a(k.this.m).b(k.this.l, hashMap);
                    }
                    if (k.this.e == null) {
                        return;
                    }
                    k.this.e.a(com.facebook.ads.internal.j.REWARDED_VIDEO_IMPRESSION.a());
                }
            }
        });
        this.f2344a.a(250);
        this.d = new ah();
        this.e.a(this.b);
    }

    public String a() {
        return this.f;
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        String stringExtra = intent.getStringExtra(AudienceNetworkActivity.VIDEO_URL);
        this.f = intent.getStringExtra(AudienceNetworkActivity.IMPRESSION_REPORT_URL);
        this.l = intent.getStringExtra(AudienceNetworkActivity.CLIENT_TOKEN);
        this.o = intent.getStringExtra(AudienceNetworkActivity.CLOSE_REPORT_URL);
        String stringExtra2 = intent.getStringExtra(AudienceNetworkActivity.VIDEO_TIME_REPORT_URL);
        String stringExtra3 = intent.getStringExtra(AudienceNetworkActivity.VIDEO_PLAY_REPORT_URL);
        this.n = intent.getStringExtra(AudienceNetworkActivity.CONTEXT_SWITCH_BEHAVIOR);
        this.c = new w(this.m, this.b, stringExtra2, stringExtra3, this.l);
        String b = com.facebook.ads.internal.c.d.a(this.m).b(stringExtra);
        if (b == null || b.isEmpty()) {
            b = stringExtra;
        }
        if (b != null) {
            this.b.setVideoURI(b);
        }
        this.b.d();
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    public Map<String, String> b() {
        return this.d.e();
    }

    public void c() {
        this.b.a(1);
        this.b.d();
    }

    public void d() {
        this.b.e();
    }

    @Override // com.facebook.ads.internal.view.d
    public void e() {
        d();
    }

    @Override // com.facebook.ads.internal.view.d
    public void f() {
        if (h()) {
            if (this.n.equals("restart")) {
                c();
            } else if (this.n.equals(SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME)) {
                j();
            } else if (this.n.equals(SASNativeVideoAdElement.TRACKING_EVENT_NAME_SKIP)) {
                this.e.a(com.facebook.ads.internal.j.REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD.a(), new com.facebook.ads.internal.view.d.a.b());
                i();
            } else if (!this.n.equals("endvideo")) {
            } else {
                this.e.a(com.facebook.ads.internal.j.REWARDED_VIDEO_END_ACTIVITY.a());
                HashMap hashMap = new HashMap();
                if (!TextUtils.isEmpty(this.l)) {
                    this.f2344a.a(hashMap);
                    hashMap.put("touch", com.facebook.ads.internal.util.h.a(b()));
                    com.facebook.ads.internal.g.g.a(this.m).f(this.l, hashMap);
                } else if (this.o != null) {
                    new z(hashMap).execute(this.o);
                }
                i();
            }
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void g() {
        i();
    }

    public boolean h() {
        return this.b.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED;
    }

    public void i() {
        this.b.g();
        if (this.f2344a != null) {
            this.f2344a.b();
        }
    }

    public void j() {
        this.b.a(this.b.getCurrentPosition());
        this.b.d();
    }
}
