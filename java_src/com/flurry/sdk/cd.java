package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import java.util.Collections;
/* loaded from: classes2.dex */
public final class cd extends bm {
    private static final String c = cd.class.getSimpleName();
    private final String d;
    private final String e;
    private final boolean f;
    private final InterstitialAd g;
    private final AdListener h;

    public cd(Context context, r rVar, Bundle bundle) {
        super(context, rVar);
        this.d = bundle.getString("com.flurry.gms.ads.MY_AD_UNIT_ID");
        this.e = bundle.getString("com.flurry.gms.ads.MYTEST_AD_DEVICE_ID");
        this.f = bundle.getBoolean("com.flurry.gms.ads.test");
        this.h = new a(this, (byte) 0);
        this.g = new InterstitialAd(c());
        this.g.setAdUnitId(this.d);
        this.g.setAdListener(this.h);
    }

    @Override // com.flurry.sdk.hl
    public final void a() {
        AdRequest.Builder builder = new AdRequest.Builder();
        if (this.f) {
            km.a(3, c, "GMS AdView set to Test Mode.");
            builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
            if (!TextUtils.isEmpty(this.e)) {
                builder.addTestDevice(this.e);
            }
        }
        this.g.loadAd(builder.build());
    }

    /* loaded from: classes2.dex */
    final class a extends AdListener {
        private a() {
        }

        /* synthetic */ a(cd cdVar, byte b) {
            this();
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            cd.this.a(Collections.emptyMap());
            km.a(4, cd.c, "GMS AdView onAdLoaded.");
            cd.this.g.show();
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            cd.this.d(Collections.emptyMap());
            km.a(5, cd.c, "GMS AdView onAdFailedToLoad: " + i + ".");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            km.a(4, cd.c, "GMS AdView onAdOpened.");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            cd.this.c(Collections.emptyMap());
            km.a(4, cd.c, "GMS AdView onAdClosed.");
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            cd.this.b(Collections.emptyMap());
            km.a(4, cd.c, "GMS AdView onAdLeftApplication.");
        }
    }
}
