package com.google.android.gms.games.internal.constants;
/* loaded from: classes2.dex */
public final class PlatformType {
    private PlatformType() {
    }

    public static String zziL(int i) {
        switch (i) {
            case 0:
                return "ANDROID";
            case 1:
                return "IOS";
            case 2:
                return "WEB_APP";
            default:
                throw new IllegalArgumentException(new StringBuilder(34).append("Unknown platform type: ").append(i).toString());
        }
    }
}
