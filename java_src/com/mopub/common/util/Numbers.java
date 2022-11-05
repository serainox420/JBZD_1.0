package com.mopub.common.util;
/* loaded from: classes3.dex */
public class Numbers {
    private Numbers() {
    }

    public static Double parseDouble(Object obj) throws ClassCastException {
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                throw new ClassCastException("Unable to parse " + obj + " as double.");
            }
        }
        throw new ClassCastException("Unable to parse " + obj + " as double.");
    }

    public static long convertMillisecondsToSecondsRoundedUp(long j) {
        return Math.round(Math.ceil(((float) j) / 1000.0f));
    }
}
