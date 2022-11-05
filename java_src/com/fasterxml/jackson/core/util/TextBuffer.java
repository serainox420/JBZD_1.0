package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.io.NumberInput;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class TextBuffer {
    static final int MAX_SEGMENT_LEN = 262144;
    static final int MIN_SEGMENT_LEN = 1000;
    static final char[] NO_CHARS = new char[0];
    private final BufferRecycler _allocator;
    private char[] _currentSegment;
    private int _currentSize;
    private boolean _hasSegments;
    private char[] _inputBuffer;
    private int _inputLen;
    private int _inputStart;
    private char[] _resultArray;
    private String _resultString;
    private int _segmentSize;
    private ArrayList<char[]> _segments;

    public TextBuffer(BufferRecycler bufferRecycler) {
        this._allocator = bufferRecycler;
    }

    public void releaseBuffers() {
        if (this._allocator == null) {
            resetWithEmpty();
        } else if (this._currentSegment != null) {
            resetWithEmpty();
            char[] cArr = this._currentSegment;
            this._currentSegment = null;
            this._allocator.releaseCharBuffer(2, cArr);
        }
    }

    public void resetWithEmpty() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithShared(char[] cArr, int i, int i2) {
        this._resultString = null;
        this._resultArray = null;
        this._inputBuffer = cArr;
        this._inputStart = i;
        this._inputLen = i2;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithCopy(char[] cArr, int i, int i2) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i2);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(cArr, i, i2);
    }

    public void resetWithString(String str) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = str;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        this._currentSize = 0;
    }

    private char[] buf(int i) {
        return this._allocator != null ? this._allocator.allocCharBuffer(2, i) : new char[Math.max(i, 1000)];
    }

    private void clearSegments() {
        this._hasSegments = false;
        this._segments.clear();
        this._segmentSize = 0;
        this._currentSize = 0;
    }

    public int size() {
        if (this._inputStart >= 0) {
            return this._inputLen;
        }
        if (this._resultArray != null) {
            return this._resultArray.length;
        }
        if (this._resultString != null) {
            return this._resultString.length();
        }
        return this._segmentSize + this._currentSize;
    }

    public int getTextOffset() {
        if (this._inputStart >= 0) {
            return this._inputStart;
        }
        return 0;
    }

    public boolean hasTextAsCharacters() {
        return this._inputStart >= 0 || this._resultArray != null || this._resultString == null;
    }

    public char[] getTextBuffer() {
        if (this._inputStart >= 0) {
            return this._inputBuffer;
        }
        if (this._resultArray != null) {
            return this._resultArray;
        }
        if (this._resultString != null) {
            char[] charArray = this._resultString.toCharArray();
            this._resultArray = charArray;
            return charArray;
        } else if (this._hasSegments) {
            return contentsAsArray();
        } else {
            return this._currentSegment == null ? NO_CHARS : this._currentSegment;
        }
    }

    public String contentsAsString() {
        if (this._resultString == null) {
            if (this._resultArray != null) {
                this._resultString = new String(this._resultArray);
            } else if (this._inputStart >= 0) {
                if (this._inputLen < 1) {
                    this._resultString = "";
                    return "";
                }
                this._resultString = new String(this._inputBuffer, this._inputStart, this._inputLen);
            } else {
                int i = this._segmentSize;
                int i2 = this._currentSize;
                if (i == 0) {
                    this._resultString = i2 == 0 ? "" : new String(this._currentSegment, 0, i2);
                } else {
                    StringBuilder sb = new StringBuilder(i + i2);
                    if (this._segments != null) {
                        int size = this._segments.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            char[] cArr = this._segments.get(i3);
                            sb.append(cArr, 0, cArr.length);
                        }
                    }
                    sb.append(this._currentSegment, 0, this._currentSize);
                    this._resultString = sb.toString();
                }
            }
        }
        return this._resultString;
    }

    public char[] contentsAsArray() {
        char[] cArr = this._resultArray;
        if (cArr == null) {
            char[] resultArray = resultArray();
            this._resultArray = resultArray;
            return resultArray;
        }
        return cArr;
    }

    public BigDecimal contentsAsDecimal() throws NumberFormatException {
        if (this._resultArray != null) {
            return NumberInput.parseBigDecimal(this._resultArray);
        }
        if (this._inputStart >= 0 && this._inputBuffer != null) {
            return NumberInput.parseBigDecimal(this._inputBuffer, this._inputStart, this._inputLen);
        }
        if (this._segmentSize == 0 && this._currentSegment != null) {
            return NumberInput.parseBigDecimal(this._currentSegment, 0, this._currentSize);
        }
        return NumberInput.parseBigDecimal(contentsAsArray());
    }

    public double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(contentsAsString());
    }

    public int contentsToWriter(Writer writer) throws IOException {
        int i;
        if (this._resultArray != null) {
            writer.write(this._resultArray);
            return this._resultArray.length;
        } else if (this._resultString != null) {
            writer.write(this._resultString);
            return this._resultString.length();
        } else if (this._inputStart >= 0) {
            int i2 = this._inputLen;
            if (i2 > 0) {
                writer.write(this._inputBuffer, this._inputStart, i2);
                return i2;
            }
            return i2;
        } else {
            if (this._segments != null) {
                int size = this._segments.size();
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    char[] cArr = this._segments.get(i4);
                    int length = cArr.length;
                    writer.write(cArr, 0, length);
                    i3 += length;
                }
                i = i3;
            } else {
                i = 0;
            }
            int i5 = this._currentSize;
            if (i5 > 0) {
                writer.write(this._currentSegment, 0, i5);
                return i + i5;
            }
            return i;
        }
    }

    public void ensureNotShared() {
        if (this._inputStart >= 0) {
            unshare(16);
        }
    }

    public void append(char c) {
        if (this._inputStart >= 0) {
            unshare(16);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        if (this._currentSize >= cArr.length) {
            expand(1);
            cArr = this._currentSegment;
        }
        int i = this._currentSize;
        this._currentSize = i + 1;
        cArr[i] = c;
    }

    public void append(char[] cArr, int i, int i2) {
        if (this._inputStart >= 0) {
            unshare(i2);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr2 = this._currentSegment;
        int length = cArr2.length - this._currentSize;
        if (length >= i2) {
            System.arraycopy(cArr, i, cArr2, this._currentSize, i2);
            this._currentSize += i2;
            return;
        }
        if (length > 0) {
            System.arraycopy(cArr, i, cArr2, this._currentSize, length);
            i += length;
            i2 -= length;
        }
        do {
            expand(i2);
            int min = Math.min(this._currentSegment.length, i2);
            System.arraycopy(cArr, i, this._currentSegment, 0, min);
            this._currentSize += min;
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    public void append(String str, int i, int i2) {
        if (this._inputStart >= 0) {
            unshare(i2);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        int length = cArr.length - this._currentSize;
        if (length >= i2) {
            str.getChars(i, i + i2, cArr, this._currentSize);
            this._currentSize += i2;
            return;
        }
        if (length > 0) {
            str.getChars(i, i + length, cArr, this._currentSize);
            i2 -= length;
            i += length;
        }
        do {
            expand(i2);
            int min = Math.min(this._currentSegment.length, i2);
            str.getChars(i, i + min, this._currentSegment, 0);
            this._currentSize += min;
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    public char[] getCurrentSegment() {
        if (this._inputStart >= 0) {
            unshare(1);
        } else {
            char[] cArr = this._currentSegment;
            if (cArr == null) {
                this._currentSegment = buf(0);
            } else if (this._currentSize >= cArr.length) {
                expand(1);
            }
        }
        return this._currentSegment;
    }

    public char[] emptyAndGetCurrentSegment() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        char[] cArr = this._currentSegment;
        if (cArr == null) {
            char[] buf = buf(0);
            this._currentSegment = buf;
            return buf;
        }
        return cArr;
    }

    public int getCurrentSegmentSize() {
        return this._currentSize;
    }

    public void setCurrentLength(int i) {
        this._currentSize = i;
    }

    public String setCurrentAndReturn(int i) {
        this._currentSize = i;
        if (this._segmentSize > 0) {
            return contentsAsString();
        }
        int i2 = this._currentSize;
        String str = i2 == 0 ? "" : new String(this._currentSegment, 0, i2);
        this._resultString = str;
        return str;
    }

    public char[] finishCurrentSegment() {
        int i = 1000;
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        this._hasSegments = true;
        this._segments.add(this._currentSegment);
        int length = this._currentSegment.length;
        this._segmentSize += length;
        this._currentSize = 0;
        int i2 = length + (length >> 1);
        if (i2 >= 1000) {
            i = i2 > MAX_SEGMENT_LEN ? MAX_SEGMENT_LEN : i2;
        }
        char[] carr = carr(i);
        this._currentSegment = carr;
        return carr;
    }

    public char[] expandCurrentSegment() {
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i = (length >> 1) + length;
        if (i > MAX_SEGMENT_LEN) {
            i = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i);
        this._currentSegment = copyOf;
        return copyOf;
    }

    public char[] expandCurrentSegment(int i) {
        char[] cArr = this._currentSegment;
        if (cArr.length < i) {
            char[] copyOf = Arrays.copyOf(cArr, i);
            this._currentSegment = copyOf;
            return copyOf;
        }
        return cArr;
    }

    public String toString() {
        return contentsAsString();
    }

    private void unshare(int i) {
        int i2 = this._inputLen;
        this._inputLen = 0;
        char[] cArr = this._inputBuffer;
        this._inputBuffer = null;
        int i3 = this._inputStart;
        this._inputStart = -1;
        int i4 = i2 + i;
        if (this._currentSegment == null || i4 > this._currentSegment.length) {
            this._currentSegment = buf(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this._currentSegment, 0, i2);
        }
        this._segmentSize = 0;
        this._currentSize = i2;
    }

    private void expand(int i) {
        int i2 = 1000;
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        char[] cArr = this._currentSegment;
        this._hasSegments = true;
        this._segments.add(cArr);
        this._segmentSize += cArr.length;
        this._currentSize = 0;
        int length = cArr.length;
        int i3 = length + (length >> 1);
        if (i3 >= 1000) {
            i2 = i3 > MAX_SEGMENT_LEN ? MAX_SEGMENT_LEN : i3;
        }
        this._currentSegment = carr(i2);
    }

    private char[] resultArray() {
        int i;
        if (this._resultString != null) {
            return this._resultString.toCharArray();
        }
        if (this._inputStart >= 0) {
            int i2 = this._inputLen;
            if (i2 < 1) {
                return NO_CHARS;
            }
            int i3 = this._inputStart;
            if (i3 == 0) {
                return Arrays.copyOf(this._inputBuffer, i2);
            }
            return Arrays.copyOfRange(this._inputBuffer, i3, i2 + i3);
        }
        int size = size();
        if (size < 1) {
            return NO_CHARS;
        }
        char[] carr = carr(size);
        if (this._segments != null) {
            int size2 = this._segments.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size2; i5++) {
                char[] cArr = this._segments.get(i5);
                int length = cArr.length;
                System.arraycopy(cArr, 0, carr, i4, length);
                i4 += length;
            }
            i = i4;
        } else {
            i = 0;
        }
        System.arraycopy(this._currentSegment, 0, carr, i, this._currentSize);
        return carr;
    }

    private char[] carr(int i) {
        return new char[i];
    }
}
