package com.facebook.ads.internal.server;

import android.text.TextUtils;
import com.mopub.common.AdType;
import java.util.Locale;
/* loaded from: classes.dex */
public enum AdPlacementType {
    UNKNOWN("unknown"),
    BANNER("banner"),
    INTERSTITIAL("interstitial"),
    NATIVE("native"),
    INSTREAM("instream"),
    REWARDED_VIDEO(AdType.REWARDED_VIDEO);
    

    /* renamed from: a  reason: collision with root package name */
    private String f2202a;

    AdPlacementType(String str) {
        this.f2202a = str;
    }

    public static AdPlacementType fromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNKNOWN;
        }
        try {
            return valueOf(str.toUpperCase(Locale.US));
        } catch (Exception e) {
            return UNKNOWN;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f2202a;
    }
}
