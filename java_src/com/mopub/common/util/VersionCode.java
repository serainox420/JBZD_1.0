package com.mopub.common.util;

import android.os.Build;
/* loaded from: classes3.dex */
public enum VersionCode {
    BASE(1),
    BASE_1_1(2),
    CUPCAKE(3),
    DONUT(4),
    ECLAIR(5),
    ECLAIR_0_1(6),
    ECLAIR_MR1(7),
    FROYO(8),
    GINGERBREAD(9),
    GINGERBREAD_MR1(10),
    HONEYCOMB(11),
    HONEYCOMB_MR1(12),
    HONEYCOMB_MR2(13),
    ICE_CREAM_SANDWICH(14),
    ICE_CREAM_SANDWICH_MR1(15),
    JELLY_BEAN(16),
    JELLY_BEAN_MR1(17),
    JELLY_BEAN_MR2(18),
    KITKAT(19),
    CUR_DEVELOPMENT(10000);
    

    /* renamed from: a  reason: collision with root package name */
    private int f4398a;

    public static VersionCode currentApiLevel() {
        return a(Build.VERSION.SDK_INT);
    }

    private static VersionCode a(int i) {
        VersionCode[] values;
        for (VersionCode versionCode : values()) {
            if (versionCode.getApiLevel() == i) {
                return versionCode;
            }
        }
        return CUR_DEVELOPMENT;
    }

    VersionCode(int i) {
        this.f4398a = i;
    }

    public int getApiLevel() {
        return this.f4398a;
    }

    public boolean isAtMost(VersionCode versionCode) {
        return getApiLevel() <= versionCode.getApiLevel();
    }

    public boolean isAtLeast(VersionCode versionCode) {
        return getApiLevel() >= versionCode.getApiLevel();
    }

    public boolean isBelow(VersionCode versionCode) {
        return getApiLevel() < versionCode.getApiLevel();
    }
}
