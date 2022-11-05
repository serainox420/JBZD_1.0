package com.openx.view.nativeAd;

import android.content.Context;
import com.openx.common.deviceData.listeners.SDKInitListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.OXAdRequest;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.model.Ad;
import com.openx.model.AdGroup;
import com.openx.model.AdModel;
import com.openx.model.OXMAdModelFactory;
import com.openx.model.network.AdModelLoadedListener;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class NativeAdManager implements SDKInitListener, AdModelLoadedListener {
    private static String TAG = "NativeAdManager";
    private NativeAdEventsListener adEventsListener;
    private AdModel adModel;
    private OXAdRequest adRequest;
    private String auid;
    private Context context;
    private String domain;
    private int hasRequestedAds = 0;
    private ArrayList<AdNative> nativeAdGroup;
    private NativeAdIdType nativeAdIdType;

    /* loaded from: classes3.dex */
    public enum NativeAdIdType {
        AdUnitId,
        AdUnitGroupId
    }

    public NativeAdManager(Context context, String str, String str2, NativeAdEventsListener nativeAdEventsListener) {
        if (context == null) {
            throw new IllegalArgumentException("Context cannot be null");
        }
        if (nativeAdEventsListener == null) {
            throw new IllegalArgumentException("NativeAdEventsListener cannot be null");
        }
        this.context = context;
        this.domain = str;
        this.auid = str2;
        this.adEventsListener = nativeAdEventsListener;
        init();
    }

    private void init() {
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(this.context, this);
        }
        OXMManagersResolver.getInstance().prepare(this.context);
    }

    public void load(NativeAdIdType nativeAdIdType, OXAdRequest oXAdRequest) {
        this.adRequest = oXAdRequest;
        this.nativeAdIdType = nativeAdIdType;
        if (!OXSettings.isSDKInit) {
            this.hasRequestedAds++;
        } else {
            loadAdModel();
        }
    }

    private void loadAdModel() {
        if (this.adModel == null) {
            Utils.log(this, "Building AdModel");
            this.adModel = OXMAdModelFactory.getInstance().createNewModel();
            this.adModel.setAdDomain(this.domain);
            this.adModel.setAdUnitID(this.auid);
            this.adModel.setAdModelCallbackListener(this);
            if (this.nativeAdIdType == NativeAdIdType.AdUnitGroupId) {
                this.adModel.setIsGroupIds(true);
            }
            if (this.adRequest != null && this.adRequest.adCallParams != null) {
                OXLog.debug(TAG, "sending AdCallParameters");
                this.adModel.setAdCallParams(this.adRequest.adCallParams);
            } else {
                OXLog.debug(TAG, "No AdCallParameters set by user");
                this.adModel.setAdCallParams(null);
            }
        }
        Utils.log(this, "Loading AdModel");
        this.adModel.processData();
    }

    public Context getContext() {
        return this.context;
    }

    @Override // com.openx.model.network.AdModelLoadedListener
    public void adModelLoadAdSuccess(AdGroup adGroup) {
        processNativeAdGroup(adGroup);
    }

    private void processNativeAdGroup(AdGroup adGroup) {
        populateNativeAdGroup(adGroup);
        this.adEventsListener.onNativeAdsLoaded(this.nativeAdGroup);
    }

    @Override // com.openx.model.network.AdModelLoadedListener
    public void adModelLoadAdFail(AdError adError) {
        if (this.adEventsListener != null) {
            this.adEventsListener.onNativeAdLoadError(adError);
        }
    }

    @Override // com.openx.model.network.AdModelLoadedListener
    public void adModelNonCriticalError(AdError adError) {
        if (this.adEventsListener != null) {
            OXLog.info("OX_NonCriticalError", "NonCriticalError: " + adError);
        }
    }

    private void populateNativeAdGroup(AdGroup adGroup) {
        this.nativeAdGroup = new ArrayList<>();
        Iterator<Ad> it = adGroup.getAds().iterator();
        while (it.hasNext()) {
            Ad next = it.next();
            AdNative adNative = new AdNative(next.getCreative().getMedia(), next.getCreative().getTracking().getImpressionURL(), next.getCreative().getTracking().getClickURL());
            adNative.setDomain(this.domain);
            adNative.setAuid(this.auid);
            this.nativeAdGroup.add(adNative);
        }
    }

    @Override // com.openx.common.deviceData.listeners.SDKInitListener
    public void onSDKInit() {
        while (this.hasRequestedAds > 0) {
            load(this.nativeAdIdType, this.adRequest);
            this.hasRequestedAds--;
        }
    }
}
