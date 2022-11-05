package com.mopub.mobileads;

import com.mopub.common.Preconditions;
/* loaded from: classes3.dex */
public enum VastErrorCode {
    XML_PARSING_ERROR("100"),
    WRAPPER_TIMEOUT("301"),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f4465a;

    VastErrorCode(String str) {
        Preconditions.checkNotNull(str, "errorCode cannot be null");
        this.f4465a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f4465a;
    }
}
