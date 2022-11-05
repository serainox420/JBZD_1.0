package com.google.android.gms.games.internal.constants;
/* loaded from: classes2.dex */
public final class TimeSpan {
    private TimeSpan() {
        throw new AssertionError("Uninstantiable");
    }

    public static String zziL(int i) {
        switch (i) {
            case 0:
                return "DAILY";
            case 1:
                return "WEEKLY";
            case 2:
                return "ALL_TIME";
            default:
                throw new IllegalArgumentException(new StringBuilder(29).append("Unknown time span ").append(i).toString());
        }
    }
}
