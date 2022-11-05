package com.flurry.sdk;

import com.flurry.android.AdCreative;
/* loaded from: classes2.dex */
public enum bd {
    BANNER("banner"),
    TAKEOVER(AdCreative.kFormatTakeover),
    STREAM("stream"),
    NATIVE("native"),
    UNKNOWN("unknown");
    
    private final String f;

    bd(String str) {
        this.f = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f;
    }
}
