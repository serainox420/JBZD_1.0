package com.mdotm.android.listener;

import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.vast.VastAd;
/* loaded from: classes3.dex */
public interface MdotMNetworkListener {
    void finishedAdParsing(MdotMAdResponse mdotMAdResponse);

    void finishedNativeParsing(VastAd vastAd);

    void finishedVastParsing(VastAd vastAd);
}
