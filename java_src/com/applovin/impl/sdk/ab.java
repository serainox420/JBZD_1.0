package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements AppLovinAdRewardListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ aa f1582a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(aa aaVar) {
        this.f1582a = aaVar;
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f1582a.f1581a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "User declined to view");
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map map) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f1582a.f1581a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "User over quota: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f1582a.f1581a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "Reward rejected: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f1582a.f1581a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "Reward validated: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f1582a.f1581a;
        appLovinSdkImpl.getLogger().d("IncentivizedAdController", "Reward validation failed: " + i);
    }
}
