package com.fasterxml.jackson.core.io;

import com.facebook.imageutils.JfifUtil;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.lang.ref.SoftReference;
/* loaded from: classes.dex */
public final class JsonStringEncoder {
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;
    protected ByteArrayBuilder _bytes;
    protected final char[] _qbuf = new char[6];
    protected TextBuffer _text;
    private static final char[] HC = CharTypes.copyHexChars();
    private static final byte[] HB = CharTypes.copyHexBytes();
    protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder = new ThreadLocal<>();

    public JsonStringEncoder() {
        this._qbuf[0] = '\\';
        this._qbuf[2] = '0';
        this._qbuf[3] = '0';
    }

    public static JsonStringEncoder getInstance() {
        SoftReference<JsonStringEncoder> softReference = _threadEncoder.get();
        JsonStringEncoder jsonStringEncoder = softReference == null ? null : softReference.get();
        if (jsonStringEncoder == null) {
            JsonStringEncoder jsonStringEncoder2 = new JsonStringEncoder();
            _threadEncoder.set(new SoftReference<>(jsonStringEncoder2));
            return jsonStringEncoder2;
        }
        return jsonStringEncoder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        r4 = r2 + 1;
        r2 = r12.charAt(r2);
        r9 = r6[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        if (r9 >= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        r2 = _appendNumeric(r2, r11._qbuf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        if ((r1 + r2) <= r3.length) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
        r9 = r3.length - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
        if (r9 <= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        java.lang.System.arraycopy(r11._qbuf, 0, r3, r1, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
        r3 = r0.finishCurrentSegment();
        r1 = r2 - r9;
        java.lang.System.arraycopy(r11._qbuf, r9, r3, 0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
        r2 = _appendNamed(r9, r11._qbuf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
        java.lang.System.arraycopy(r11._qbuf, 0, r3, r1, r2);
        r1 = r1 + r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public char[] quoteAsString(String str) {
        int i;
        TextBuffer textBuffer = this._text;
        if (textBuffer == null) {
            textBuffer = new TextBuffer(null);
            this._text = textBuffer;
        }
        char[] emptyAndGetCurrentSegment = textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = CharTypes.get7BitOutputEscapes();
        int length = iArr.length;
        int length2 = str.length();
        int i2 = 0;
        int i3 = 0;
        loop0: while (i3 < length2) {
            while (true) {
                char charAt = str.charAt(i3);
                if (charAt < length && iArr[charAt] != 0) {
                    break;
                }
                if (i2 >= emptyAndGetCurrentSegment.length) {
                    emptyAndGetCurrentSegment = textBuffer.finishCurrentSegment();
                    i = 0;
                } else {
                    i = i2;
                }
                i2 = i + 1;
                emptyAndGetCurrentSegment[i] = charAt;
                i3++;
                if (i3 >= length2) {
                    break loop0;
                }
            }
        }
        textBuffer.setCurrentLength(i2);
        return textBuffer.contentsAsArray();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        r0 = _appendNumeric(r0, r7._qbuf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
        r9.append(r7._qbuf, 0, r0);
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        r0 = _appendNamed(r6, r7._qbuf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        r2 = r0 + 1;
        r0 = r8.charAt(r0);
        r6 = r3[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r6 >= 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void quoteAsString(CharSequence charSequence, StringBuilder sb) {
        int[] iArr = CharTypes.get7BitOutputEscapes();
        int length = iArr.length;
        int length2 = charSequence.length();
        int i = 0;
        while (i < length2) {
            while (true) {
                char charAt = charSequence.charAt(i);
                if (charAt < length && iArr[charAt] != 0) {
                    break;
                }
                sb.append(charAt);
                i++;
                if (i >= length2) {
                    return;
                }
            }
        }
    }

    public byte[] quoteAsUTF8(String str) {
        int i;
        int i2;
        byte[] bArr;
        int i3;
        int i4;
        int i5;
        int i6;
        ByteArrayBuilder byteArrayBuilder = this._bytes;
        if (byteArrayBuilder == null) {
            byteArrayBuilder = new ByteArrayBuilder((BufferRecycler) null);
            this._bytes = byteArrayBuilder;
        }
        int length = str.length();
        byte[] resetAndGetFirstSegment = byteArrayBuilder.resetAndGetFirstSegment();
        int i7 = 0;
        int i8 = 0;
        loop0: while (i8 < length) {
            int[] iArr = CharTypes.get7BitOutputEscapes();
            while (true) {
                char charAt = str.charAt(i8);
                if (charAt <= 127 && iArr[charAt] == 0) {
                    if (i7 >= resetAndGetFirstSegment.length) {
                        resetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        i6 = 0;
                    } else {
                        i6 = i7;
                    }
                    i7 = i6 + 1;
                    resetAndGetFirstSegment[i6] = (byte) charAt;
                    i8++;
                    if (i8 >= length) {
                        break loop0;
                    }
                } else {
                    break;
                }
            }
            if (i7 >= resetAndGetFirstSegment.length) {
                resetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                i7 = 0;
            }
            int i9 = i8 + 1;
            char charAt2 = str.charAt(i8);
            if (charAt2 <= 127) {
                i7 = _appendByte(charAt2, iArr[charAt2], byteArrayBuilder, i7);
                resetAndGetFirstSegment = byteArrayBuilder.getCurrentSegment();
                i8 = i9;
            } else {
                if (charAt2 <= 2047) {
                    i2 = i7 + 1;
                    resetAndGetFirstSegment[i7] = (byte) ((charAt2 >> 6) | JfifUtil.MARKER_SOFn);
                    bArr = resetAndGetFirstSegment;
                    i3 = (charAt2 & '?') | 128;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    int i10 = i7 + 1;
                    resetAndGetFirstSegment[i7] = (byte) ((charAt2 >> '\f') | 224);
                    if (i10 >= resetAndGetFirstSegment.length) {
                        resetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        i = 0;
                    } else {
                        i = i10;
                    }
                    i2 = i + 1;
                    resetAndGetFirstSegment[i] = (byte) (((charAt2 >> 6) & 63) | 128);
                    bArr = resetAndGetFirstSegment;
                    i3 = (charAt2 & '?') | 128;
                } else {
                    if (charAt2 > 56319) {
                        _illegal(charAt2);
                    }
                    if (i9 >= length) {
                        _illegal(charAt2);
                    }
                    int i11 = i9 + 1;
                    int _convert = _convert(charAt2, str.charAt(i9));
                    if (_convert > 1114111) {
                        _illegal(_convert);
                    }
                    int i12 = i7 + 1;
                    resetAndGetFirstSegment[i7] = (byte) ((_convert >> 18) | 240);
                    if (i12 >= resetAndGetFirstSegment.length) {
                        resetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        i4 = 0;
                    } else {
                        i4 = i12;
                    }
                    int i13 = i4 + 1;
                    resetAndGetFirstSegment[i4] = (byte) (((_convert >> 12) & 63) | 128);
                    if (i13 >= resetAndGetFirstSegment.length) {
                        resetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        i5 = 0;
                    } else {
                        i5 = i13;
                    }
                    i2 = i5 + 1;
                    resetAndGetFirstSegment[i5] = (byte) (((_convert >> 6) & 63) | 128);
                    i9 = i11;
                    byte[] bArr2 = resetAndGetFirstSegment;
                    i3 = (_convert & 63) | 128;
                    bArr = bArr2;
                }
                if (i2 >= bArr.length) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i2 = 0;
                }
                int i14 = i2 + 1;
                bArr[i2] = (byte) i3;
                resetAndGetFirstSegment = bArr;
                i8 = i9;
                i7 = i14;
            }
        }
        return this._bytes.completeAndCoalesce(i7);
    }

    public byte[] encodeAsUTF8(String str) {
        int i;
        int i2;
        int i3;
        char c;
        int i4;
        ByteArrayBuilder byteArrayBuilder = this._bytes;
        if (byteArrayBuilder == null) {
            byteArrayBuilder = new ByteArrayBuilder((BufferRecycler) null);
            this._bytes = byteArrayBuilder;
        }
        int length = str.length();
        byte[] resetAndGetFirstSegment = byteArrayBuilder.resetAndGetFirstSegment();
        int length2 = resetAndGetFirstSegment.length;
        int i5 = 0;
        int i6 = 0;
        loop0: while (true) {
            if (i6 >= length) {
                i = i5;
                break;
            }
            int i7 = i6 + 1;
            char charAt = str.charAt(i6);
            int i8 = length2;
            byte[] bArr = resetAndGetFirstSegment;
            int i9 = i5;
            int i10 = i8;
            while (charAt <= 127) {
                if (i9 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i9 = 0;
                }
                int i11 = i9 + 1;
                bArr[i9] = (byte) charAt;
                if (i7 >= length) {
                    i = i11;
                    break loop0;
                }
                charAt = str.charAt(i7);
                i7++;
                i9 = i11;
            }
            if (i9 >= i10) {
                bArr = byteArrayBuilder.finishCurrentSegment();
                i10 = bArr.length;
                i2 = 0;
            } else {
                i2 = i9;
            }
            if (charAt < 2048) {
                i3 = i2 + 1;
                bArr[i2] = (byte) ((charAt >> 6) | JfifUtil.MARKER_SOFn);
                c = charAt;
                i6 = i7;
            } else if (charAt < 55296 || charAt > 57343) {
                int i12 = i2 + 1;
                bArr[i2] = (byte) ((charAt >> '\f') | 224);
                if (i12 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i12 = 0;
                }
                bArr[i12] = (byte) (((charAt >> 6) & 63) | 128);
                i3 = i12 + 1;
                c = charAt;
                i6 = i7;
            } else {
                if (charAt > 56319) {
                    _illegal(charAt);
                }
                if (i7 >= length) {
                    _illegal(charAt);
                }
                int i13 = i7 + 1;
                int _convert = _convert(charAt, str.charAt(i7));
                if (_convert > 1114111) {
                    _illegal(_convert);
                }
                int i14 = i2 + 1;
                bArr[i2] = (byte) ((_convert >> 18) | 240);
                if (i14 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i14 = 0;
                }
                int i15 = i14 + 1;
                bArr[i14] = (byte) (((_convert >> 12) & 63) | 128);
                if (i15 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i4 = 0;
                } else {
                    i4 = i15;
                }
                bArr[i4] = (byte) (((_convert >> 6) & 63) | 128);
                i3 = i4 + 1;
                c = _convert;
                i6 = i13;
            }
            if (i3 >= i10) {
                bArr = byteArrayBuilder.finishCurrentSegment();
                i10 = bArr.length;
                i3 = 0;
            }
            int i16 = i3 + 1;
            bArr[i3] = (byte) ((c & '?') | 128);
            resetAndGetFirstSegment = bArr;
            length2 = i10;
            i5 = i16;
        }
        return this._bytes.completeAndCoalesce(i);
    }

    private int _appendNumeric(int i, char[] cArr) {
        cArr[1] = 'u';
        cArr[4] = HC[i >> 4];
        cArr[5] = HC[i & 15];
        return 6;
    }

    private int _appendNamed(int i, char[] cArr) {
        cArr[1] = (char) i;
        return 2;
    }

    private int _appendByte(int i, int i2, ByteArrayBuilder byteArrayBuilder, int i3) {
        byteArrayBuilder.setCurrentSegmentLength(i3);
        byteArrayBuilder.append(92);
        if (i2 < 0) {
            byteArrayBuilder.append(117);
            if (i > 255) {
                int i4 = i >> 8;
                byteArrayBuilder.append(HB[i4 >> 4]);
                byteArrayBuilder.append(HB[i4 & 15]);
                i &= 255;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byteArrayBuilder.append(HB[i >> 4]);
            byteArrayBuilder.append(HB[i & 15]);
        } else {
            byteArrayBuilder.append((byte) i2);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    private static int _convert(int i, int i2) {
        if (i2 < 56320 || i2 > 57343) {
            throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
        }
        return 65536 + ((i - 55296) << 10) + (i2 - 56320);
    }

    private static void _illegal(int i) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i));
    }
}
