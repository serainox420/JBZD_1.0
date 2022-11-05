package com.amazon.device.ads;
/* loaded from: classes.dex */
class NumberUtils {
    private NumberUtils() {
    }

    public static int parseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public static final long convertToMillisecondsFromNanoseconds(long j) {
        return j / 1000000;
    }

    public static final long convertToMillisecondsFromSeconds(long j) {
        return 1000 * j;
    }
}
