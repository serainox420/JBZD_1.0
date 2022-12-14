package com.mdotm.android.utils;

import com.google.android.gms.vision.barcode.Barcode;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes3.dex */
public class MdotMBase64 {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte[] _ORDERED_ALPHABET;
    private static final byte[] _ORDERED_DECODABET;
    private static final byte[] _STANDARD_ALPHABET;
    private static final byte[] _STANDARD_DECODABET;
    private static final byte[] _URL_SAFE_ALPHABET;
    private static final byte[] _URL_SAFE_DECODABET;

    static {
        $assertionsDisabled = !MdotMBase64.class.desiredAssertionStatus();
        _STANDARD_ALPHABET = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        _STANDARD_DECODABET = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, NEW_LINE, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
        _URL_SAFE_ALPHABET = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        _URL_SAFE_DECODABET = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, NEW_LINE, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
        _ORDERED_ALPHABET = new byte[]{45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
        _ORDERED_DECODABET = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, NEW_LINE, -9, -9, -9, -1, -9, -9, -9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, EQUALS_SIGN, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    }

    private static final byte[] getAlphabet(int i) {
        if ((i & 16) == 16) {
            return _URL_SAFE_ALPHABET;
        }
        if ((i & 32) == 32) {
            return _ORDERED_ALPHABET;
        }
        return _STANDARD_ALPHABET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] getDecodabet(int i) {
        if ((i & 16) == 16) {
            return _URL_SAFE_DECODABET;
        }
        if ((i & 32) == 32) {
            return _ORDERED_DECODABET;
        }
        return _STANDARD_DECODABET;
    }

    private MdotMBase64() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, byte[] bArr2, int i, int i2) {
        encode3to4(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        int i5 = 0;
        byte[] alphabet = getAlphabet(i4);
        int i6 = (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0) | (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0);
        if (i2 > 2) {
            i5 = (bArr[i + 2] << 24) >>> 24;
        }
        int i7 = i5 | i6;
        switch (i2) {
            case 1:
                bArr2[i3] = alphabet[i7 >>> 18];
                bArr2[i3 + 1] = alphabet[(i7 >>> 12) & 63];
                bArr2[i3 + 2] = EQUALS_SIGN;
                bArr2[i3 + 3] = EQUALS_SIGN;
                break;
            case 2:
                bArr2[i3] = alphabet[i7 >>> 18];
                bArr2[i3 + 1] = alphabet[(i7 >>> 12) & 63];
                bArr2[i3 + 2] = alphabet[(i7 >>> 6) & 63];
                bArr2[i3 + 3] = EQUALS_SIGN;
                break;
            case 3:
                bArr2[i3] = alphabet[i7 >>> 18];
                bArr2[i3 + 1] = alphabet[(i7 >>> 12) & 63];
                bArr2[i3 + 2] = alphabet[(i7 >>> 6) & 63];
                bArr2[i3 + 3] = alphabet[i7 & 63];
                break;
        }
        return bArr2;
    }

    public static void encode(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            encode3to4(bArr2, bArr, min, 0);
            byteBuffer2.put(bArr2);
        }
    }

