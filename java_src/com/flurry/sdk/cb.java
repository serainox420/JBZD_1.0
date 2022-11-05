package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import java.util.Collections;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public final class cb extends AdNetworkView {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2499a = cb.class.getSimpleName();
    private final String b;
    private final String c;
    private final boolean d;
    private AdView e;
    private AdListener f;

    public cb(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        super(context, rVar, adCreative);
        this.b = bundle.getString("com.flurry.gms.ads.MY_AD_UNIT_ID");
        this.c = bundle.getString("com.flurry.gms.ads.MYTEST_AD_DEVICE_ID");
        this.d = bundle.getBoolean("com.flurry.gms.ads.test");
        setFocusable(true);
    }

    final AdView getAdView() {
        return this.e;
    }

    final AdListener getAdListener() {
        return this.f;
    }

    @Override // com.flurry.sdk.gz
    public final void initLayout() {
        AdSize adSize;
        km.a(4, f2499a, "GMS AdView initLayout.");
        Context context = getContext();
        int width = getAdCreative().getWidth();
        int height = getAdCreative().getHeight();
        int a2 = lw.a(lw.b().y);
        int a3 = lw.a(lw.b().x);
        if (width > 0 && width <= a3) {
            a3 = width;
        }
        if (height > 0 && height <= a2) {
            a2 = height;
        }
        if (a3 >= 728 && a2 >= 90) {
            adSize = AdSize.LEADERBOARD;
        } else if (a3 >= 468 && a2 >= 60) {
            adSize = AdSize.FULL_BANNER;
        } else if (a3 >= 320 && a2 >= 50) {
            adSize = AdSize.BANNER;
        } else if (a3 >= 300 && a2 >= 250) {
            adSize = AdSize.MEDIUM_RECTANGLE;
        } else {
            km.a(3, f2499a, "Could not find GMS AdSize that matches size");
            adSize = null;
        }
        if (adSize == null) {
            km.a(6, f2499a, "Could not find GMS AdSize that matches {width = " + width + ", height " + height + "}");
            return;
        }
        km.a(3, f2499a, "Determined GMS AdSize as " + adSize + " that best matches {width = " + width + ", height = " + height + "}");
        this.f = new a(this, (byte) 0);
        this.e = new AdView(context);
        this.e.setAdSize(adSize);
        this.e.setAdUnitId(this.b);
        this.e.setAdListener(this.f);
        setGravity(17);
        addView(this.e, new RelativeLayout.LayoutParams(adSize.getWidthInPixels(context), adSize.getHeightInPixels(context)));
        AdRequest.Builder builder = new AdRequest.Builder();
        if (this.d) {
            km.a(3, f2499a, "GMS AdView set to Test Mode.");
            builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
            if (!TextUtils.isEmpty(this.c)) {
                builder.addTestDevice(this.c);
            }
        }
        this.e.loadAd(builder.build());
    }

    /* loaded from: classes2.dex */
    final class a extends AdListener {
        private a() {
        }

        /* synthetic */ a(cb cbVar, byte b) {
            this();
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            cb.this.onAdShown(Collections.emptyMap());
            km.a(4, cb.f2499a, "GMS AdView onAdLoaded.");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            cb.this.onRenderFailed(Collections.emptyMap());
            km.a(5, cb.f2499a, "GMS AdView onAdFailedToLoad: " + i + ".");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            km.a(4, cb.f2499a, "GMS AdView onAdOpened.");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            cb.this.onAdClosed(Collections.emptyMap());
            km.a(4, cb.f2499a, "GMS AdView onAdClosed.");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            cb.this.onAdClicked(Collections.emptyMap());
            km.a(4, cb.f2499a, "GMS AdView onAdLeftApplication.");
        }
    }

    @Override // com.flurry.sdk.gz
    public final void onActivityDestroy() {
        km.a(4, f2499a, "GMS AdView onDestroy.");
        if (this.e != null) {
            this.e.destroy();
            this.e = null;
        }
        super.onActivityDestroy();
    }
}
