package com.smartadserver.android.library.c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.AdColonyInterstitialListener;
import com.adcolony.sdk.AdColonyReward;
import com.adcolony.sdk.AdColonyRewardListener;
import com.adcolony.sdk.AdColonyZone;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.HashMap;
/* compiled from: SASAdColonyAdapter.java */
/* loaded from: classes3.dex */
public class a implements i {
    private i.a b;

    /* renamed from: a  reason: collision with root package name */
    private final String f5325a = a.class.getSimpleName();
    private SASAdView c = null;
    private AdColonyInterstitialListener d = new AdColonyInterstitialListener() { // from class: com.smartadserver.android.library.c.a.1
        @Override // com.adcolony.sdk.AdColonyInterstitialListener
        public void onRequestFilled(AdColonyInterstitial adColonyInterstitial) {
            com.smartadserver.android.library.g.c.a(a.this.f5325a, "AdColony onRequestFilled for interstitial");
            if ((a.this.c instanceof SASInterstitialView) && a.this.b.c()) {
                a.this.c.getMRAIDController().setState("default");
                a.this.c.getMRAIDController().setExpandUseCustomCloseProperty(true);
                adColonyInterstitial.show();
            }
        }

        @Override // com.adcolony.sdk.AdColonyInterstitialListener
        public void onRequestNotFilled(AdColonyZone adColonyZone) {
            com.smartadserver.android.library.g.c.a(a.this.f5325a, "AdColony onRequestNotFilled for interstitial!");
            a.this.b.a("Cannot load interstitial from AdColony!");
        }

        @Override // com.adcolony.sdk.AdColonyInterstitialListener
        public void onExpiring(AdColonyInterstitial adColonyInterstitial) {
            com.smartadserver.android.library.g.c.a(a.this.f5325a, "AdColony onExpiring for interstitial, requesting a new ad");
            AdColony.requestInterstitial(adColonyInterstitial.getZoneID(), a.this.d, null);
        }

        @Override // com.adcolony.sdk.AdColonyInterstitialListener
        public void onClosed(AdColonyInterstitial adColonyInterstitial) {
            com.smartadserver.android.library.g.c.a(a.this.f5325a, "AdColony onClosed for interstitial");
            if (a.this.c != null) {
                a.this.c.a(new Runnable() { // from class: com.smartadserver.android.library.c.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.c.n();
                    }
                });
            }
        }
    };
    private AdColonyRewardListener e = new AdColonyRewardListener() { // from class: com.smartadserver.android.library.c.a.2
        @Override // com.adcolony.sdk.AdColonyRewardListener
        public void onReward(AdColonyReward adColonyReward) {
            com.smartadserver.android.library.g.c.a(a.this.f5325a, "AdColony onReward for interstitial: label:" + adColonyReward.getRewardName() + " amount:" + adColonyReward.getRewardAmount());
            if (a.this.c != null) {
                a.this.c.a(new com.smartadserver.android.library.model.b(adColonyReward.getRewardName(), adColonyReward.getRewardAmount()));
            }
        }
    };

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        this.b = aVar;
        this.c = sASAdView;
        if (sASAdView instanceof SASBannerView) {
            aVar.a("AdColony ad mediation does support banner placements");
        } else if (sASAdView instanceof SASInterstitialView) {
            a(hashMap);
        } else if (sASAdView == null) {
            aVar.a("AdColony ad mediation does not support native ad placements");
        }
    }

    private void a(HashMap<String, String> hashMap) {
        String str = hashMap.get("appID");
        String str2 = hashMap.get("zoneID");
        if (!(this.c.getContext() instanceof Activity)) {
            this.b.a("Millennial ad mediation requires that the Smart AdServer SASAdview (interstitial or banner) be created with an Activity as context parameter");
            return;
        }
        AdColony.setRewardListener(this.e);
        AdColony.configure((Activity) this.c.getContext(), str, str2);
        AdColony.requestInterstitial(str2, this.d, null);
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return new g() { // from class: com.smartadserver.android.library.c.a.3
            @Override // com.smartadserver.android.library.c.g
            public View a() {
                return null;
            }

            @Override // com.smartadserver.android.library.c.g
            public g.a b() {
                return null;
            }
        };
    }

    @Override // com.smartadserver.android.library.c.i
    public void b() {
    }

    @Override // com.smartadserver.android.library.c.i
    public boolean c() {
        try {
            Class.forName("com.adcolony.sdk.AdColony");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
