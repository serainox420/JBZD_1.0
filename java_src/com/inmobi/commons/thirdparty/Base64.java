package com.inmobi.commons.thirdparty;

import com.flurry.android.Constants;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class Base64 {
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f3824a;

    static {
        f3824a = !Base64.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f3825a;
        public int b;

        a() {
        }
    }

    public static byte[] decode(String str, int i) {
        return decode(str.getBytes(), i);
    }

    public static byte[] decode(byte[] bArr, int i) {
        return decode(bArr, 0, bArr.length, i);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        b bVar = new b(i3, new byte[(i2 * 3) / 4]);
        if (!bVar.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (bVar.b == bVar.f3825a.length) {
            return bVar.f3825a;
        }
        byte[] bArr2 = new byte[bVar.b];
        System.arraycopy(bVar.f3825a, 0, bArr2, 0, bVar.b);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends a {
        private static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int e;
        private int f;
        private final int[] g;

        public b(int i, byte[] bArr) {
            this.f3825a = bArr;
            this.g = (i & 8) == 0 ? c : d;
            this.e = 0;
            this.f = 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
            if (r14 != false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
            r10.e = r3;
            r10.f = r2;
            r10.b = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0105, code lost:
            switch(r3) {
                case 0: goto L21;
                case 1: goto L23;
                case 2: goto L25;
                case 3: goto L26;
                case 4: goto L27;
                default: goto L21;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0108, code lost:
            r10.e = r3;
            r10.b = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x010f, code lost:
            r10.e = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0115, code lost:
            r5[r0] = (byte) (r2 >> 4);
            r0 = r0 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x011e, code lost:
            r1 = r0 + 1;
            r5[r0] = (byte) (r2 >> 10);
            r0 = r1 + 1;
            r5[r1] = (byte) (r2 >> 2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x012d, code lost:
            r10.e = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:?, code lost:
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:?, code lost:
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean a(byte[] bArr, int i, int i2, boolean z) {
            int i3;
            int i4;
            if (this.e == 6) {
                return false;
            }
            int i5 = i2 + i;
            int i6 = this.e;
            int i7 = this.f;
            int i8 = 0;
            byte[] bArr2 = this.f3825a;
            int[] iArr = this.g;
            int i9 = i;
            while (true) {
                if (i9 < i5) {
                    if (i6 == 0) {
                        while (i9 + 4 <= i5 && (i7 = (iArr[bArr[i9] & Constants.UNKNOWN] << 18) | (iArr[bArr[i9 + 1] & Constants.UNKNOWN] << 12) | (iArr[bArr[i9 + 2] & Constants.UNKNOWN] << 6) | iArr[bArr[i9 + 3] & Constants.UNKNOWN]) >= 0) {
                            bArr2[i8 + 2] = (byte) i7;
                            bArr2[i8 + 1] = (byte) (i7 >> 8);
                            bArr2[i8] = (byte) (i7 >> 16);
                            i8 += 3;
                            i9 += 4;
                        }
                        if (i9 >= i5) {
                            i3 = i7;
                        }
                    }
                    int i10 = i9 + 1;
                    int i11 = iArr[bArr[i9] & Constants.UNKNOWN];
                    switch (i6) {
                        case 0:
                            if (i11 >= 0) {
                                i4 = i6 + 1;
                                i7 = i11;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        case 1:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                i4 = i6 + 1;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        case 2:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                i4 = i6 + 1;
                                continue;
                            } else if (i11 == -2) {
                                bArr2[i8] = (byte) (i7 >> 4);
                                i4 = 4;
                                i8++;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i6 = i4;
                            i9 = i10;
                            break;
                        case 3:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                bArr2[i8 + 2] = (byte) i7;
                                bArr2[i8 + 1] = (byte) (i7 >> 8);
                                bArr2[i8] = (byte) (i7 >> 16);
                                i8 += 3;
                                i4 = 0;
                                continue;
                            } else if (i11 == -2) {
                                bArr2[i8 + 1] = (byte) (i7 >> 2);
                                bArr2[i8] = (byte) (i7 >> 10);
                                i8 += 2;
                                i4 = 5;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i6 = i4;
                            i9 = i10;
                            break;
                        case 4:
                            if (i11 == -2) {
                                i4 = i6 + 1;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        case 5:
                            if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                    }
                    i4 = i6;
                    i6 = i4;
                    i9 = i10;
                } else {
                    i3 = i7;
                }
            }
        }
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return new String(encode(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static String encodeToString(byte[] bArr, int i, int i2, int i3) {
        try {
            return new String(encode(bArr, i, i2, i3), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        c cVar = new c(i3, null);
        int i4 = (i2 / 3) * 4;
        if (cVar.d) {
            if (i2 % 3 > 0) {
                i4 += 4;
            }
        } else {
            switch (i2 % 3) {
                case 1:
                    i4 += 2;
                    break;
                case 2:
                    i4 += 3;
                    break;
            }
        }
        if (cVar.e && i2 > 0) {
            i4 += (cVar.f ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        cVar.f3825a = new byte[i4];
        cVar.a(bArr, i, i2, true);
        if (f3824a || cVar.b == i4) {
            return cVar.f3825a;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends a {
        static final /* synthetic */ boolean g;
        private static final byte[] h;
        private static final byte[] i;
        int c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        private final byte[] j;
        private int k;
        private final byte[] l;

        static {
            g = !Base64.class.desiredAssertionStatus();
            h = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
            i = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        }

        public c(int i2, byte[] bArr) {
            boolean z = true;
            this.f3825a = bArr;
            this.d = (i2 & 1) == 0;
            this.e = (i2 & 2) == 0;
            this.f = (i2 & 4) == 0 ? false : z;
            this.l = (i2 & 8) == 0 ? h : i;
            this.j = new byte[2];
            this.c = 0;
            this.k = this.e ? 19 : -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public boolean a(byte[] bArr, int i2, int i3, boolean z) {
            int i4;
            int i5;
            byte b;
            int i6;
            byte b2;
            int i7;
            byte b3;
            int i8;
            int i9;
            int i10;
            int i11;
            byte[] bArr2 = this.l;
            byte[] bArr3 = this.f3825a;
            int i12 = 0;
            int i13 = this.k;
            int i14 = i3 + i2;
            int i15 = -1;
            switch (this.c) {
                case 0:
                    i4 = i2;
                    break;
                case 1:
                    if (i2 + 2 <= i14) {
                        int i16 = i2 + 1;
                        i15 = ((this.j[0] & Constants.UNKNOWN) << 16) | ((bArr[i2] & Constants.UNKNOWN) << 8) | (bArr[i16] & Constants.UNKNOWN);
                        this.c = 0;
                        i4 = i16 + 1;
                        break;
                    }
                    i4 = i2;
                    break;
                case 2:
                    if (i2 + 1 <= i14) {
                        i4 = i2 + 1;
                        i15 = ((this.j[0] & Constants.UNKNOWN) << 16) | ((this.j[1] & Constants.UNKNOWN) << 8) | (bArr[i2] & Constants.UNKNOWN);
                        this.c = 0;
                        break;
                    }
                    i4 = i2;
                    break;
                default:
                    i4 = i2;
                    break;
            }
            if (i15 != -1) {
                bArr3[0] = bArr2[(i15 >> 18) & 63];
                bArr3[1] = bArr2[(i15 >> 12) & 63];
                bArr3[2] = bArr2[(i15 >> 6) & 63];
                i12 = 4;
                bArr3[3] = bArr2[i15 & 63];
                i13--;
                if (i13 == 0) {
                    if (!this.f) {
                        i11 = 4;
                    } else {
                        i11 = 5;
                        bArr3[4] = 13;
                    }
                    i12 = i11 + 1;
                    bArr3[i11] = 10;
                    i13 = 19;
                }
            }
            while (true) {
                int i17 = i13;
                int i18 = i12;
                if (i4 + 3 <= i14) {
                    int i19 = ((bArr[i4] & Constants.UNKNOWN) << 16) | ((bArr[i4 + 1] & Constants.UNKNOWN) << 8) | (bArr[i4 + 2] & Constants.UNKNOWN);
                    bArr3[i18] = bArr2[(i19 >> 18) & 63];
                    bArr3[i18 + 1] = bArr2[(i19 >> 12) & 63];
                    bArr3[i18 + 2] = bArr2[(i19 >> 6) & 63];
                    bArr3[i18 + 3] = bArr2[i19 & 63];
                    i4 += 3;
                    i12 = i18 + 4;
                    i13 = i17 - 1;
                    if (i13 == 0) {
                        if (this.f) {
                            i10 = i12 + 1;
                            bArr3[i12] = 13;
                        } else {
                            i10 = i12;
                        }
                        i12 = i10 + 1;
                        bArr3[i10] = 10;
                        i13 = 19;
                    }
                } else {
                    if (z) {
                        if (i4 - this.c == i14 - 1) {
                            if (this.c > 0) {
                                i9 = 1;
                                b3 = this.j[0];
                                i8 = i4;
                            } else {
                                b3 = bArr[i4];
                                i8 = i4 + 1;
                                i9 = 0;
                            }
                            int i20 = (b3 & Constants.UNKNOWN) << 4;
                            this.c -= i9;
                            int i21 = i18 + 1;
                            bArr3[i18] = bArr2[(i20 >> 6) & 63];
                            int i22 = i21 + 1;
                            bArr3[i21] = bArr2[i20 & 63];
                            if (this.d) {
                                int i23 = i22 + 1;
                                bArr3[i22] = 61;
                                i22 = i23 + 1;
                                bArr3[i23] = 61;
                            }
                            if (this.e) {
                                if (this.f) {
                                    bArr3[i22] = 13;
                                    i22++;
                                }
                                bArr3[i22] = 10;
                                i22++;
                            }
                            i4 = i8;
                            i18 = i22;
                        } else if (i4 - this.c == i14 - 2) {
                            if (this.c > 1) {
                                i6 = 1;
                                b = this.j[0];
                            } else {
                                b = bArr[i4];
                                i4++;
                                i6 = 0;
                            }
                            int i24 = (b & Constants.UNKNOWN) << 10;
                            if (this.c > 0) {
                                b2 = this.j[i6];
                                i6++;
                            } else {
                                b2 = bArr[i4];
                                i4++;
                            }
                            int i25 = ((b2 & Constants.UNKNOWN) << 2) | i24;
                            this.c -= i6;
                            int i26 = i18 + 1;
                            bArr3[i18] = bArr2[(i25 >> 12) & 63];
                            int i27 = i26 + 1;
                            bArr3[i26] = bArr2[(i25 >> 6) & 63];
                            int i28 = i27 + 1;
                            bArr3[i27] = bArr2[i25 & 63];
                            if (this.d) {
                                i7 = i28 + 1;
                                bArr3[i28] = 61;
                            } else {
                                i7 = i28;
                            }
                            if (this.e) {
                                if (this.f) {
                                    bArr3[i7] = 13;
                                    i7++;
                                }
                                bArr3[i7] = 10;
                                i7++;
                            }
                            i18 = i7;
                        } else if (this.e && i18 > 0 && i17 != 19) {
                            if (this.f) {
                                i5 = i18 + 1;
                                bArr3[i18] = 13;
                            } else {
                                i5 = i18;
                            }
                            i18 = i5 + 1;
                            bArr3[i5] = 10;
                        }
                        if (!g && this.c != 0) {
                            throw new AssertionError();
                        }
                        if (!g && i4 != i14) {
                            throw new AssertionError();
                        }
                    } else if (i4 == i14 - 1) {
                        byte[] bArr4 = this.j;
                        int i29 = this.c;
                        this.c = i29 + 1;
                        bArr4[i29] = bArr[i4];
                    } else if (i4 == i14 - 2) {
                        byte[] bArr5 = this.j;
                        int i30 = this.c;
                        this.c = i30 + 1;
                        bArr5[i30] = bArr[i4];
                        byte[] bArr6 = this.j;
                        int i31 = this.c;
                        this.c = i31 + 1;
                        bArr6[i31] = bArr[i4 + 1];
                    }
                    this.b = i18;
                    this.k = i17;
                    return true;
                }
            }
        }
    }
}
