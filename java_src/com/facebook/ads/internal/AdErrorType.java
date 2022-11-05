package com.facebook.ads.internal;

import com.facebook.ads.AdError;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.location.places.Place;
/* loaded from: classes.dex */
public enum AdErrorType {
    UNKNOWN_ERROR(-1, "unknown error", false),
    NETWORK_ERROR(1000, "Network Error", true),
    NO_FILL(1001, "No Fill", true),
    LOAD_TOO_FREQUENTLY(1002, "Ad was re-loaded too frequently", true),
    DISABLED_APP(Place.TYPE_COUNTRY, "App is disabled from making ad requests", true),
    SERVER_ERROR(2000, "Server Error", true),
    INTERNAL_ERROR(2001, "Internal Error", true),
    START_BEFORE_INIT(CastStatusCodes.APPLICATION_NOT_FOUND, "initAd must be called before startAd", true),
    AD_REQUEST_FAILED(1111, "Facebook Ads SDK request for ads failed", false),
    AD_REQUEST_TIMEOUT(1112, "Facebook Ads SDK request for ads timed out", false),
    PARSER_FAILURE(1201, "Failed to parse Facebook Ads SDK delivery response", false),
    UNKNOWN_RESPONSE(1202, "Unknown Facebook Ads SDK delivery response type", false),
    ERROR_MESSAGE(1203, "Facebook Ads SDK delivery response Error message", true),
    NO_AD_PLACEMENT(1302, "Facebook Ads SDK returned no ad placements", false);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f2056a;
    private final String b;
    private final boolean c;

    AdErrorType(int i, String str, boolean z) {
        this.f2056a = i;
        this.b = str;
        this.c = z;
    }

    public static AdErrorType adErrorTypeFromCode(int i) {
        return adErrorTypeFromCode(i, UNKNOWN_ERROR);
    }

    public static AdErrorType adErrorTypeFromCode(int i, AdErrorType adErrorType) {
        AdErrorType[] values;
        for (AdErrorType adErrorType2 : values()) {
            if (adErrorType2.getErrorCode() == i) {
                return adErrorType2;
            }
        }
        return adErrorType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.c;
    }

    public AdError getAdError(String str) {
        return new b(this, str).b();
    }

    public b getAdErrorWrapper(String str) {
        return new b(this, str);
    }

    public String getDefaultErrorMessage() {
        return this.b;
    }

    public int getErrorCode() {
        return this.f2056a;
    }
}
