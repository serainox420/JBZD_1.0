package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.widget.LinearLayout;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import com.openx.view.mraid.JSInterface;
import java.util.Collections;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public final class cf extends AdNetworkView {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2502a = cf.class.getSimpleName();
    private final String b;
    private IMBanner c;
    private IMBannerListener d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        super(context, rVar, adCreative);
        this.b = bundle.getString("com.flurry.inmobi.MY_APP_ID");
        InMobi.initialize((Activity) getContext(), this.b);
        setFocusable(true);
    }

    final IMBanner getAdView() {
        return this.c;
    }

    final IMBannerListener getAdListener() {
        return this.d;
    }

    @Override // com.flurry.sdk.gz
    public final void initLayout() {
        km.a(3, f2502a, "InMobi initLayout");
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
        int a4 = cg.a(new Point(a3, a2));
        if (-1 != a4) {
            this.c = new IMBanner((Activity) getContext(), this.b, a4);
            int i = 320;
            int i2 = 50;
            Point a5 = cg.a(a4);
            if (a5 != null) {
                i = a5.x;
                i2 = a5.y;
            }
            km.a(3, f2502a, "Determined InMobi AdSize as " + i + JSInterface.JSON_X + i2);
            float f = lw.d().density;
            this.c.setLayoutParams(new LinearLayout.LayoutParams((int) ((i * f) + 0.5f), (int) ((i2 * f) + 0.5f)));
            this.d = new a(this, (byte) 0);
            this.c.setIMBannerListener(this.d);
            setGravity(17);
            addView(this.c);
            this.c.setRefreshInterval(-1);
            this.c.loadBanner();
            return;
        }
        km.a(3, f2502a, "Could not find InMobi AdSize that matches size " + width + JSInterface.JSON_X + height);
        km.a(3, f2502a, "Could not load InMobi Ad");
    }

    /* loaded from: classes2.dex */
    final class a implements IMBannerListener {
        private a() {
        }

        /* synthetic */ a(cf cfVar, byte b) {
            this();
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public final void onShowBannerScreen(IMBanner iMBanner) {
            cf.this.onAdClicked(Collections.emptyMap());
            km.a(3, cf.f2502a, "InMobi imAdView ad shown.");
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public final void onDismissBannerScreen(IMBanner iMBanner) {
            cf.this.onAdClosed(Collections.emptyMap());
            km.a(3, cf.f2502a, "InMobi imAdView dismiss ad.");
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public final void onBannerRequestFailed(IMBanner iMBanner, IMErrorCode iMErrorCode) {
            cf.this.onRenderFailed(Collections.emptyMap());
            km.a(3, cf.f2502a, "InMobi imAdView ad request failed. " + iMErrorCode.toString());
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public final void onBannerRequestSucceeded(IMBanner iMBanner) {
            cf.this.onAdShown(Collections.emptyMap());
            km.a(3, cf.f2502a, "InMobi imAdView ad request completed.");
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public final void onLeaveApplication(IMBanner iMBanner) {
            km.a(3, cf.f2502a, "InMobi onLeaveApplication");
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public final void onBannerInteraction(IMBanner iMBanner, Map<String, String> map) {
            cf.this.onAdClicked(Collections.emptyMap());
            km.a(3, cf.f2502a, "InMobi onBannerInteraction");
        }
    }

    @Override // com.flurry.sdk.gz
    public final void onActivityDestroy() {
        km.a(3, f2502a, "InMobi onDestroy");
        if (this.c != null) {
            this.c.destroy();
            this.c = null;
        }
        super.onActivityDestroy();
    }
}
