package com.fasterxml.jackson.core.io;

import com.facebook.appevents.AppEventsConstants;
/* loaded from: classes.dex */
public final class NumberOutput {
    private static final String[] sSmallIntStrs;
    private static final String[] sSmallIntStrs2;
    private static int MILLION = 1000000;
    private static int BILLION = 1000000000;
    private static long BILLION_L = 1000000000;
    private static long MIN_INT_AS_LONG = -2147483648L;
    private static long MAX_INT_AS_LONG = 2147483647L;
    static final String SMALLEST_INT = String.valueOf(Integer.MIN_VALUE);
    static final String SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
    private static final int[] TRIPLET_TO_CHARS = new int[1000];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            int i3 = 0;
            while (i3 < 10) {
                int i4 = i;
                int i5 = 0;
                while (i5 < 10) {
                    TRIPLET_TO_CHARS[i4] = (i5 + 48) | ((i2 + 48) << 16) | ((i3 + 48) << 8);
                    i5++;
                    i4++;
                }
                i3++;
                i = i4;
            }
        }
        sSmallIntStrs = new String[]{AppEventsConstants.EVENT_PARAM_VALUE_NO, "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        sSmallIntStrs2 = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    public static int outputInt(int i, char[] cArr, int i2) {
        int i3;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return _outputSmallestI(cArr, i2);
            }
            cArr[i2] = '-';
            i = -i;
            i2++;
        }
        if (i < MILLION) {
            if (i < 1000) {
                if (i < 10) {
                    cArr[i2] = (char) (i + 48);
                    return i2 + 1;
                }
                return _leading3(i, cArr, i2);
            }
            int i4 = i / 1000;
            return _full3(i - (i4 * 1000), cArr, _leading3(i4, cArr, i2));
        } else if (i >= BILLION) {
            int i5 = i - BILLION;
            if (i5 >= BILLION) {
                i5 -= BILLION;
                i3 = i2 + 1;
                cArr[i2] = '2';
            } else {
                i3 = i2 + 1;
                cArr[i2] = '1';
            }
            return _outputFullBillion(i5, cArr, i3);
        } else {
            int i6 = i / 1000;
            int i7 = i6 / 1000;
            return _full3(i - (i6 * 1000), cArr, _full3(i6 - (i7 * 1000), cArr, _leading3(i7, cArr, i2)));
        }
    }

    public static int outputInt(int i, byte[] bArr, int i2) {
        int i3;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return _outputSmallestI(bArr, i2);
            }
            bArr[i2] = 45;
            i = -i;
            i2++;
        }
        if (i < MILLION) {
            if (i < 1000) {
                if (i < 10) {
                    int i4 = i2 + 1;
                    bArr[i2] = (byte) (i + 48);
                    return i4;
                }
                return _leading3(i, bArr, i2);
            }
            int i5 = i / 1000;
            return _full3(i - (i5 * 1000), bArr, _leading3(i5, bArr, i2));
        } else if (i >= BILLION) {
            int i6 = i - BILLION;
            if (i6 >= BILLION) {
                i6 -= BILLION;
                i3 = i2 + 1;
                bArr[i2] = 50;
            } else {
                i3 = i2 + 1;
                bArr[i2] = 49;
            }
            return _outputFullBillion(i6, bArr, i3);
        } else {
            int i7 = i / 1000;
            int i8 = i7 / 1000;
            return _full3(i - (i7 * 1000), bArr, _full3(i7 - (i8 * 1000), bArr, _leading3(i8, bArr, i2)));
        }
    }

    public static int outputLong(long j, char[] cArr, int i) {
        int _outputFullBillion;
        if (j < 0) {
            if (j > MIN_INT_AS_LONG) {
                return outputInt((int) j, cArr, i);
            }
            if (j == Long.MIN_VALUE) {
                return _outputSmallestL(cArr, i);
            }
            cArr[i] = '-';
            j = -j;
            i++;
        } else if (j <= MAX_INT_AS_LONG) {
            return outputInt((int) j, cArr, i);
        }
        long j2 = j / BILLION_L;
        long j3 = j - (BILLION_L * j2);
        if (j2 < BILLION_L) {
            _outputFullBillion = _outputUptoBillion((int) j2, cArr, i);
        } else {
            long j4 = j2 / BILLION_L;
            _outputFullBillion = _outputFullBillion((int) (j2 - (BILLION_L * j4)), cArr, _leading3((int) j4, cArr, i));
        }
        return _outputFullBillion((int) j3, cArr, _outputFullBillion);
    }

    public static int outputLong(long j, byte[] bArr, int i) {
        int _outputFullBillion;
        if (j < 0) {
            if (j > MIN_INT_AS_LONG) {
                return outputInt((int) j, bArr, i);
            }
            if (j == Long.MIN_VALUE) {
                return _outputSmallestL(bArr, i);
            }
            bArr[i] = 45;
            j = -j;
            i++;
        } else if (j <= MAX_INT_AS_LONG) {
            return outputInt((int) j, bArr, i);
        }
        long j2 = j / BILLION_L;
        long j3 = j - (BILLION_L * j2);
        if (j2 < BILLION_L) {
            _outputFullBillion = _outputUptoBillion((int) j2, bArr, i);
        } else {
            long j4 = j2 / BILLION_L;
            _outputFullBillion = _outputFullBillion((int) (j2 - (BILLION_L * j4)), bArr, _leading3((int) j4, bArr, i));
        }
        return _outputFullBillion((int) j3, bArr, _outputFullBillion);
    }

    public static String toString(int i) {
        if (i < sSmallIntStrs.length) {
            if (i >= 0) {
                return sSmallIntStrs[i];
            }
            int i2 = (-i) - 1;
            if (i2 < sSmallIntStrs2.length) {
                return sSmallIntStrs2[i2];
            }
        }
        return Integer.toString(i);
    }

    public static String toString(long j) {
        return (j > 2147483647L || j < -2147483648L) ? Long.toString(j) : toString((int) j);
    }

    public static String toString(double d) {
        return Double.toString(d);
    }

    public static String toString(float f) {
        return Float.toString(f);
    }

    private static int _outputUptoBillion(int i, char[] cArr, int i2) {
        if (i < MILLION) {
            if (i < 1000) {
                return _leading3(i, cArr, i2);
            }
            int i3 = i / 1000;
            return _outputUptoMillion(cArr, i2, i3, i - (i3 * 1000));
        }
        int i4 = i / 1000;
        int i5 = i4 / 1000;
        int i6 = i4 - (i5 * 1000);
        int _leading3 = _leading3(i5, cArr, i2);
        int i7 = TRIPLET_TO_CHARS[i6];
        int i8 = _leading3 + 1;
        cArr[_leading3] = (char) (i7 >> 16);
        int i9 = i8 + 1;
        cArr[i8] = (char) ((i7 >> 8) & 127);
        int i10 = i9 + 1;
        cArr[i9] = (char) (i7 & 127);
        int i11 = TRIPLET_TO_CHARS[i - (i4 * 1000)];
        int i12 = i10 + 1;
        cArr[i10] = (char) (i11 >> 16);
        int i13 = i12 + 1;
        cArr[i12] = (char) ((i11 >> 8) & 127);
        int i14 = i13 + 1;
        cArr[i13] = (char) (i11 & 127);
        return i14;
    }

    private static int _outputFullBillion(int i, char[] cArr, int i2) {
        int i3 = i / 1000;
        int i4 = i3 / 1000;
        int i5 = TRIPLET_TO_CHARS[i4];
        int i6 = i2 + 1;
        cArr[i2] = (char) (i5 >> 16);
        int i7 = i6 + 1;
        cArr[i6] = (char) ((i5 >> 8) & 127);
        int i8 = i7 + 1;
        cArr[i7] = (char) (i5 & 127);
        int i9 = TRIPLET_TO_CHARS[i3 - (i4 * 1000)];
        int i10 = i8 + 1;
        cArr[i8] = (char) (i9 >> 16);
        int i11 = i10 + 1;
        cArr[i10] = (char) ((i9 >> 8) & 127);
        int i12 = i11 + 1;
        cArr[i11] = (char) (i9 & 127);
        int i13 = TRIPLET_TO_CHARS[i - (i3 * 1000)];
        int i14 = i12 + 1;
        cArr[i12] = (char) (i13 >> 16);
        int i15 = i14 + 1;
        cArr[i14] = (char) ((i13 >> 8) & 127);
        int i16 = i15 + 1;
        cArr[i15] = (char) (i13 & 127);
        return i16;
    }

    private static int _outputUptoBillion(int i, byte[] bArr, int i2) {
        if (i < MILLION) {
            if (i < 1000) {
                return _leading3(i, bArr, i2);
            }
            int i3 = i / 1000;
            return _outputUptoMillion(bArr, i2, i3, i - (i3 * 1000));
        }
        int i4 = i / 1000;
        int i5 = i4 / 1000;
        int i6 = i4 - (i5 * 1000);
        int _leading3 = _leading3(i5, bArr, i2);
        int i7 = TRIPLET_TO_CHARS[i6];
        int i8 = _leading3 + 1;
        bArr[_leading3] = (byte) (i7 >> 16);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i7 >> 8);
        int i10 = i9 + 1;
        bArr[i9] = (byte) i7;
        int i11 = TRIPLET_TO_CHARS[i - (i4 * 1000)];
        int i12 = i10 + 1;
        bArr[i10] = (byte) (i11 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i11 >> 8);
        int i14 = i13 + 1;
        bArr[i13] = (byte) i11;
        return i14;
    }

    private static int _outputFullBillion(int i, byte[] bArr, int i2) {
        int i3 = i / 1000;
        int i4 = i3 / 1000;
        int i5 = i3 - (i4 * 1000);
        int i6 = TRIPLET_TO_CHARS[i4];
        int i7 = i2 + 1;
        bArr[i2] = (byte) (i6 >> 16);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i6 >> 8);
        int i9 = i8 + 1;
        bArr[i8] = (byte) i6;
        int i10 = TRIPLET_TO_CHARS[i5];
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 >> 16);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 >> 8);
        int i13 = i12 + 1;
        bArr[i12] = (byte) i10;
        int i14 = TRIPLET_TO_CHARS[i - (i3 * 1000)];
        int i15 = i13 + 1;
        bArr[i13] = (byte) (i14 >> 16);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (i14 >> 8);
        int i17 = i16 + 1;
        bArr[i16] = (byte) i14;
        return i17;
    }

    private static int _outputUptoMillion(char[] cArr, int i, int i2, int i3) {
        int i4 = TRIPLET_TO_CHARS[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                cArr[i] = (char) (i4 >> 16);
                i++;
            }
            cArr[i] = (char) ((i4 >> 8) & 127);
            i++;
        }
        int i5 = i + 1;
        cArr[i] = (char) (i4 & 127);
        int i6 = TRIPLET_TO_CHARS[i3];
        int i7 = i5 + 1;
        cArr[i5] = (char) (i6 >> 16);
        int i8 = i7 + 1;
        cArr[i7] = (char) ((i6 >> 8) & 127);
        int i9 = i8 + 1;
        cArr[i8] = (char) (i6 & 127);
        return i9;
    }

    private static int _outputUptoMillion(byte[] bArr, int i, int i2, int i3) {
        int i4 = TRIPLET_TO_CHARS[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                bArr[i] = (byte) (i4 >> 16);
                i++;
            }
            bArr[i] = (byte) (i4 >> 8);
            i++;
        }
        int i5 = i + 1;
        bArr[i] = (byte) i4;
        int i6 = TRIPLET_TO_CHARS[i3];
        int i7 = i5 + 1;
        bArr[i5] = (byte) (i6 >> 16);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i6 >> 8);
        int i9 = i8 + 1;
        bArr[i8] = (byte) i6;
        return i9;
    }

    private static int _leading3(int i, char[] cArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        if (i > 9) {
            if (i > 99) {
                cArr[i2] = (char) (i3 >> 16);
                i2++;
            }
            cArr[i2] = (char) ((i3 >> 8) & 127);
            i2++;
        }
        int i4 = i2 + 1;
        cArr[i2] = (char) (i3 & 127);
        return i4;
    }

    private static int _leading3(int i, byte[] bArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        if (i > 9) {
            if (i > 99) {
                bArr[i2] = (byte) (i3 >> 16);
                i2++;
            }
            bArr[i2] = (byte) (i3 >> 8);
            i2++;
        }
        int i4 = i2 + 1;
        bArr[i2] = (byte) i3;
        return i4;
    }

    private static int _full3(int i, char[] cArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        int i4 = i2 + 1;
        cArr[i2] = (char) (i3 >> 16);
        int i5 = i4 + 1;
        cArr[i4] = (char) ((i3 >> 8) & 127);
        int i6 = i5 + 1;
        cArr[i5] = (char) (i3 & 127);
        return i6;
    }

    private static int _full3(int i, byte[] bArr, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        int i4 = i2 + 1;
        bArr[i2] = (byte) (i3 >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i3 >> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) i3;
        return i6;
    }

    private static int _outputSmallestL(char[] cArr, int i) {
        int length = SMALLEST_LONG.length();
        SMALLEST_LONG.getChars(0, length, cArr, i);
        return length + i;
    }

    private static int _outputSmallestL(byte[] bArr, int i) {
        int length = SMALLEST_LONG.length();
        int i2 = 0;
        while (i2 < length) {
            bArr[i] = (byte) SMALLEST_LONG.charAt(i2);
            i2++;
            i++;
        }
        return i;
    }

    private static int _outputSmallestI(char[] cArr, int i) {
        int length = SMALLEST_INT.length();
        SMALLEST_INT.getChars(0, length, cArr, i);
        return length + i;
    }

    private static int _outputSmallestI(byte[] bArr, int i) {
        int length = SMALLEST_INT.length();
        int i2 = 0;
        while (i2 < length) {
            bArr[i] = (byte) SMALLEST_INT.charAt(i2);
            i2++;
            i++;
        }
        return i;
    }
}
