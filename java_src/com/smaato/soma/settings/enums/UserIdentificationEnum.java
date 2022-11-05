package com.smaato.soma.settings.enums;
/* loaded from: classes3.dex */
public enum UserIdentificationEnum {
    FACEBOOK_ATTRIBUTION_ID,
    GOOGLE_ADVERTISING_ID,
    CARRIER,
    CARRIER_CODE,
    IMEI,
    EMAIL,
    COPPA;
    

    /* renamed from: a  reason: collision with root package name */
    private String f5256a;

    static {
        FACEBOOK_ATTRIBUTION_ID.f5256a = "FACEBOOK_ATTRIBUTION_ID";
        GOOGLE_ADVERTISING_ID.f5256a = "GOOGLE_ADVERTISING_ID";
        CARRIER.f5256a = "CARRIER";
        CARRIER_CODE.f5256a = "CARRIER_CODE";
        IMEI.f5256a = "IMEI";
        EMAIL.f5256a = "EMAIL";
        COPPA.f5256a = "COPPA";
    }

    public String getValue() {
        return this.f5256a;
    }
}
