package com.openx.view.tp.adapters.interstitials;

import android.app.Activity;
import android.content.Context;
import com.jirbo.adcolony.AdColony;
import com.jirbo.adcolony.AdColonyAd;
import com.jirbo.adcolony.AdColonyAdAvailabilityListener;
import com.jirbo.adcolony.AdColonyAdListener;
import com.jirbo.adcolony.AdColonyVideoAd;
import com.openx.common.utils.logger.OXLog;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdColonyInterstitialAdapter extends AdapterBase implements AdColonyAdAvailabilityListener, AdColonyAdListener {
    private static final String TAG = "AdColonyInterstitialAdapter";
    private AdColonyVideoAd adColonyAd;
    private String clientOptons;

    public AdColonyInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        this.clientOptons = "version:1.1,store:google";
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        this.adColonyAd.show();
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        String str = chainItem.sdkParams.dictionary.get("zone_id");
        AdColony.configure((Activity) this.context, this.clientOptons, chainItem.sdkParams.dictionary.get("app_id"), new String[]{str});
        AdColony.addAdAvailabilityListener(this);
        AdColony.resume((Activity) this.context);
        this.adColonyAd = new AdColonyVideoAd(str).withListener(this);
        OXLog.debug(TAG, "loadAd() ### 0");
    }

    public void onAdColonyAdAvailabilityChange(boolean z, String str) {
        OXLog.debug(TAG, "I am in onAdColonyAdAvailabilityChange ");
        if (z && this.listener != null) {
            ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.openx.view.tp.adapters.interstitials.AdColonyInterstitialAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    AdColonyInterstitialAdapter.this.listener.onAdDidLoad(SDK.AdColony, AdColonyInterstitialAdapter.this.adColonyAd);
                }
            });
        }
    }

    public void onAdColonyAdAttemptFinished(AdColonyAd adColonyAd) {
        OXLog.debug(TAG, "I am in onAdColonyAdAttemptFinished");
        if (adColonyAd.shown()) {
            OXLog.debug(TAG, " closing the ad in adcolony adapter - so chainmanager can ask activity to disable the button");
            if (this.listener != null) {
                this.listener.onAdClosed(SDK.AdColony);
            }
        }
    }

    public void onAdColonyAdStarted(AdColonyAd adColonyAd) {
        OXLog.debug(TAG, "I am in onAdColonyAdStarted ### 4");
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "cleanUp: AdColonyInterstitialAdapter ");
        if (this.adColonyAd != null) {
            this.adColonyAd.withListener((AdColonyAdListener) null);
        }
    }
}
