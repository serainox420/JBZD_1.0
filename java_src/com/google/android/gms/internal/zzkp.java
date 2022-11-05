package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.c;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzgr;
@zzme
/* loaded from: classes.dex */
public class zzkp implements MediationInterstitialAdapter {
    private Uri mUri;
    private Activity zzLO;
    private zzgr zzLP;
    private MediationInterstitialListener zzLQ;

    public static boolean zzr(Context context) {
        return zzgr.zzo(context);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        zzqf.zzbf("Destroying AdMobCustomTabsAdapter adapter.");
        try {
            this.zzLP.zzd(this.zzLO);
        } catch (Exception e) {
            zzqf.zzb("Exception while unbinding from CustomTabsService.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        zzqf.zzbf("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        zzqf.zzbf("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzLQ = mediationInterstitialListener;
        if (this.zzLQ == null) {
            zzqf.zzbh("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            zzqf.zzbh("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzLQ.onAdFailedToLoad(this, 0);
        } else if (!zzr(context)) {
            zzqf.zzbh("Default browser does not support custom tabs. Bailing out.");
            this.zzLQ.onAdFailedToLoad(this, 0);
        } else {
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                zzqf.zzbh("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.zzLQ.onAdFailedToLoad(this, 0);
                return;
            }
            this.zzLO = (Activity) context;
            this.mUri = Uri.parse(string);
            this.zzLP = new zzgr();
            this.zzLP.zza(new zzgr.zza(this) { // from class: com.google.android.gms.internal.zzkp.1
                @Override // com.google.android.gms.internal.zzgr.zza
                public void zzfJ() {
                    zzqf.zzbf("Hinting CustomTabsService for the load of the new url.");
                }

                @Override // com.google.android.gms.internal.zzgr.zza
                public void zzfK() {
                    zzqf.zzbf("Disconnecting from CustomTabs service.");
                }
            });
            this.zzLP.zze(this.zzLO);
            this.zzLQ.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        c a2 = new c.a(this.zzLP.zzfH()).a();
        a2.f12a.setData(this.mUri);
        final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(a2.f12a), null, new com.google.android.gms.ads.internal.overlay.zzh() { // from class: com.google.android.gms.internal.zzkp.2
            @Override // com.google.android.gms.ads.internal.overlay.zzh
            public void onPause() {
                zzqf.zzbf("AdMobCustomTabsAdapter overlay is paused.");
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzh
            public void onResume() {
                zzqf.zzbf("AdMobCustomTabsAdapter overlay is resumed.");
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzh
            public void zzbN() {
                zzqf.zzbf("AdMobCustomTabsAdapter overlay is closed.");
                zzkp.this.zzLQ.onAdClosed(zzkp.this);
                try {
                    zzkp.this.zzLP.zzd(zzkp.this.zzLO);
                } catch (Exception e) {
                    zzqf.zzb("Exception while unbinding from CustomTabsService.", e);
                }
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzh
            public void zzbO() {
                zzqf.zzbf("Opening AdMobCustomTabsAdapter overlay.");
                zzkp.this.zzLQ.onAdOpened(zzkp.this);
            }
        }, null, new zzqh(0, 0, false));
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzkp.3
            @Override // java.lang.Runnable
            public void run() {
                com.google.android.gms.ads.internal.zzw.zzcK().zza(zzkp.this.zzLO, adOverlayInfoParcel);
            }
        });
        com.google.android.gms.ads.internal.zzw.zzcQ().zzH(false);
    }
}
