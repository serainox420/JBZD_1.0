package com.applovin.sdk;

import java.util.Map;
/* loaded from: classes.dex */
public interface AppLovinAdRewardListener {
    void userDeclinedToViewAd(AppLovinAd appLovinAd);

    void userOverQuota(AppLovinAd appLovinAd, Map map);

    void userRewardRejected(AppLovinAd appLovinAd, Map map);

    void userRewardVerified(AppLovinAd appLovinAd, Map map);

    void validationRequestFailed(AppLovinAd appLovinAd, int i);
}
