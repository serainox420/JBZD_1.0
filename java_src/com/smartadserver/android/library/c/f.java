package com.smartadserver.android.library.c;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.view.View;
import android.widget.RelativeLayout;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.sdk.InMobiSdk;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.HashMap;
/* compiled from: SASInMobiAdapter.java */
/* loaded from: classes3.dex */
public class f implements i {
    private InMobiBanner b;
    private a c;
    private InMobiInterstitial d;
    private b e;
    private i.a f;
    private HashMap<String, String> i;

    /* renamed from: a  reason: collision with root package name */
    private g f5362a = null;
    private SASAdView g = null;
    private boolean h = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASInMobiAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements InMobiBanner.BannerAdListener {
        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASInMobiAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements InMobiInterstitial.InterstitialAdListener2 {
        private b() {
        }
    }

    public void a(Context context) {
        this.c = new a();
        this.e = new b();
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        final InMobiBanner inMobiBanner;
        Location location;
        if (sASAdView == null) {
            aVar.a("InMobi ad mediation does not support native ad placements");
            return;
        }
        this.f = aVar;
        this.g = sASAdView;
        String str = hashMap.get("accountID");
        long j = -1;
        try {
            j = Long.parseLong(hashMap.get("placementID"));
        } catch (NumberFormatException e) {
            com.smartadserver.android.library.g.c.a("SASInMobiAdapter", "InMobi Invalid Placement format");
        }
        if (!this.h) {
            a(context);
            InMobiSdk.setLogLevel(InMobiSdk.LogLevel.DEBUG);
            InMobiSdk.init((Activity) sASAdView.getContext(), str);
            this.i = new HashMap<>();
            this.i.put("tp", "c_smartadserver");
            this.i.put("tp-ver", "6.6.2");
            this.h = true;
        }
        if (this.g != null && (location = sASAdView.getLocation()) != null) {
            InMobiSdk.setLocation(location);
        }
        e();
        d();
        if (sASAdView instanceof SASBannerView) {
            if (this.b == null) {
                this.b = new InMobiBanner((Activity) sASAdView.getContext(), j);
                this.b.setAnimationType(InMobiBanner.AnimationType.ANIMATION_OFF);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(sASAdView.getWidth(), sASAdView.getHeight());
                layoutParams.addRule(13);
                this.b.setLayoutParams(layoutParams);
                if (com.smartadserver.android.library.g.c.f5436a) {
                    this.b.setBackgroundColor(-16711681);
                }
                this.b.setListener(this.c);
                this.b.setEnableAutoRefresh(false);
                this.b.setExtras(this.i);
            }
            this.b.setVisibility(4);
            sASAdView.addView((View) this.b, 0);
            this.b.load();
            inMobiBanner = this.b;
        } else {
            if (this.d == null) {
                this.d = new InMobiInterstitial((Activity) sASAdView.getContext(), j, this.e);
                this.d.setExtras(this.i);
            }
            this.d.load();
            inMobiBanner = null;
        }
        this.f5362a = new g() { // from class: com.smartadserver.android.library.c.f.1
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return inMobiBanner;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return null;
            }
        };
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.f5362a;
    }

    private void d() {
        this.d = null;
    }

    private void e() {
        this.b = null;
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.f = null;
        this.g = null;
        e();
        d();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.inmobi.ads.InMobiBanner");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
