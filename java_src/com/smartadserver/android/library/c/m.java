package com.smartadserver.android.library.c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.i;
import com.smartadserver.android.library.ui.SASAdView;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.placement.Placement;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASUnityAdsAdapter.java */
/* loaded from: classes3.dex */
public class m implements i {

    /* renamed from: a  reason: collision with root package name */
    private i.a f5389a;
    private int d;
    private com.smartadserver.android.library.model.b e;
    private Activity g;
    private boolean b = false;
    private SASAdView c = null;
    private String f = "";
    private IUnityAdsListener h = new IUnityAdsListener() { // from class: com.smartadserver.android.library.c.m.1
        @Override // com.unity3d.ads.IUnityAdsListener
        public void onUnityAdsReady(String str) {
            if (m.this.g != null && m.this.b && str.equals(m.this.f)) {
                if (m.this.f5389a.c()) {
                    UnityAds.show(m.this.g, m.this.f);
                }
                m.this.b = false;
            }
        }

        @Override // com.unity3d.ads.IUnityAdsListener
        public void onUnityAdsStart(String str) {
            if (str.equals(m.this.f) && m.this.c != null) {
                m.this.c.getMRAIDController().setState("default");
                m.this.c.getMRAIDController().setExpandUseCustomCloseProperty(true);
            }
        }

        @Override // com.unity3d.ads.IUnityAdsListener
        public void onUnityAdsFinish(String str, UnityAds.FinishState finishState) {
            if (m.this.c != null) {
                m.this.c.a(new Runnable() { // from class: com.smartadserver.android.library.c.m.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        m.this.c.n();
                    }
                });
                if (a(finishState)) {
                    m.this.c.a(m.this.e);
                    m.this.e = null;
                }
            }
        }

        @Override // com.unity3d.ads.IUnityAdsListener
        public void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String str) {
            m.this.f5389a.a(str);
        }

        private boolean a(UnityAds.FinishState finishState) {
            return m.this.d == 1 && m.this.e != null && finishState == UnityAds.FinishState.COMPLETED;
        }
    };

    @Override // com.smartadserver.android.library.c.i
    public void a(Context context, SASAdView sASAdView, HashMap<String, String> hashMap, i.a aVar) {
        UnityAds.setDebugMode(false);
        this.f5389a = aVar;
        this.c = sASAdView;
        if (sASAdView == null) {
            aVar.a("UnityAds ad mediation does not support native ad placements");
        } else if (sASAdView instanceof SASBannerView) {
            aVar.a("UnityAds mediation does not support banner placements");
        } else if (!(sASAdView.getContext() instanceof Activity)) {
            aVar.a("UnityAds mediation requires that the Smart AdServer SASAdview (interstitial or banner) be created with an Activity as context parameter");
        } else {
            this.g = (Activity) sASAdView.getContext();
            this.f = hashMap.get("placementID");
            this.d = Integer.parseInt(hashMap.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_TYPE));
            this.e = a(hashMap.get("reward"));
            if (!UnityAds.isInitialized()) {
                this.b = true;
                UnityAds.initialize(this.g, hashMap.get("gameID"), this.h, false);
            } else if (UnityAds.isReady(this.f) && aVar.c()) {
                UnityAds.show(this.g, this.f);
            } else {
                aVar.a("No UnityAds mediation ad to display: " + Placement.getPlacementState(this.f));
            }
        }
    }

    @Override // com.smartadserver.android.library.c.i
    public g a() {
        return new g() { // from class: com.smartadserver.android.library.c.m.2
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
            Class.forName("com.unity3d.ads.UnityAds");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private com.smartadserver.android.library.model.b a(String str) {
        com.smartadserver.android.library.model.b bVar;
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            String str2 = (String) hashMap.get("amount");
            String str3 = (String) hashMap.get("currency");
            if (str2 == null || str2.length() <= 0 || str3 == null || str3.length() <= 0) {
                bVar = null;
            } else {
                bVar = new com.smartadserver.android.library.model.b(str3, Double.parseDouble(str2));
            }
            return bVar;
        } catch (JSONException e) {
            return null;
        }
    }
}
