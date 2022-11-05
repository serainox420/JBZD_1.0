package com.inmobi.monetization;

import java.util.Map;
/* loaded from: classes2.dex */
public interface IMBannerListener {
    void onBannerInteraction(IMBanner iMBanner, Map<String, String> map);

    void onBannerRequestFailed(IMBanner iMBanner, IMErrorCode iMErrorCode);

    void onBannerRequestSucceeded(IMBanner iMBanner);

    void onDismissBannerScreen(IMBanner iMBanner);

    void onLeaveApplication(IMBanner iMBanner);

    void onShowBannerScreen(IMBanner iMBanner);
}
