package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMSDK;
import com.millennialmedia.android.RequestListener;
import com.openx.view.mraid.JSInterface;
import java.util.Collections;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public final class cj extends AdNetworkView {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2506a = cj.class.getSimpleName();
    private final String b;
    private final String c;
    private MMAdView d;
    private RequestListener e;

    public cj(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        super(context, rVar, adCreative);
        this.b = bundle.getString("com.flurry.millennial.MYAPID");
        this.c = bundle.getString("com.flurry.millennial.MYAPIDRECTANGLE");
        setFocusable(true);
    }

    final MMAdView getAdView() {
        return this.d;
    }

    final RequestListener getAdListener() {
        return this.e;
    }

    @Override // com.flurry.sdk.gz
    public final void initLayout() {
        km.a(3, f2506a, "Millennial initLayout");
        int width = getAdCreative().getWidth();
        int height = getAdCreative().getHeight();
        int a2 = ck.a(new Point(width, height));
        if (-1 == a2) {
            km.a(3, f2506a, "Could not find Millennial AdSize that matches size " + width + JSInterface.JSON_X + height);
            km.a(3, f2506a, "Could not load Millennial Ad");
            return;
        }
        Point a3 = ck.a(a2);
        if (a3 == null) {
            km.a(3, f2506a, "Could not find Millennial AdSize that matches size " + width + JSInterface.JSON_X + height);
            km.a(3, f2506a, "Could not load Millennial Ad");
            return;
        }
        int i = a3.x;
        int i2 = a3.y;
        km.a(3, f2506a, "Determined Millennial AdSize as " + i + JSInterface.JSON_X + i2);
        this.d = new MMAdView((Activity) getContext());
        setId(MMSDK.getDefaultAdId());
        this.d.setApid(this.b);
        if (2 == a2) {
            this.d.setApid(this.c);
        }
        this.d.setWidth(i);
        this.d.setHeight(i2);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setGravity(17);
        this.e = new a(this, (byte) 0);
        this.d.setListener(this.e);
        addView(this.d);
        this.d.getAd();
    }

    /* loaded from: classes2.dex */
    final class a implements RequestListener {
        private a() {
        }

        /* synthetic */ a(cj cjVar, byte b) {
            this();
        }

        public final void requestFailed(MMAd mMAd, MMException mMException) {
            cj.this.onRenderFailed(Collections.emptyMap());
            km.a(3, cj.f2506a, "Millennial MMAdView failed to load ad with error: " + mMException);
        }

        public final void requestCompleted(MMAd mMAd) {
            cj.this.onAdShown(Collections.emptyMap());
            km.a(3, cj.f2506a, "Millennial MMAdView returned ad." + System.currentTimeMillis());
        }

        public final void MMAdOverlayLaunched(MMAd mMAd) {
            km.a(3, cj.f2506a, "Millennial MMAdView banner overlay launched.");
        }

        public final void MMAdRequestIsCaching(MMAd mMAd) {
            km.a(3, cj.f2506a, "Millennial MMAdView banner request is caching.");
        }

        public final void MMAdOverlayClosed(MMAd mMAd) {
            km.a(3, cj.f2506a, "Millennial MMAdView banner overlay closed.");
        }

        public final void onSingleTap(MMAd mMAd) {
            cj.this.onAdClicked(Collections.emptyMap());
            km.a(3, cj.f2506a, "Millennial MMAdView banner tapped.");
        }
    }

    @Override // com.flurry.sdk.gz
    public final void onActivityDestroy() {
        km.a(3, f2506a, "Millennial onDestroy");
        if (this.d != null) {
            this.d = null;
        }
        super.onActivityDestroy();
    }
}
