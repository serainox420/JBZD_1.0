package com.smaato.soma.settings.enums;
/* loaded from: classes3.dex */
public enum UserTargetingEnum {
    LOCATION,
    COUNTRY,
    COUNTRY_CODE,
    ZIP,
    AGE,
    GENDER,
    KWS;
    

    /* renamed from: a  reason: collision with root package name */
    private String f5257a;

    static {
        LOCATION.f5257a = "LOCATION";
        COUNTRY.f5257a = "COUNTRY";
        COUNTRY_CODE.f5257a = "COUNTRY_CODE";
        ZIP.f5257a = "ZIP";
        AGE.f5257a = "AGE";
        GENDER.f5257a = "GENDER";
        KWS.f5257a = "GENDER";
    }

    public String getValue() {
        return this.f5257a;
    }
}
