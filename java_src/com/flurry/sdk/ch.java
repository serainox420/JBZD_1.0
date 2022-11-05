package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public class ch extends bm {
    private static final String c = ch.class.getSimpleName();
    private static final Method d;
    private final String e;
    private IMInterstitial f;
    private a g;

    static {
        Method method;
        Method[] methods = IMInterstitial.class.getMethods();
        int length = methods.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                method = null;
                break;
            }
            method = methods[i];
            String name = method.getName();
            if (name.equals("setIMInterstitialListener") || name.equals("setImInterstitialListener")) {
                break;
            }
            i++;
        }
        d = method;
    }

    public ch(Context context, r rVar, Bundle bundle) {
        super(context, rVar);
        this.e = bundle.getString("com.flurry.inmobi.MY_APP_ID");
        InMobi.initialize((Activity) c(), this.e);
    }

    @Override // com.flurry.sdk.hl
    public final void a() {
        this.f = new IMInterstitial((Activity) c(), this.e);
        this.g = new a(this, (byte) 0);
        IMInterstitial iMInterstitial = this.f;
        a aVar = this.g;
        if (iMInterstitial != null) {
            try {
                if (d != null) {
                    d.invoke(iMInterstitial, aVar);
                }
            } catch (Exception e) {
                km.a(3, c, "InMobi set listener failed.");
            }
        }
        this.f.loadInterstitial();
    }

    /* loaded from: classes2.dex */
    final class a implements IMInterstitialListener {
        private a() {
        }

        /* synthetic */ a(ch chVar, byte b) {
            this();
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public final void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode) {
            ch.this.d(Collections.emptyMap());
            km.a(3, ch.c, "InMobi imAdView ad request failed. ErrorCode  = " + iMErrorCode.toString());
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public final void onInterstitialLoaded(IMInterstitial iMInterstitial) {
            km.a(3, ch.c, "InMobi Interstitial ad request completed.");
            if (IMInterstitial.State.READY.equals(iMInterstitial.getState())) {
                ch.this.a(Collections.emptyMap());
                iMInterstitial.show();
            }
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public final void onDismissInterstitialScreen(IMInterstitial iMInterstitial) {
            ch.this.c(Collections.emptyMap());
            km.a(3, ch.c, "InMobi Interstitial ad dismissed.");
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public final void onShowInterstitialScreen(IMInterstitial iMInterstitial) {
            km.a(3, ch.c, "InMobi Interstitial ad shown.");
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public final void onLeaveApplication(IMInterstitial iMInterstitial) {
            ch.this.b(Collections.emptyMap());
            km.a(3, ch.c, "InMobi onLeaveApplication");
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public final void onInterstitialInteraction(IMInterstitial iMInterstitial, Map<String, String> map) {
            ch.this.b(Collections.emptyMap());
            km.a(3, ch.c, "InMobi onBannerInteraction");
        }
    }
}
