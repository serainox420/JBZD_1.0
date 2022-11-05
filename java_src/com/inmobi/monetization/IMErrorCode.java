package com.inmobi.monetization;

import com.inmobi.monetization.internal.AdErrorCode;
/* loaded from: classes2.dex */
public enum IMErrorCode {
    INVALID_REQUEST("Invalid ad request"),
    INTERNAL_ERROR("An error occurred while fetching the ad"),
    NO_FILL("The ad request was successful, but no ad was returned"),
    DO_MONETIZE("Please load a mediation network"),
    DO_NOTHING("No Ads"),
    NETWORK_ERROR("Ad network failed to retrieve ad");
    

    /* renamed from: a  reason: collision with root package name */
    private String f3833a;

    IMErrorCode(String str) {
        this.f3833a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f3833a;
    }

    public void setMessage(String str) {
        this.f3833a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IMErrorCode a(AdErrorCode adErrorCode) {
        IMErrorCode iMErrorCode;
        IMErrorCode iMErrorCode2 = INTERNAL_ERROR;
        switch (adErrorCode) {
            case INVALID_REQUEST:
            case AD_CLICK_IN_PROGRESS:
            case AD_DOWNLOAD_IN_PROGRESS:
            case INVALID_APP_ID:
                iMErrorCode = INVALID_REQUEST;
                break;
            case AD_RENDERING_TIMEOUT:
            case INTERNAL_ERROR:
                iMErrorCode = INTERNAL_ERROR;
                break;
            case NO_FILL:
                iMErrorCode = NO_FILL;
                break;
            case NETWORK_ERROR:
                iMErrorCode = NETWORK_ERROR;
                break;
            case DO_MONETIZE:
                iMErrorCode = DO_MONETIZE;
                break;
            case DO_NOTHING:
                iMErrorCode = DO_NOTHING;
                break;
            default:
                iMErrorCode = INTERNAL_ERROR;
                break;
        }
        iMErrorCode.setMessage(adErrorCode.toString());
        return iMErrorCode;
    }
}