    public static void encode(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            encode3to4(bArr2, bArr, min, 0);
            for (int i = 0; i < 4; i++) {
                charBuffer.put((char) (bArr2[i] & 255));
            }
        }
    }

    public static String encodeObject(Serializable serializable) throws IOException {
        return encodeObject(serializable, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String encodeObject(Serializable serializable, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream outputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2;
        ObjectOutputStream objectOutputStream = null;
        try {
            if (serializable == null) {
                throw new NullPointerException("Cannot serialize a null object.");
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    outputStream = new OutputStream(byteArrayOutputStream, i | 1);
                    try {
                        if ((i & 2) != 0) {
                            gZIPOutputStream2 = new GZIPOutputStream(outputStream);
                            try {
                                objectOutputStream = new ObjectOutputStream(gZIPOutputStream2);
                            } catch (IOException e) {
                                throw e;
                            }
                        } else {
                            gZIPOutputStream2 = null;
                            objectOutputStream = new ObjectOutputStream(outputStream);
                        }
                        objectOutputStream.writeObject(serializable);
                        try {
                            objectOutputStream.close();
                        } catch (Exception e2) {
                        }
                        try {
                            gZIPOutputStream2.close();
                        } catch (Exception e3) {
                        }
                        try {
                            outputStream.close();
                        } catch (Exception e4) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e5) {
                        }
                        try {
                            return new String(byteArrayOutputStream.toByteArray(), PREFERRED_ENCODING);
                        } catch (UnsupportedEncodingException e6) {
                            return new String(byteArrayOutputStream.toByteArray());
                        }
                    } catch (IOException e7) {
                        throw e7;
                    } catch (Throwable th) {
                        th = th;
                        gZIPOutputStream = objectOutputStream;
                        try {
                            objectOutputStream.close();
                        } catch (Exception e8) {
                        }
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception e9) {
                        }
                        try {
                            outputStream.close();
                        } catch (Exception e10) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e11) {
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    throw e12;
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = 0;
                    outputStream = null;
                }
            } catch (IOException e13) {
                throw e13;
            } catch (Throwable th3) {
                th = th3;
                gZIPOutputStream = 0;
                outputStream = null;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static String encodeBytes(byte[] bArr) {
        String str = null;
        try {
            str = encodeBytes(bArr, 0, bArr.length, 0);
        } catch (IOException e) {
            if (!$assertionsDisabled) {
                throw new AssertionError(e.getMessage());
            }
        }
        if ($assertionsDisabled || str != null) {
            return str;
        }
        throw new AssertionError();
    }

    public static String encodeBytes(byte[] bArr, int i) throws IOException {
        return encodeBytes(bArr, 0, bArr.length, i);
    }

    public static String encodeBytes(byte[] bArr, int i, int i2) {
        String str = null;
        try {
            str = encodeBytes(bArr, i, i2, 0);
        } catch (IOException e) {
            if (!$assertionsDisabled) {
                throw new AssertionError(e.getMessage());
            }
        }
        if ($assertionsDisabled || str != null) {
            return str;
        }
        throw new AssertionError();
    }

    public static String encodeBytes(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] encodeBytesToBytes = encodeBytesToBytes(bArr, i, i2, i3);
        try {
            return new String(encodeBytesToBytes, PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return new String(encodeBytesToBytes);
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr) {
        try {
            return encodeBytesToBytes(bArr, 0, bArr.length, 0);
        } catch (IOException e) {
            if ($assertionsDisabled) {
                return null;
            }
            throw new AssertionError("IOExceptions only come from GZipping, which is turned off: " + e.getMessage());
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr, int i, int i2, int i3) throws IOException {
        OutputStream outputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        GZIPOutputStream gZIPOutputStream = null;
        if (bArr == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i);
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + i2);
        }
        if (i + i2 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)));
        }
        if ((i3 & 2) != 0) {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    outputStream = new OutputStream(byteArrayOutputStream, i3 | 1);
                    try {
                        GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(outputStream);
                        try {
                            gZIPOutputStream2.write(bArr, i, i2);
                            gZIPOutputStream2.close();
                            try {
                                gZIPOutputStream2.close();
                            } catch (Exception e) {
                            }
                            try {
                                outputStream.close();
                            } catch (Exception e2) {
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e3) {
                            }
                            return byteArrayOutputStream.toByteArray();
                        } catch (IOException e4) {
                            e = e4;
                            gZIPOutputStream = gZIPOutputStream2;
                            byteArrayOutputStream2 = byteArrayOutputStream;
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                byteArrayOutputStream = byteArrayOutputStream2;
                                try {
                                    gZIPOutputStream.close();
                                } catch (Exception e5) {
                                }
                                try {
                                    outputStream.close();
                                } catch (Exception e6) {
                                }
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception e7) {
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            gZIPOutputStream = gZIPOutputStream2;
                            gZIPOutputStream.close();
                            outputStream.close();
                            byteArrayOutputStream.close();
                            throw th;
                        }
                    } catch (IOException e8) {
                        e = e8;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e9) {
                    e = e9;
                    outputStream = null;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                } catch (Throwable th4) {
                    th = th4;
                    outputStream = null;
                }
            } catch (IOException e10) {
                e = e10;
                outputStream = null;
                byteArrayOutputStream2 = null;
            } catch (Throwable th5) {
                th = th5;
                outputStream = null;
                byteArrayOutputStream = null;
            }
        } else {
            boolean z = (i3 & 8) != 0;
            int i4 = (i2 % 3 > 0 ? 4 : 0) + ((i2 / 3) * 4);
            if (z) {
                i4 += i4 / 76;
            }
            byte[] bArr2 = new byte[i4];
            int i5 = i2 - 2;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i8 < i5) {
                encode3to4(bArr, i8 + i, 3, bArr2, i7, i3);
                int i9 = i6 + 4;
                if (z && i9 >= 76) {
                    bArr2[i7 + 4] = NEW_LINE;
                    i7++;
                    i9 = 0;
                }
                i7 += 4;
                i6 = i9;
                i8 += 3;
            }
            if (i8 < i2) {
                encode3to4(bArr, i8 + i, i2 - i8, bArr2, i7, i3);
                i7 += 4;
            }
            if (i7 <= bArr2.length - 1) {
                byte[] bArr3 = new byte[i7];
                System.arraycopy(bArr2, 0, bArr3, 0, i7);
                return bArr3;
            }
            return bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int decode4to3(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        }
        if (bArr2 == null) {
            throw new NullPointerException("Destination array was null.");
        }
        if (i < 0 || i + 3 >= bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
        if (i2 < 0 || i2 + 2 >= bArr2.length) {
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i2)));
        }
        byte[] decodabet = getDecodabet(i3);
        if (bArr[i + 2] == 61) {
            bArr2[i2] = (byte) ((((decodabet[bArr[i]] & 255) << 18) | ((decodabet[bArr[i + 1]] & 255) << 12)) >>> 16);
            return 1;
        } else if (bArr[i + 3] == 61) {
            int i4 = ((decodabet[bArr[i]] & 255) << 18) | ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i + 2]] & 255) << 6);
            bArr2[i2] = (byte) (i4 >>> 16);
            bArr2[i2 + 1] = (byte) (i4 >>> 8);
            return 2;
        } else {
            int i5 = ((decodabet[bArr[i]] & 255) << 18) | ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i + 2]] & 255) << 6) | (decodabet[bArr[i + 3]] & 255);
            bArr2[i2] = (byte) (i5 >> 16);
            bArr2[i2 + 1] = (byte) (i5 >> 8);
            bArr2[i2 + 2] = (byte) i5;
            return 3;
        }
    }

    public static byte[] decode(byte[] bArr) throws IOException {
        return decode(bArr, 0, bArr.length, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
        r2 = new byte[r0];
        java.lang.System.arraycopy(r6, 0, r2, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:?, code lost:
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] decode(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4;
        int i5;
        int i6;
        if (bArr == null) {
            throw new NullPointerException("Cannot decode null source array.");
        }
        if (i < 0 || i + i2 > bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        if (i2 == 0) {
            return new byte[0];
        }
        if (i2 < 4) {
            throw new IllegalArgumentException("Base64-encoded string must have at least four characters, but length specified was " + i2);
        }
        byte[] decodabet = getDecodabet(i3);
        byte[] bArr2 = new byte[(i2 * 3) / 4];
        byte[] bArr3 = new byte[4];
        int i7 = i;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            if (i7 >= i + i2) {
                i4 = i9;
                break;
            }
            byte b = decodabet[bArr[i7] & 255];
            if (b >= -5) {
                if (b >= -1) {
                    i5 = i8 + 1;
                    bArr3[i8] = bArr[i7];
                    if (i5 > 3) {
                        i4 = decode4to3(bArr3, 0, bArr2, i9, i3) + i9;
                        if (bArr[i7] == 61) {
                            break;
                        }
                        i6 = i4;
                        i5 = 0;
                    } else {
                        i6 = i9;
                    }
                } else {
                    i5 = i8;
                    i6 = i9;
                }
                i7++;
                i9 = i6;
                i8 = i5;
            } else {
                throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", Integer.valueOf(bArr[i7] & 255), Integer.valueOf(i7)));
            }
        }
    }

    public static byte[] decode(String str) throws IOException {
        return decode(str, 0);
    }

    public static byte[] decode(String str, int i) throws IOException {
        byte[] bytes;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        GZIPInputStream gZIPInputStream = null;
        if (str == null) {
            throw new NullPointerException("Input string was null.");
        }
        try {
            bytes = str.getBytes(PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        byte[] decode = decode(bytes, 0, bytes.length, i);
        boolean z = (i & 4) != 0;
        if (decode != null && decode.length >= 4 && !z && 35615 == ((decode[0] & 255) | ((decode[1] << 8) & 65280))) {
            byte[] bArr = new byte[Barcode.PDF417];
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byteArrayInputStream = new ByteArrayInputStream(decode);
                    try {
                        GZIPInputStream gZIPInputStream2 = new GZIPInputStream(byteArrayInputStream);
                        while (true) {
                            try {
                                int read = gZIPInputStream2.read(bArr);
                                if (read < 0) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            } catch (IOException e2) {
                                e = e2;
                                gZIPInputStream = gZIPInputStream2;
                                byteArrayInputStream2 = byteArrayInputStream;
                                try {
                                    e.printStackTrace();
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e3) {
                                    }
                                    try {
                                        gZIPInputStream.close();
                                    } catch (Exception e4) {
                                    }
                                    try {
                                        byteArrayInputStream2.close();
                                    } catch (Exception e5) {
                                    }
                                    return decode;
                                } catch (Throwable th) {
                                    th = th;
                                    byteArrayInputStream = byteArrayInputStream2;
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e6) {
                                    }
                                    try {
                                        gZIPInputStream.close();
                                    } catch (Exception e7) {
                                    }
                                    try {
                                        byteArrayInputStream.close();
                                    } catch (Exception e8) {
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                gZIPInputStream = gZIPInputStream2;
                                byteArrayOutputStream.close();
                                gZIPInputStream.close();
                                byteArrayInputStream.close();
                                throw th;
                            }
                        }
                        decode = byteArrayOutputStream.toByteArray();
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e9) {
                        }
                        try {
                            gZIPInputStream2.close();
                        } catch (Exception e10) {
                        }
                        try {
                            byteArrayInputStream.close();
                        } catch (Exception e11) {
                        }
                    } catch (IOException e12) {
                        e = e12;
                        byteArrayInputStream2 = byteArrayInputStream;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e13) {
                    e = e13;
                    byteArrayInputStream2 = null;
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayInputStream = null;
                }
            } catch (IOException e14) {
                e = e14;
                byteArrayOutputStream = null;
                byteArrayInputStream2 = null;
            } catch (Throwable th5) {
                th = th5;
                byteArrayOutputStream = null;
                byteArrayInputStream = null;
            }
        }
        return decode;
    }

    public static Object decodeToObject(String str) throws IOException, ClassNotFoundException {
        return decodeToObject(str, 0, null);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.ByteArrayInputStream, java.io.ObjectInputStream] */
    public static Object decodeToObject(String str, int i, final ClassLoader classLoader) throws IOException, ClassNotFoundException {
        ObjectInputStream objectInputStream;
        ?? r1 = 0;
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(decode(str, i));
                try {
                    if (classLoader == null) {
                        objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    } else {
                        objectInputStream = new ObjectInputStream(byteArrayInputStream) { // from class: com.mdotm.android.utils.MdotMBase64.1
                            @Override // java.io.ObjectInputStream
                            public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                                Class<?> cls = Class.forName(objectStreamClass.getName(), false, classLoader);
                                if (cls == null) {
                                    return super.resolveClass(objectStreamClass);
                                }
                                return cls;
                            }
                        };
                    }
                    Object readObject = objectInputStream.readObject();
                    try {
                        byteArrayInputStream.close();
                    } catch (Exception e) {
                    }
                    try {
                        objectInputStream.close();
                    } catch (Exception e2) {
                    }
                    return readObject;
                } catch (IOException e3) {
                    throw e3;
                } catch (ClassNotFoundException e4) {
                    throw e4;
                }
            } catch (Throwable th) {
                th = th;
                try {
                    r1.close();
                } catch (Exception e5) {
                }
                try {
                    r1.close();
                } catch (Exception e6) {
                }
                throw th;
            }
        } catch (IOException e7) {
            throw e7;
        } catch (ClassNotFoundException e8) {
            throw e8;
        } catch (Throwable th2) {
            th = th2;
            r1.close();
            r1.close();
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0021: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:14:0x0021 */
    public static void encodeToFile(byte[] bArr, String str) throws IOException {
        AutoCloseable autoCloseable;
        if (bArr == null) {
            throw new NullPointerException("Data to encode was null.");
        }
        AutoCloseable autoCloseable2 = null;
        try {
            try {
                OutputStream outputStream = new OutputStream(new FileOutputStream(str), 1);
                try {
                    outputStream.write(bArr);
                    try {
                        outputStream.close();
                    } catch (Exception e) {
                    }
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                th = th;
                autoCloseable2 = autoCloseable;
                try {
                    autoCloseable2.close();
                } catch (Exception e3) {
                }
                throw th;
            }
        } catch (IOException e4) {
            throw e4;
        } catch (Throwable th2) {
            th = th2;
            autoCloseable2.close();
            throw th;
        }
    }

    public static void decodeToFile(String str, String str2) throws IOException {
        OutputStream outputStream;
        try {
            outputStream = new OutputStream(new FileOutputStream(str2), 0);
            try {
                try {
                    outputStream.write(str.getBytes(PREFERRED_ENCODING));
                    try {
                        outputStream.close();
                    } catch (Exception e) {
                    }
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                th = th;
                try {
                    outputStream.close();
                } catch (Exception e3) {
                }
                throw th;
            }
        } catch (IOException e4) {
            outputStream = null;
            throw e4;
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
            outputStream.close();
            throw th;
        }
    }

    public static byte[] decodeFromFile(String str) throws IOException {
        int i = 0;
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                if (file.length() > 2147483647L) {
                    throw new IOException("File is too big for this convenience method (" + file.length() + " bytes).");
                }
                byte[] bArr = new byte[(int) file.length()];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
                while (true) {
                    try {
                        int read = inputStream2.read(bArr, i, 4096);
                        if (read < 0) {
                            break;
                        }
                        i += read;
                    } catch (IOException e) {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception e2) {
                        }
                        throw th;
                    }
                }
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                try {
                    inputStream2.close();
                } catch (Exception e3) {
                }
                return bArr2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            throw e4;
        }
    }

    public static String encodeFromFile(String str) throws IOException {
        InputStream inputStream;
        int i = 0;
        InputStream inputStream2 = null;
        try {
            File file = new File(str);
            byte[] bArr = new byte[Math.max((int) ((file.length() * 1.4d) + 1.0d), 40)];
            inputStream = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
            while (true) {
                try {
                    try {
                        int read = inputStream.read(bArr, i, 4096);
                        if (read < 0) {
                            break;
                        }
                        i += read;
                    } catch (IOException e) {
                        throw e;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    try {
                        inputStream2.close();
                    } catch (Exception e2) {
                    }
                    throw th;
                }
            }
            String str2 = new String(bArr, 0, i, PREFERRED_ENCODING);
            try {
                inputStream.close();
            } catch (Exception e3) {
            }
            return str2;
        } catch (IOException e4) {
            inputStream = null;
            throw e4;
        } catch (Throwable th2) {
            th = th2;
            inputStream2.close();
            throw th;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        String encodeFromFile = encodeFromFile(str);
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            try {
                try {
                    bufferedOutputStream.write(encodeFromFile.getBytes(PREFERRED_ENCODING));
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception e) {
                    }
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                th = th;
                try {
                    bufferedOutputStream.close();
                } catch (Exception e3) {
                }
                throw th;
            }
        } catch (IOException e4) {
            bufferedOutputStream = null;
            throw e4;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
            bufferedOutputStream.close();
            throw th;
        }
    }

    public static void decodeFileToFile(String str, String str2) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        byte[] decodeFromFile = decodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            try {
                try {
                    bufferedOutputStream.write(decodeFromFile);
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception e) {
                    }
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    bufferedOutputStream2.close();
                } catch (Exception e3) {
                }
                throw th;
            }
        } catch (IOException e4) {
            bufferedOutputStream = null;
            throw e4;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2.close();
            throw th;
        }
    }

    /* loaded from: classes3.dex */
    public static class InputStream extends FilterInputStream {
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream inputStream) {
            this(inputStream, 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InputStream(java.io.InputStream inputStream, int i) {
            super(inputStream);
            boolean z = true;
            this.options = i;
            this.breakLines = (i & 8) > 0;
            this.encode = (i & 1) <= 0 ? false : z;
            this.bufferLength = this.encode ? 4 : 3;
            this.buffer = new byte[this.bufferLength];
            this.position = -1;
            this.lineLength = 0;
            this.decodabet = MdotMBase64.getDecodabet(i);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read;
            if (this.position < 0) {
                if (this.encode) {
                    byte[] bArr = new byte[3];
                    int i = 0;
                    int i2 = 0;
                    while (i < 3) {
                        int read2 = this.in.read();
                        if (read2 < 0) {
                            break;
                        }
                        bArr[i] = (byte) read2;
                        i++;
                        i2++;
                    }
                    if (i2 <= 0) {
                        return -1;
                    }
                    MdotMBase64.encode3to4(bArr, 0, i2, this.buffer, 0, this.options);
                    this.position = 0;
                    this.numSigBytes = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i3 = 0;
                    while (i3 < 4) {
                        do {
                            read = this.in.read();
                            if (read < 0) {
                                break;
                            }
                        } while (this.decodabet[read & 127] <= -5);
                        if (read < 0) {
                            break;
                        }
                        bArr2[i3] = (byte) read;
                        i3++;
                    }
                    if (i3 == 4) {
                        this.numSigBytes = MdotMBase64.decode4to3(bArr2, 0, this.buffer, 0, this.options);
                        this.position = 0;
                    } else if (i3 != 0) {
                        throw new IOException("Improperly padded Base64 input.");
                    } else {
                        return -1;
                    }
                }
            }
            if (this.position >= 0) {
                if (this.position >= this.numSigBytes) {
                    return -1;
                }
                if (this.encode && this.breakLines && this.lineLength >= 76) {
                    this.lineLength = 0;
                    return 10;
                }
                this.lineLength++;
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                byte b = bArr3[i4];
                if (this.position >= this.bufferLength) {
                    this.position = -1;
                }
                return b & 255;
            }
            throw new IOException("Error in Base64 code reading stream.");
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (i3 < i2) {
                int read = read();
                if (read >= 0) {
                    bArr[i + i3] = (byte) read;
                    i3++;
                } else if (i3 == 0) {
                    return -1;
                } else {
                    return i3;
                }
            }
            return i3;
        }
    }

    /* loaded from: classes3.dex */
    public static class OutputStream extends FilterOutputStream {
        private byte[] b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream outputStream) {
            this(outputStream, 1);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OutputStream(java.io.OutputStream outputStream, int i) {
            super(outputStream);
            boolean z = true;
            this.breakLines = (i & 8) != 0;
            this.encode = (i & 1) == 0 ? false : z;
            this.bufferLength = this.encode ? 3 : 4;
            this.buffer = new byte[this.bufferLength];
            this.position = 0;
            this.lineLength = 0;
            this.suspendEncoding = false;
            this.b4 = new byte[4];
            this.options = i;
            this.decodabet = MdotMBase64.getDecodabet(i);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(i);
            } else if (this.encode) {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) i;
                if (this.position >= this.bufferLength) {
                    this.out.write(MdotMBase64.encode3to4(this.b4, this.buffer, this.bufferLength, this.options));
                    this.lineLength += 4;
                    if (this.breakLines && this.lineLength >= 76) {
                        this.out.write(10);
                        this.lineLength = 0;
                    }
                    this.position = 0;
                }
            } else if (this.decodabet[i & 127] > -5) {
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr2[i3] = (byte) i;
                if (this.position >= this.bufferLength) {
                    this.out.write(this.b4, 0, MdotMBase64.decode4to3(this.buffer, 0, this.b4, 0, this.options));
                    this.position = 0;
                }
            } else if (this.decodabet[i & 127] != -5) {
                throw new IOException("Invalid character in Base64 data.");
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }

        public void flushBase64() throws IOException {
            if (this.position > 0) {
                if (this.encode) {
                    this.out.write(MdotMBase64.encode3to4(this.b4, this.buffer, this.position, this.options));
                    this.position = 0;
                    return;
                }
                throw new IOException("Base64 input not properly padded.");
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            this.out = null;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        public void resumeEncoding() {
            this.suspendEncoding = false;
        }
    }
}
