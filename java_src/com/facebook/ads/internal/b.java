package com.facebook.ads.internal;

import android.text.TextUtils;
import com.facebook.ads.AdError;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final AdErrorType f2113a;
    private final String b;

    public b(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public b(AdErrorType adErrorType, String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.f2113a = adErrorType;
        this.b = str;
    }

    public AdErrorType a() {
        return this.f2113a;
    }

    public AdError b() {
        return this.f2113a.a() ? new AdError(this.f2113a.getErrorCode(), this.b) : new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
    }
}
