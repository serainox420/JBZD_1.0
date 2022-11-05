package com.facebook.ads;

import android.text.TextUtils;
/* loaded from: classes.dex */
public class AdError {
    public static final int INTERNAL_ERROR_CODE = 2001;
    public static final int LOAD_TOO_FREQUENTLY_ERROR_CODE = 1002;
    public static final int MEDIATION_ERROR_CODE = 3001;
    public static final int NETWORK_ERROR_CODE = 1000;
    public static final int NO_FILL_ERROR_CODE = 1001;
    public static final int SERVER_ERROR_CODE = 2000;

    /* renamed from: a  reason: collision with root package name */
    private final int f2008a;
    private final String b;
    public static final AdError NETWORK_ERROR = new AdError(1000, "Network Error");
    public static final AdError NO_FILL = new AdError(1001, "No Fill");
    public static final AdError LOAD_TOO_FREQUENTLY = new AdError(1002, "Ad was re-loaded too frequently");
    public static final AdError SERVER_ERROR = new AdError(2000, "Server Error");
    public static final AdError INTERNAL_ERROR = new AdError(2001, "Internal Error");
    public static final AdError MEDIATION_ERROR = new AdError(3001, "Mediation Error");
    @Deprecated
    public static final AdError MISSING_PROPERTIES = new AdError(2002, "Native ad failed to load due to missing properties");

    public AdError(int i, String str) {
        str = TextUtils.isEmpty(str) ? "unknown error" : str;
        this.f2008a = i;
        this.b = str;
    }

    public int getErrorCode() {
        return this.f2008a;
    }

    public String getErrorMessage() {
        return this.b;
    }
}
