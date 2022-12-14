package com.google.gson.internal.a.a;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* compiled from: ISO8601Utils.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f3634a = TimeZone.getTimeZone("UTC");

    /* JADX WARN: Removed duplicated region for block: B:45:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0221  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date a(String str, ParsePosition parsePosition) throws ParseException {
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
            int a2 = a(str, index, i5);
            int i6 = a(str, i5, '-') ? i5 + 1 : i5;
            int i7 = i6 + 2;
            int a3 = a(str, i6, i7);
            int i8 = a(str, i7, '-') ? i7 + 1 : i7;
            int i9 = i8 + 2;
            int a4 = a(str, i8, i9);
            boolean a5 = a(str, i9, 'T');
            if (!a5 && str.length() <= i9) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(a2, a3 - 1, a4);
                parsePosition.setIndex(i9);
                return gregorianCalendar.getTime();
            }
            if (a5) {
                int i10 = i9 + 1;
                int i11 = i10 + 2;
                int a6 = a(str, i10, i11);
                int i12 = a(str, i11, ':') ? i11 + 1 : i11;
                i9 = i12 + 2;
                int a7 = a(str, i12, i9);
                if (a(str, i9, ':')) {
                    i9++;
                }
                if (str.length() <= i9 || (charAt = str.charAt(i9)) == 'Z' || charAt == '+' || charAt == '-') {
                    i3 = a7;
                    i4 = a6;
                    i = 0;
                    i2 = 0;
                } else {
                    int i13 = i9 + 2;
                    int a8 = a(str, i9, i13);
                    if (a8 > 59 && a8 < 63) {
                        a8 = 59;
                    }
                    if (a(str, i13, '.')) {
                        int i14 = i13 + 1;
                        int a9 = a(str, i14 + 1);
                        int min = Math.min(a9, i14 + 3);
                        int a10 = a(str, i14, min);
                        switch (min - i14) {
                            case 1:
                                a10 *= 100;
                                break;
                            case 2:
                                a10 *= 10;
                                break;
                        }
                        i4 = a6;
                        i2 = a8;
                        i9 = a9;
                        i3 = a7;
                        i = a10;
                    } else {
                        i4 = a6;
                        i2 = a8;
                        i9 = i13;
                        i3 = a7;
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
                timeZone = f3634a;
                length = i9 + 1;
            } else if (charAt2 == '+' || charAt2 == '-') {
                String substring = str.substring(i9);
                if (substring.length() < 5) {
                    substring = substring + "00";
                }
                length = i9 + substring.length();
                if ("+0000".equals(substring) || "+00:00".equals(substring)) {
                    timeZone = f3634a;
                } else {
                    String str2 = "GMT" + substring;
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
            gregorianCalendar2.set(1, a2);
            gregorianCalendar2.set(2, a3 - 1);
            gregorianCalendar2.set(5, a4);
            gregorianCalendar2.set(11, i4);
            gregorianCalendar2.set(12, i3);
            gregorianCalendar2.set(13, i2);
            gregorianCalendar2.set(14, i);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (NumberFormatException e) {
            runtimeException = e;
            String str3 = str == null ? null : '\"' + str + "'";
            message = runtimeException.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + runtimeException.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str3 + "]: " + message, parsePosition.getIndex());
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
            ParseException parseException2 = new ParseException("Failed to parse date [" + str3 + "]: " + message, parsePosition.getIndex());
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
            ParseException parseException22 = new ParseException("Failed to parse date [" + str3 + "]: " + message, parsePosition.getIndex());
            parseException22.initCause(runtimeException);
            throw parseException22;
        }
    }

    private static boolean a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int a(String str, int i, int i2) throws NumberFormatException {
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

    private static int a(String str, int i) {
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
