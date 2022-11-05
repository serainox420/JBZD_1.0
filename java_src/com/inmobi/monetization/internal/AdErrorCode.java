package com.inmobi.monetization.internal;
/* loaded from: classes2.dex */
public enum AdErrorCode {
    INVALID_REQUEST("Invalid ad request"),
    INTERNAL_ERROR("An error occurred while fetching the ad"),
    NO_FILL("The ad request was successful, but no ad was returned"),
    AD_CLICK_IN_PROGRESS("Ad click is in progress, cannot load new ad"),
    AD_DOWNLOAD_IN_PROGRESS("Ad download is in progress, cannot load new ad"),
    INVALID_APP_ID("Invalid App Id"),
    ADREQUEST_CANCELLED("Stop loading invoked on the ad"),
    AD_RENDERING_TIMEOUT("Failed to render ad"),
    DO_MONETIZE("Please load a mediation network"),
    DO_NOTHING("No Ads"),
    NETWORK_ERROR("Ad network failed to retrieve ad");
    

    /* renamed from: a  reason: collision with root package name */
    private String f3848a;

    AdErrorCode(String str) {
        this.f3848a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f3848a;
    }

    public void setMessage(String str) {
        this.f3848a = str;
    }
}
