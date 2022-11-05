package com.openx.view.tp.adapters.interstitials;

import android.app.Activity;
import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
import java.util.Map;
/* loaded from: classes3.dex */
public class InMobiInterstitialAdapter extends AdapterBase {
    private static final String TAG = "InMobiInterstitialAdapter";
    private AdInterstitialListener adInterstitialListener;
    private IMInterstitial interstitial;

    public InMobiInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "cleanUp: InMobiBannerAdapter destroying InMobiBanner on cleanUp");
        if (this.interstitial != null) {
            this.interstitial.setIMInterstitialListener(null);
            this.interstitial.destroy();
            this.interstitial = null;
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        if (this.interstitial.getState() == IMInterstitial.State.READY) {
            this.interstitial.show();
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        InMobi.initialize(this.context, chainItem.sdkParams.dictionary.get(AdDatabaseHelper.COLUMN_APPID));
        this.interstitial = new IMInterstitial((Activity) this.context, chainItem.sdkParams.dictionary.get(AdDatabaseHelper.COLUMN_APPID));
        this.adInterstitialListener = new AdInterstitialListener();
        this.interstitial.setIMInterstitialListener(this.adInterstitialListener);
        this.interstitial.loadInterstitial();
    }

    /* loaded from: classes3.dex */
    class AdInterstitialListener implements IMInterstitialListener {
        AdInterstitialListener() {
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public void onLeaveApplication(IMInterstitial iMInterstitial) {
            if (InMobiInterstitialAdapter.this.listener != null) {
                InMobiInterstitialAdapter.this.listener.onAdClosed(SDK.InMobi);
            }
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public void onDismissInterstitialScreen(IMInterstitial iMInterstitial) {
            if (InMobiInterstitialAdapter.this.listener != null) {
                InMobiInterstitialAdapter.this.listener.onAdClosed(SDK.InMobi);
            }
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode) {
            InMobiInterstitialAdapter.this.cleanUp();
            UnknownError unknownError = new UnknownError(iMErrorCode.toString());
            if (InMobiInterstitialAdapter.this.listener != null) {
                InMobiInterstitialAdapter.this.listener.onAdFailedToLoad(SDK.InMobi, unknownError);
            }
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public void onInterstitialInteraction(IMInterstitial iMInterstitial, Map<String, String> map) {
            if (InMobiInterstitialAdapter.this.listener != null) {
                InMobiInterstitialAdapter.this.listener.onAdClicked(SDK.MoPub);
            }
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public void onInterstitialLoaded(IMInterstitial iMInterstitial) {
            if (InMobiInterstitialAdapter.this.interstitial.getState() == IMInterstitial.State.READY && InMobiInterstitialAdapter.this.listener != null) {
                InMobiInterstitialAdapter.this.listener.onAdDidLoad(SDK.InMobi, InMobiInterstitialAdapter.this.interstitial);
            }
        }

        @Override // com.inmobi.monetization.IMInterstitialListener
        public void onShowInterstitialScreen(IMInterstitial iMInterstitial) {
        }
    }
}
