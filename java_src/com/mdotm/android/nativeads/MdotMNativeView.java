package com.mdotm.android.nativeads;

import android.app.Activity;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mdotm.android.listener.MdotMAdEventListener;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.view.MdotMInterstitial;
/* loaded from: classes3.dex */
public class MdotMNativeView {
    private static boolean nativeAd = false;
    private Activity mContext;

    public MdotMNativeView(Activity activity) {
        this.mContext = activity;
    }

    public void loadNativeAd(MdotMAdEventListener mdotMAdEventListener, MdotMAdRequest mdotMAdRequest) {
        nativeAd = true;
        MdotMLogger.d(MdotMCacheHandler.TABLE_NAME_AD_NATIVE, "calling load native" + nativeAd);
        new MdotMInterstitial((Activity) mdotMAdEventListener).loadInterstitial(mdotMAdEventListener, mdotMAdRequest);
    }

    public static boolean getNativeAd() {
        return nativeAd;
    }

    public static void setNativeAd(boolean z) {
        nativeAd = z;
    }
}
