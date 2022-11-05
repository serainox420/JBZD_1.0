package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.RequestListener;
import java.util.Collections;
/* loaded from: classes2.dex */
public final class cl extends bm {
    private static final String c = cl.class.getSimpleName();
    private boolean d;
    private final String e;
    private MMInterstitial f;
    private RequestListener g;

    public cl(Context context, r rVar, Bundle bundle) {
        super(context, rVar);
        this.e = bundle.getString("com.flurry.millennial.MYAPIDINTERSTITIAL");
    }

    @Override // com.flurry.sdk.hl
    public final void a() {
        this.f = new MMInterstitial((Activity) c());
        this.f.setApid(this.e);
        this.g = new a(this, (byte) 0);
        this.f.setListener(this.g);
        this.f.fetch();
        this.d = this.f.display();
        if (this.d) {
            km.a(3, c, "Millennial MMAdView Interstitial ad displayed immediately:" + System.currentTimeMillis() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.d);
        } else {
            km.a(3, c, "Millennial MMAdView Interstitial ad did not display immediately:" + System.currentTimeMillis() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.d);
        }
    }

    /* loaded from: classes2.dex */
    final class a implements RequestListener {
        private a() {
        }

        /* synthetic */ a(cl clVar, byte b) {
            this();
        }

        public final void requestFailed(MMAd mMAd, MMException mMException) {
            cl.this.d(Collections.emptyMap());
            km.a(3, cl.c, "Millennial MMAdView Interstitial failed to load ad.");
        }

        public final void requestCompleted(MMAd mMAd) {
            km.a(3, cl.c, "Millennial MMAdView returned interstitial ad: " + System.currentTimeMillis());
            if (!cl.this.d) {
                cl.this.f.display();
            }
        }

        public final void MMAdOverlayLaunched(MMAd mMAd) {
            cl.this.a(Collections.emptyMap());
            km.a(3, cl.c, "Millennial MMAdView Interstitial overlay launched." + System.currentTimeMillis());
        }

        public final void MMAdRequestIsCaching(MMAd mMAd) {
            km.a(3, cl.c, "Millennial MMAdView Interstitial request is caching.");
        }

        public final void MMAdOverlayClosed(MMAd mMAd) {
            cl.this.c(Collections.emptyMap());
            km.a(3, cl.c, "Millennial MMAdView Interstitial overlay closed.");
        }

        public final void onSingleTap(MMAd mMAd) {
            cl.this.b(Collections.emptyMap());
            km.a(3, cl.c, "Millennial MMAdView Interstitial tapped.");
        }
    }
}
