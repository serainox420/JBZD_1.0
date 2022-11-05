package com.fasterxml.jackson.core.io;

import com.facebook.common.time.Clock;
import java.math.BigDecimal;
/* loaded from: classes.dex */
public final class NumberInput {
    static final long L_BILLION = 1000000000;
    public static final String NASTY_SMALL_DOUBLE = "2.2250738585072012e-308";
    static final String MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
    static final String MAX_LONG_STR = String.valueOf((long) Clock.MAX_TIME);

    public static int parseInt(char[] cArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = cArr[i] - '0';
        if (i2 > 4) {
            i = i + 1 + 1 + 1 + 1;
            i8 = (((((((i8 * 10) + (cArr[i3] - '0')) * 10) + (cArr[i4] - '0')) * 10) + (cArr[i5] - '0')) * 10) + (cArr[i] - '0');
            i2 -= 4;
            if (i2 > 4) {
                int i9 = i + 1 + 1 + 1;
                return (((((((i8 * 10) + (cArr[i6] - '0')) * 10) + (cArr[i7] - '0')) * 10) + (cArr[i9] - '0')) * 10) + (cArr[i9 + 1] - '0');
            }
        }
        if (i2 > 1) {
            int i10 = i + 1;
            int i11 = (i8 * 10) + (cArr[i10] - '0');
            if (i2 > 2) {
                int i12 = i10 + 1;
                int i13 = (i11 * 10) + (cArr[i12] - '0');
                if (i2 > 3) {
                    return (i13 * 10) + (cArr[i12 + 1] - '0');
                }
                return i13;
            }
            return i11;
        }
        return i8;
    }

    public static int parseInt(String str) {
        int i = 1;
        char charAt = str.charAt(0);
        int length = str.length();
        boolean z = charAt == '-';
        if (z) {
            if (length == 1 || length > 10) {
                return Integer.parseInt(str);
            }
            charAt = str.charAt(1);
            i = 2;
        } else if (length > 9) {
            return Integer.parseInt(str);
        }
        if (charAt > '9' || charAt < '0') {
            return Integer.parseInt(str);
        }
        int i2 = charAt - '0';
        if (i < length) {
            int i3 = i + 1;
            char charAt2 = str.charAt(i);
            if (charAt2 > '9' || charAt2 < '0') {
                return Integer.parseInt(str);
            }
            i2 = (i2 * 10) + (charAt2 - '0');
            if (i3 < length) {
                int i4 = i3 + 1;
                char charAt3 = str.charAt(i3);
                if (charAt3 > '9' || charAt3 < '0') {
                    return Integer.parseInt(str);
                }
                i2 = (i2 * 10) + (charAt3 - '0');
                if (i4 < length) {
                    while (true) {
                        int i5 = i4 + 1;
                        char charAt4 = str.charAt(i4);
                        if (charAt4 > '9' || charAt4 < '0') {
                            break;
                        }
                        i2 = (i2 * 10) + (charAt4 - '0');
                        if (i5 >= length) {
                            break;
                        }
                        i4 = i5;
                    }
                    return Integer.parseInt(str);
                }
            }
        }
        return z ? -i2 : i2;
    }

    public static long parseLong(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return parseInt(cArr, i3 + i, 9) + (parseInt(cArr, i, i3) * L_BILLION);
    }

    public static long parseLong(String str) {
        return str.length() <= 9 ? parseInt(str) : Long.parseLong(str);
    }

    public static boolean inLongRange(char[] cArr, int i, int i2, boolean z) {
        String str = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static boolean inLongRange(String str, boolean z) {
        String str2 = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            int charAt = str.charAt(i) - str2.charAt(i);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int parseAsInt(String str, int i) {
        String trim;
        int length;
        int i2;
        String str2;
        int i3 = 0;
        if (str != null && (length = (trim = str.trim()).length()) != 0) {
            try {
                if (0 < length) {
                    char charAt = trim.charAt(0);
                    if (charAt == '+') {
                        str2 = trim.substring(1);
                        i2 = str2.length();
                    } else if (charAt == '-') {
                        i3 = 1;
                        i2 = length;
                        str2 = trim;
                    }
                    while (i3 < i2) {
                        char charAt2 = str2.charAt(i3);
                        if (charAt2 <= '9' && charAt2 >= '0') {
                            i3++;
                        } else {
                            try {
                                return (int) parseDouble(str2);
                            } catch (NumberFormatException e) {
                                return i;
                            }
                        }
                    }
                    return Integer.parseInt(str2);
                }
                return Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                return i;
            }
            i2 = length;
            str2 = trim;
            while (i3 < i2) {
            }
        } else {
            return i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long parseAsLong(String str, long j) {
        String trim;
        int length;
        int i;
        String str2;
        int i2 = 0;
        if (str != null && (length = (trim = str.trim()).length()) != 0) {
            try {
                if (0 < length) {
                    char charAt = trim.charAt(0);
                    if (charAt == '+') {
                        str2 = trim.substring(1);
                        i = str2.length();
                    } else if (charAt == '-') {
                        i2 = 1;
                        i = length;
                        str2 = trim;
                    }
                    while (i2 < i) {
                        char charAt2 = str2.charAt(i2);
                        if (charAt2 <= '9' && charAt2 >= '0') {
                            i2++;
                        } else {
                            try {
                                return (long) parseDouble(str2);
                            } catch (NumberFormatException e) {
                                return j;
                            }
                        }
                    }
                    return Long.parseLong(str2);
                }
                return Long.parseLong(str2);
            } catch (NumberFormatException e2) {
                return j;
            }
            i = length;
            str2 = trim;
            while (i2 < i) {
            }
        } else {
            return j;
        }
    }

    public static double parseAsDouble(String str, double d) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() != 0) {
                try {
                    return parseDouble(trim);
                } catch (NumberFormatException e) {
                    return d;
                }
            }
            return d;
        }
        return d;
    }

    public static double parseDouble(String str) throws NumberFormatException {
        if (NASTY_SMALL_DOUBLE.equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException e) {
            throw _badBD(str);
        }
    }

    public static BigDecimal parseBigDecimal(char[] cArr) throws NumberFormatException {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw _badBD(new String(cArr, i, i2));
        }
    }

    private static NumberFormatException _badBD(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }
}
