package com.amazon.device.ads;
/* loaded from: classes.dex */
class MobileAdsLoggerFactory {
    public MobileAdsLogger createMobileAdsLogger(String str) {
        return new MobileAdsLogger(new LogcatLogger()).mo33withLogTag(str);
    }
}
