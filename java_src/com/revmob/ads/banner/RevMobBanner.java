package com.revmob.ads.banner;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.revmob.RevMobAdsListener;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import com.revmob.internal.p;
import com.revmob.internal.r;
import com.revmob.internal.s;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class RevMobBanner extends RelativeLayout implements com.revmob.ads.a.a {
    public static int bannerCount;
    public static ArrayList usedCampaigns;

    /* renamed from: a  reason: collision with root package name */
    public String f4745a;
    private Activity b;
    private com.revmob.ads.banner.a.b c;
    private RevMobAdsListener d;
    private View e;
    private int f;
    private String g;
    private View.OnClickListener h;
    private com.revmob.ads.banner.a.a i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private float q;
    private float r;
    private DisplayMetrics s;
    public static float DEFAULT_WIDTH_IN_DIP = 320.0f;
    public static float DEFAULT_HEIGHT_IN_DIP = 50.0f;
    public static boolean isBannerImpression = false;

    public RevMobBanner(Activity activity, RevMobAdsListener revMobAdsListener) {
        super(activity);
        this.b = activity;
        this.d = revMobAdsListener;
        this.f = com.revmob.ads.a.c.f4742a;
        this.j = false;
        isBannerImpression = false;
        this.k = true;
        this.l = true;
        this.m = false;
        this.f4745a = null;
        this.n = false;
    }

    private void addDSPAdView() {
        this.e = new r(getContext(), this.c.c(), this.c.d(), new s(this.d, new d(this), this.c.f));
        this.e.setBackgroundColor(0);
        configureAndAnimateView();
    }

    private void addHtmlAdView() {
        this.e = new r(getContext(), this.c.a(), null, new s(this.d, new c(this)));
        this.e.setBackgroundColor(0);
        configureAndAnimateView();
    }

    private void addImageView() {
        this.e = new ImageView(getContext());
        ((ImageView) this.e).setImageBitmap(this.c.b());
        if (getParent() != null) {
            ((View) getParent()).setVisibility(0);
        }
        ((ImageView) this.e).setScaleType(ImageView.ScaleType.FIT_XY);
        this.e.setOnClickListener(this.h);
        configureAndAnimateView();
    }

    private void calculateDimensions() {
        float f;
        float f2;
        determineDefaultDimensions();
        if (getLayoutParams() != null && getLayoutParams().width > 0 && getLayoutParams().height > 0) {
            float f3 = getLayoutParams().width;
            float f4 = (DEFAULT_HEIGHT_IN_DIP * f3) / DEFAULT_WIDTH_IN_DIP;
            if (f4 > getLayoutParams().height) {
                f4 = getLayoutParams().height;
                f3 = (DEFAULT_WIDTH_IN_DIP * f4) / DEFAULT_HEIGHT_IN_DIP;
            }
            this.o = (int) f3;
            this.p = (int) f4;
        } else if (getParent() == null) {
            float min = Math.min(this.r, this.q);
            this.o = (int) min;
            this.p = (int) ((min * DEFAULT_HEIGHT_IN_DIP) / DEFAULT_WIDTH_IN_DIP);
        } else {
            View view = (View) getParent();
            if (view.getHeight() > 0 && view.getWidth() > 0) {
                float width = view.getWidth();
                float f5 = (DEFAULT_HEIGHT_IN_DIP * width) / DEFAULT_WIDTH_IN_DIP;
                if (f5 > view.getHeight()) {
                    f = view.getHeight();
                    f2 = (DEFAULT_WIDTH_IN_DIP * f) / DEFAULT_HEIGHT_IN_DIP;
                } else {
                    f = f5;
                    f2 = width;
                }
                this.o = (int) f2;
                this.p = (int) f;
            } else if (view.getWidth() > 0) {
                float width2 = view.getWidth();
                this.p = (int) ((DEFAULT_HEIGHT_IN_DIP * width2) / DEFAULT_WIDTH_IN_DIP);
                this.o = (int) width2;
            } else if (view.getHeight() > 0) {
                float height = view.getHeight();
                this.o = (int) ((DEFAULT_WIDTH_IN_DIP * height) / DEFAULT_HEIGHT_IN_DIP);
                this.p = (int) height;
            } else {
                float min2 = Math.min(this.r, this.q);
                this.o = (int) min2;
                this.p = (int) ((min2 * DEFAULT_HEIGHT_IN_DIP) / DEFAULT_WIDTH_IN_DIP);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureAndAnimateView() {
        calculateDimensions();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.o, this.p);
        layoutParams.addRule(14);
        this.e.setLayoutParams(layoutParams);
        animateAdView();
        if (this.e.getParent() == null) {
            addView(this.e);
        }
        registerVisibilityListener();
        playSoundOnShow();
    }

    private float getBarPixelSize(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? resources.getDimensionPixelSize(identifier) : BitmapDescriptorFactory.HUE_RED;
    }

    private void hide(boolean z) {
        if (this.e == null || this.f == com.revmob.ads.a.c.e) {
            return;
        }
        this.f = com.revmob.ads.a.c.e;
        Animation h = this.c.h();
        h.setAnimationListener(new i(this, z));
        this.e.startAnimation(h);
    }

    private boolean isLoaded() {
        return this.c != null;
    }

    private boolean isTablet() {
        this.s = new DisplayMetrics();
        this.q = this.b.getWindowManager().getDefaultDisplay().getWidth();
        this.r = this.b.getWindowManager().getDefaultDisplay().getHeight();
        this.b.getWindowManager().getDefaultDisplay().getMetrics(this.s);
        return Math.min(this.q / this.s.density, this.r / this.s.density) + (getBarPixelSize(this.b) / this.s.density) >= 600.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load(String str) {
        if (this.f == com.revmob.ads.a.c.f4742a || this.f == com.revmob.ads.a.c.e || this.f == com.revmob.ads.a.c.g) {
            this.f = com.revmob.ads.a.c.b;
            this.i = new com.revmob.ads.banner.a.a(this, this.d, this.b);
            com.revmob.a.e.e = this.f4745a;
            RevMobClient.a().d(str, this.i);
        }
    }

    private View.OnClickListener onClickListener() {
        return new a(this);
    }

    private void playSoundOnShow() {
        if (this.c.i() == null || this.c.i().length() == 0) {
            return;
        }
        try {
            new p().b(this.b, this.c.i());
        } catch (IOException e) {
            u.a(e, null, w.c, null, "playSoundOnShow");
            e.printStackTrace();
        }
    }

    private void registerVisibilityListener() {
        ViewTreeObserver viewTreeObserver = this.e.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new e(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAdViewBlock(boolean z) {
        if (this.e != null) {
            this.b.runOnUiThread(new j(this, z));
        }
    }

    public static void setBannerImpression(boolean z) {
        isBannerImpression = z;
    }

    public void addAdView() {
        if (this.c.e()) {
            addHtmlAdView();
        } else if (this.c.f()) {
            addDSPAdView();
        } else {
            addImageView();
        }
    }

    public void animateAdView() {
        Animation g = this.c.g();
        this.e.setVisibility(0);
        g.setAnimationListener(new f(this));
        this.e.setAnimation(g);
    }

    public void determineDefaultDimensions() {
        if (isTablet()) {
            DEFAULT_WIDTH_IN_DIP = 728.0f;
            DEFAULT_HEIGHT_IN_DIP = 90.0f;
            return;
        }
        DEFAULT_WIDTH_IN_DIP = 320.0f;
        DEFAULT_HEIGHT_IN_DIP = 50.0f;
    }

    public int dipToPixels(float f) {
        return (int) ((this.s.density * f) + 0.5f);
    }

    public String getPlacementId() {
        return this.g;
    }

    public void hide() {
        hide(false);
    }

    public boolean isAutoReload() {
        return this.k;
    }

    public void load() {
        load(this.g);
    }

    public void release() {
        hide(true);
    }

    public void reportShowOrHidden() {
        if (!isLoaded() || this.n) {
            return;
        }
        this.n = true;
        this.f = com.revmob.ads.a.c.d;
        if (this.d != null) {
            this.d.onRevMobAdDisplayed();
        }
        if (usedCampaigns == null) {
            usedCampaigns = new ArrayList();
        }
        if (!usedCampaigns.contains(this.c.d)) {
            usedCampaigns.add(this.c.d);
        }
        bannerCount++;
        isBannerImpression = true;
        RevMobClient.a().a(this.c);
    }

    public void setAutoReload(boolean z) {
        this.k = z;
    }

    public void setAutoShow(boolean z) {
        this.l = z;
    }

    public void setPlacementId(String str) {
        this.g = str;
    }

    public void setPublisherListener(RevMobAdsListener revMobAdsListener) {
        this.d = revMobAdsListener;
    }

    public void show() {
        if (this.f == com.revmob.ads.a.c.e || this.f == com.revmob.ads.a.c.c) {
            if (this.e == null) {
                ((Activity) getContext()).runOnUiThread(new g(this));
            } else if (this.f == com.revmob.ads.a.c.d) {
            } else {
                this.e.setVisibility(0);
                this.f = com.revmob.ads.a.c.d;
                ((Activity) getContext()).runOnUiThread(new h(this));
            }
        }
    }

    @Override // com.revmob.ads.a.a
    public void updateWithData(com.revmob.client.a aVar) {
        this.f = com.revmob.ads.a.c.c;
        this.c = (com.revmob.ads.banner.a.b) aVar;
        RevMobClient.a().b(this.c);
        this.h = onClickListener();
        RMLog.i("Banner loaded - " + this.c.d);
        if (this.m) {
            this.n = false;
            show();
            return;
        }
        if (this.d != null) {
            this.d.onRevMobAdReceived();
        }
        if (!this.l) {
            return;
        }
        show();
    }
}
