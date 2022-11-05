package com.fasterxml.jackson.databind.util;

import com.inmobi.commons.analytics.db.AnalyticsEvent;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class ISO8601Utils {
    @Deprecated
    private static final String GMT_ID = "GMT";
    @Deprecated
    private static final TimeZone TIMEZONE_GMT = TimeZone.getTimeZone(GMT_ID);
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);
    private static final TimeZone TIMEZONE_Z = TIMEZONE_UTC;

    @Deprecated
    public static TimeZone timeZoneGMT() {
        return TIMEZONE_GMT;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder((timeZone.getRawOffset() == 0 ? "Z".length() : "+hh:mm".length()) + "yyyy-MM-ddThh:mm:ss".length() + (z ? ".sss".length() : 0));
        padInt(sb, gregorianCalendar.get(1), "yyyy".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, "MM".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), "dd".length());
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), "hh".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), "mm".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), AnalyticsEvent.TYPE_START_SESSION.length());
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), "sss".length());
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int abs = Math.abs((offset / 60000) / 60);
            int abs2 = Math.abs((offset / 60000) % 60);
            sb.append(offset < 0 ? '-' : '+');
            padInt(sb, abs, "hh".length());
            sb.append(':');
            padInt(sb, abs2, "mm".length());
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0208  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        RuntimeException runtimeException;
        String message;
        int i;
        int i2;
        int i3;
        int i4;
        int length;
        TimeZone timeZone;
        char charAt;
        try {
            int index = parsePosition.getIndex();
            int i5 = index + 4;
            int parseInt = parseInt(str, index, i5);
            int i6 = checkOffset(str, i5, '-') ? i5 + 1 : i5;
            int i7 = i6 + 2;
            int parseInt2 = parseInt(str, i6, i7);
            int i8 = checkOffset(str, i7, '-') ? i7 + 1 : i7;
            int i9 = i8 + 2;
            int parseInt3 = parseInt(str, i8, i9);
            boolean checkOffset = checkOffset(str, i9, 'T');
            if (!checkOffset && str.length() <= i9) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(parseInt, parseInt2 - 1, parseInt3);
                parsePosition.setIndex(i9);
                return gregorianCalendar.getTime();
            }
            if (checkOffset) {
                int i10 = i9 + 1;
                int i11 = i10 + 2;
                int parseInt4 = parseInt(str, i10, i11);
                int i12 = checkOffset(str, i11, ':') ? i11 + 1 : i11;
                i9 = i12 + 2;
                int parseInt5 = parseInt(str, i12, i9);
                if (checkOffset(str, i9, ':')) {
                    i9++;
                }
                if (str.length() <= i9 || (charAt = str.charAt(i9)) == 'Z' || charAt == '+' || charAt == '-') {
                    i3 = parseInt5;
                    i4 = parseInt4;
                    i = 0;
                    i2 = 0;
                } else {
                    int i13 = i9 + 2;
                    int parseInt6 = parseInt(str, i9, i13);
                    if (parseInt6 > 59 && parseInt6 < 63) {
                        parseInt6 = 59;
                    }
                    if (checkOffset(str, i13, '.')) {
                        int i14 = i13 + 1;
                        int indexOfNonDigit = indexOfNonDigit(str, i14 + 1);
                        int min = Math.min(indexOfNonDigit, i14 + 3);
                        int parseInt7 = parseInt(str, i14, min);
                        switch (min - i14) {
                            case 1:
                                parseInt7 *= 100;
                                break;
                            case 2:
                                parseInt7 *= 10;
                                break;
                        }
                        i4 = parseInt4;
                        i2 = parseInt6;
                        i9 = indexOfNonDigit;
                        i3 = parseInt5;
                        i = parseInt7;
                    } else {
                        i4 = parseInt4;
                        i2 = parseInt6;
                        i9 = i13;
                        i3 = parseInt5;
                        i = 0;
                    }
                }
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
            }
            if (str.length() <= i9) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char charAt2 = str.charAt(i9);
            if (charAt2 == 'Z') {
                timeZone = TIMEZONE_Z;
                length = i9 + 1;
            } else if (charAt2 == '+' || charAt2 == '-') {
                String substring = str.substring(i9);
                length = i9 + substring.length();
                if ("+0000".equals(substring) || "+00:00".equals(substring)) {
                    timeZone = TIMEZONE_Z;
                } else {
                    String str2 = GMT_ID + substring;
                    timeZone = TimeZone.getTimeZone(str2);
                    String id = timeZone.getID();
                    if (!id.equals(str2) && !id.replace(":", "").equals(str2)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str2 + " given, resolves to " + timeZone.getID());
                    }
                }
            } else {
                throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt2 + "'");
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, parseInt);
            gregorianCalendar2.set(2, parseInt2 - 1);
            gregorianCalendar2.set(5, parseInt3);
            gregorianCalendar2.set(11, i4);
            gregorianCalendar2.set(12, i3);
            gregorianCalendar2.set(13, i2);
            gregorianCalendar2.set(14, i);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (NumberFormatException e) {
            runtimeException = e;
            String str3 = str == null ? null : '\"' + str + '\"';
            message = runtimeException.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + runtimeException.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date " + str3 + ": " + message, parsePosition.getIndex());
            parseException.initCause(runtimeException);
            throw parseException;
        } catch (IllegalArgumentException e2) {
            runtimeException = e2;
            if (str == null) {
            }
            message = runtimeException.getMessage();
            if (message != null) {
            }
            message = "(" + runtimeException.getClass().getName() + ")";
            ParseException parseException2 = new ParseException("Failed to parse date " + str3 + ": " + message, parsePosition.getIndex());
            parseException2.initCause(runtimeException);
            throw parseException2;
        } catch (IndexOutOfBoundsException e3) {
            runtimeException = e3;
            if (str == null) {
            }
            message = runtimeException.getMessage();
            if (message != null) {
            }
            message = "(" + runtimeException.getClass().getName() + ")";
            ParseException parseException22 = new ParseException("Failed to parse date " + str3 + ": " + message, parsePosition.getIndex());
            parseException22.initCause(runtimeException);
            throw parseException22;
        }
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        int i4 = 0;
        if (i < i2) {
            i3 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = -digit;
        } else {
            i3 = i;
        }
        while (i3 < i2) {
            int i5 = i3 + 1;
            int digit2 = Character.digit(str.charAt(i3), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = (i4 * 10) - digit2;
            i3 = i5;
        }
        return -i4;
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt >= '0' && charAt <= '9') {
                i++;
            } else {
                return i;
            }
        }
        return str.length();
    }
}
