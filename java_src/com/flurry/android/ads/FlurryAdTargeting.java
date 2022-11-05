package com.flurry.android.ads;

import com.flurry.sdk.e;
import java.util.Map;
/* loaded from: classes.dex */
public final class FlurryAdTargeting extends e {
    @Override // com.flurry.sdk.e
    @Deprecated
    public final void setLocation(float f, float f2) {
    }

    @Override // com.flurry.sdk.e
    @Deprecated
    public final void clearLocation() {
    }

    @Override // com.flurry.sdk.e
    public final void setUserCookies(Map<String, String> map) {
        super.setUserCookies(map);
    }

    @Override // com.flurry.sdk.e
    public final void clearUserCookies() {
        super.clearUserCookies();
    }

    @Override // com.flurry.sdk.e
    @Deprecated
    public final void setKeywords(Map<String, String> map) {
    }

    @Override // com.flurry.sdk.e
    @Deprecated
    public final void clearKeywords() {
    }

    @Override // com.flurry.sdk.e
    @Deprecated
    public final void setAge(int i) {
    }

    @Override // com.flurry.sdk.e
    @Deprecated
    public final void clearAge() {
    }

    @Deprecated
    public final void setGender(FlurryGender flurryGender) {
    }

    @Override // com.flurry.sdk.e
    @Deprecated
    public final void clearGender() {
    }

    @Override // com.flurry.sdk.e
    public final void setEnableTestAds(boolean z) {
        super.setEnableTestAds(z);
    }
}
