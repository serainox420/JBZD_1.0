package com.smartadserver.android.library.c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.millennialmedia.InlineAd;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.HashMap;
/* compiled from: SASMillennialAdapter.java */
/* loaded from: classes3.dex */
public class k implements i {

    /* renamed from: a  reason: collision with root package name */
    private InlineAd f5370a;
    private InterstitialAd b;
    private RelativeLayout d;
    private a e;
    private b f;
    private i.a g;
    private g c = null;
    private SASAdView h = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASMillennialAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements InlineAd.InlineListener {
        private a() {
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onAdLeftApplication(InlineAd inlineAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onAdLeftApplication");
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onClicked(InlineAd inlineAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onClicked");
            k.this.g.d();
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onCollapsed(InlineAd inlineAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onCollapsed");
            k.this.h.getMRAIDController().setState("default");
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onExpanded(InlineAd inlineAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onCollapsed");
            k.this.h.getMRAIDController().setState("expanded");
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onRequestFailed(InlineAd inlineAd, InlineAd.InlineErrorStatus inlineErrorStatus) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onRequestFailed");
            k.this.g.a(inlineErrorStatus.getDescription() + "(" + inlineErrorStatus.getErrorCode() + ")");
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onRequestSucceeded(InlineAd inlineAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onRequestSucceeded");
            k.this.h.a(new Runnable() { // from class: com.smartadserver.android.library.c.k.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (com.smartadserver.android.library.g.c.f5436a) {
                        k.this.d.setBackgroundColor(-16711681);
                    }
                    k.this.g.c();
                    k.this.h.getMRAIDController().setState("default");
                }
            });
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onResize(InlineAd inlineAd, int i, int i2) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onResize: " + i + " -> " + i2);
        }

        @Override // com.millennialmedia.InlineAd.InlineListener
        public void onResized(InlineAd inlineAd, int i, int i2, boolean z) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial inline ad onResized: " + i + " -> " + i2 + "(" + z + ")");
            k.this.h.getMRAIDController().setState("resized");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASMillennialAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements InterstitialAd.InterstitialListener {
        private b() {
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onAdLeftApplication(InterstitialAd interstitialAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onAdLeftApplication");
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onClicked(InterstitialAd interstitialAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onClicked");
            k.this.g.d();
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onClosed(InterstitialAd interstitialAd) {
            if (k.this.h != null) {
                k.this.h.a(new Runnable() { // from class: com.smartadserver.android.library.c.k.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        k.this.h.n();
                    }
                });
            }
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onExpired(InterstitialAd interstitialAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onExpired");
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onLoadFailed(InterstitialAd interstitialAd, InterstitialAd.InterstitialErrorStatus interstitialErrorStatus) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onLoadFailed");
            k.this.g.a(interstitialErrorStatus.getDescription() + "(" + interstitialErrorStatus.getErrorCode() + ")");
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onLoaded(final InterstitialAd interstitialAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onLoaded");
            k.this.h.a(new Runnable() { // from class: com.smartadserver.android.library.c.k.b.2
                @Override // java.lang.Runnable
                public void run() {
                    k.this.h.getMRAIDController().setState("default");
                    if (k.this.g != null && k.this.g.c() && k.this.h != null) {
                        k.this.h.getMRAIDController().setExpandUseCustomCloseProperty(true);
                        try {
                            k.this.b.show(k.this.h.getContext());
                        } catch (MMException e) {
                            e.printStackTrace();
                            b.this.onClosed(interstitialAd);
                        }
                    }
                }
            });
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onShowFailed(InterstitialAd interstitialAd, InterstitialAd.InterstitialErrorStatus interstitialErrorStatus) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onShowFailed:" + interstitialErrorStatus.getDescription() + "(" + interstitialErrorStatus.getErrorCode() + ")");
        }

        @Override // com.millennialmedia.InterstitialAd.InterstitialListener
        public void onShown(InterstitialAd interstitialAd) {
            com.smartadserver.android.library.g.c.a("SASMillennialAdapter", "Millennial interstitial ad onShown");
        }
    }

    public void a(Activity activity) {
        MMLog.setLogLevel(3);
        MMSDK.initialize(activity);
        this.e = new a();
        this.f = new b();
    }

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        final RelativeLayout relativeLayout;
        if (sASAdView == null) {
            aVar.a("Millennial ad mediation does not support native ad placements");
            return;
        }
        this.g = aVar;
        this.h = sASAdView;
        if (!(sASAdView.getContext() instanceof Activity)) {
            aVar.a("Millennial ad mediation requires that the Smart AdServer SASAdview (interstitial or banner) be created with an Activity as context parameter");
            return;
        }
        Activity activity = (Activity) sASAdView.getContext();
        a(activity);
        e();
        d();
        String str = hashMap.get("APID");
        this.d = new RelativeLayout(activity);
        if (sASAdView instanceof SASBannerView) {
            this.d.setLayoutParams(new RelativeLayout.LayoutParams(sASAdView.getWidth(), sASAdView.getHeight()));
            if (com.smartadserver.android.library.g.c.f5436a) {
                this.d.setBackgroundColor(-65536);
            }
            if (this.f5370a == null) {
                try {
                    this.f5370a = InlineAd.createInstance(str, this.d);
                    this.f5370a.setListener(this.e);
                    this.f5370a.setRefreshInterval(0);
                } catch (MMException e) {
                    e.printStackTrace();
                    aVar.a("Could not create Millennial inline ad: " + e.getMessage());
                    e();
                    return;
                }
            }
            InlineAd.InlineAdMetadata inlineAdMetadata = new InlineAd.InlineAdMetadata();
            inlineAdMetadata.setAdSize(InlineAd.AdSize.BANNER);
            this.f5370a.request(inlineAdMetadata);
            relativeLayout = this.d;
        } else {
            if (this.b == null) {
                try {
                    this.b = InterstitialAd.createInstance(str);
                    this.b.setListener(this.f);
                } catch (MMException e2) {
                    e2.printStackTrace();
                    aVar.a("Could not create Millennial interstitial ad: " + e2.getMessage());
                    d();
                    return;
                }
            }
            if (this.b.isReady()) {
                this.f.onLoaded(this.b);
            } else {
                this.b.load(activity, null);
            }
            relativeLayout = null;
        }
        this.c = new g() { // from class: com.smartadserver.android.library.c.k.1
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return relativeLayout;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return null;
            }
        };
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return this.c;
    }

    private void d() {
        if (this.b != null) {
            this.b.setListener(null);
        }
        this.b = null;
    }

    private void e() {
        if (this.f5370a != null) {
            this.f5370a.setListener(null);
        }
        this.f5370a = null;
        if (this.d != null) {
            this.d.setBackgroundColor(0);
            this.d.removeAllViews();
        }
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
        this.h = null;
        e();
        d();
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.millennialmedia.InlineAd");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
