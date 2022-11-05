package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class ByteQuadsCanonicalizer {
    private static final int DEFAULT_T_SIZE = 64;
    static final int MAX_ENTRIES_FOR_REUSE = 6000;
    private static final int MAX_T_SIZE = 65536;
    private static final int MIN_HASH_SIZE = 16;
    private static final int MULT = 33;
    private static final int MULT2 = 65599;
    private static final int MULT3 = 31;
    private int _count;
    private final boolean _failOnDoS;
    private int[] _hashArea;
    private boolean _hashShared;
    private int _hashSize;
    private boolean _intern;
    private int _longNameOffset;
    private String[] _names;
    private transient boolean _needRehash;
    private final ByteQuadsCanonicalizer _parent;
    private int _secondaryStart;
    private final int _seed;
    private int _spilloverEnd;
    private final AtomicReference<TableInfo> _tableInfo;
    private int _tertiaryShift;
    private int _tertiaryStart;

    private ByteQuadsCanonicalizer(int i, boolean z, int i2, boolean z2) {
        int i3 = 16;
        this._parent = null;
        this._seed = i2;
        this._intern = z;
        this._failOnDoS = z2;
        if (i < 16) {
            i = 16;
        } else if (((i - 1) & i) != 0) {
            while (i3 < i) {
                i3 += i3;
            }
            i = i3;
        }
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(i));
    }

    private ByteQuadsCanonicalizer(ByteQuadsCanonicalizer byteQuadsCanonicalizer, boolean z, int i, boolean z2, TableInfo tableInfo) {
        this._parent = byteQuadsCanonicalizer;
        this._seed = i;
        this._intern = z;
        this._failOnDoS = z2;
        this._tableInfo = null;
        this._count = tableInfo.count;
        this._hashSize = tableInfo.size;
        this._secondaryStart = this._hashSize << 2;
        this._tertiaryStart = this._secondaryStart + (this._secondaryStart >> 1);
        this._tertiaryShift = tableInfo.tertiaryShift;
        this._hashArea = tableInfo.mainHash;
        this._names = tableInfo.names;
        this._spilloverEnd = tableInfo.spilloverEnd;
        this._longNameOffset = tableInfo.longNameOffset;
        this._needRehash = false;
        this._hashShared = true;
    }

    public static ByteQuadsCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    protected static ByteQuadsCanonicalizer createRoot(int i) {
        return new ByteQuadsCanonicalizer(64, true, i, true);
    }

    public ByteQuadsCanonicalizer makeChild(int i) {
        return new ByteQuadsCanonicalizer(this, JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i), this._seed, JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i), this._tableInfo.get());
    }

    public void release() {
        if (this._parent != null && maybeDirty()) {
            this._parent.mergeChild(new TableInfo(this));
            this._hashShared = true;
        }
    }

    private void mergeChild(TableInfo tableInfo) {
        int i = tableInfo.count;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i != tableInfo2.count) {
            if (i > 6000) {
                tableInfo = TableInfo.createInitial(64);
            }
            this._tableInfo.compareAndSet(tableInfo2, tableInfo);
        }
    }

    public int size() {
        return this._tableInfo != null ? this._tableInfo.get().count : this._count;
    }

    public int bucketCount() {
        return this._hashSize;
    }

    public boolean maybeDirty() {
        return !this._hashShared;
    }

    public int hashSeed() {
        return this._seed;
    }

    public int primaryCount() {
        int i = this._secondaryStart;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public int secondaryCount() {
        int i = this._secondaryStart + 3;
        int i2 = this._tertiaryStart;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4 += 4) {
            if (this._hashArea[i4] != 0) {
                i3++;
            }
        }
        return i3;
    }

    public int tertiaryCount() {
        int i = this._tertiaryStart + 3;
        int i2 = this._hashSize + i;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4 += 4) {
            if (this._hashArea[i4] != 0) {
                i3++;
            }
        }
        return i3;
    }

    public int spilloverCount() {
        return (this._spilloverEnd - _spilloverStart()) >> 2;
    }

    public int totalCount() {
        int i = this._hashSize << 3;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public String toString() {
        int primaryCount = primaryCount();
        int secondaryCount = secondaryCount();
        int tertiaryCount = tertiaryCount();
        int spilloverCount = spilloverCount();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", getClass().getName(), Integer.valueOf(this._count), Integer.valueOf(this._hashSize), Integer.valueOf(primaryCount), Integer.valueOf(secondaryCount), Integer.valueOf(tertiaryCount), Integer.valueOf(spilloverCount), Integer.valueOf(primaryCount + secondaryCount + tertiaryCount + spilloverCount), Integer.valueOf(totalCount()));
    }

    public String findName(int i) {
        int _calcOffset = _calcOffset(calcHash(i));
        int[] iArr = this._hashArea;
        int i2 = iArr[_calcOffset + 3];
        if (i2 == 1) {
            if (iArr[_calcOffset] == i) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i4 = iArr[i3 + 3];
        if (i4 == 1) {
            if (iArr[i3] == i) {
                return this._names[i3 >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i);
    }

    public String findName(int i, int i2) {
        int _calcOffset = _calcOffset(calcHash(i, i2));
        int[] iArr = this._hashArea;
        int i3 = iArr[_calcOffset + 3];
        if (i3 == 2) {
            if (i == iArr[_calcOffset] && i2 == iArr[_calcOffset + 1]) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i5 = iArr[i4 + 3];
        if (i5 == 2) {
            if (i == iArr[i4] && i2 == iArr[i4 + 1]) {
                return this._names[i4 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i, i2);
    }

    public String findName(int i, int i2, int i3) {
        int _calcOffset = _calcOffset(calcHash(i, i2, i3));
        int[] iArr = this._hashArea;
        int i4 = iArr[_calcOffset + 3];
        if (i4 == 3) {
            if (i == iArr[_calcOffset] && iArr[_calcOffset + 1] == i2 && iArr[_calcOffset + 2] == i3) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 3) {
            if (i == iArr[i5] && iArr[i5 + 1] == i2 && iArr[i5 + 2] == i3) {
                return this._names[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i, i2, i3);
    }

    public String findName(int[] iArr, int i) {
        if (i < 4) {
            if (i == 3) {
                return findName(iArr[0], iArr[1], iArr[2]);
            }
            if (i == 2) {
                return findName(iArr[0], iArr[1]);
            }
            return findName(iArr[0]);
        }
        int calcHash = calcHash(iArr, i);
        int _calcOffset = _calcOffset(calcHash);
        int[] iArr2 = this._hashArea;
        int i2 = iArr2[_calcOffset + 3];
        if (calcHash == iArr2[_calcOffset] && i2 == i && _verifyLongName(iArr, i, iArr2[_calcOffset + 1])) {
            return this._names[_calcOffset >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i4 = iArr2[i3 + 3];
        if (calcHash == iArr2[i3] && i4 == i && _verifyLongName(iArr, i, iArr2[i3 + 1])) {
            return this._names[i3 >> 2];
        }
        return _findSecondary(_calcOffset, calcHash, iArr, i);
    }

    private final int _calcOffset(int i) {
        return ((this._hashSize - 1) & i) << 2;
    }

    private String _findSecondary(int i, int i2) {
        int i3 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr = this._hashArea;
        int i4 = (1 << this._tertiaryShift) + i3;
        while (i3 < i4) {
            int i5 = iArr[i3 + 3];
            if (i2 == iArr[i3] && 1 == i5) {
                return this._names[i3 >> 2];
            }
            if (i5 == 0) {
                return null;
            }
            i3 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && 1 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int i3) {
        int i4 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr = this._hashArea;
        int i5 = (1 << this._tertiaryShift) + i4;
        while (i4 < i5) {
            int i6 = iArr[i4 + 3];
            if (i2 == iArr[i4] && i3 == iArr[i4 + 1] && 2 == i6) {
                return this._names[i4 >> 2];
            }
            if (i6 == 0) {
                return null;
            }
            i4 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && i3 == iArr[_spilloverStart + 1] && 2 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int i3, int i4) {
        int i5 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr = this._hashArea;
        int i6 = (1 << this._tertiaryShift) + i5;
        while (i5 < i6) {
            int i7 = iArr[i5 + 3];
            if (i2 == iArr[i5] && i3 == iArr[i5 + 1] && i4 == iArr[i5 + 2] && 3 == i7) {
                return this._names[i5 >> 2];
            }
            if (i7 == 0) {
                return null;
            }
            i5 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && i3 == iArr[_spilloverStart + 1] && i4 == iArr[_spilloverStart + 2] && 3 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int[] iArr, int i3) {
        int i4 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr2 = this._hashArea;
        int i5 = (1 << this._tertiaryShift) + i4;
        while (i4 < i5) {
            int i6 = iArr2[i4 + 3];
            if (i2 == iArr2[i4] && i3 == i6 && _verifyLongName(iArr, i3, iArr2[i4 + 1])) {
                return this._names[i4 >> 2];
            }
            if (i6 == 0) {
                return null;
            }
            i4 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr2[_spilloverStart] && i3 == iArr2[_spilloverStart + 3] && _verifyLongName(iArr, i3, iArr2[_spilloverStart + 1])) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean _verifyLongName(int[] iArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr2 = this._hashArea;
        switch (i) {
            case 4:
                i3 = 0;
                int i10 = i3 + 1;
                int i11 = i2 + 1;
                if (iArr[i3] == iArr2[i2]) {
                    return false;
                }
                int i12 = i10 + 1;
                int i13 = i11 + 1;
                if (iArr[i10] != iArr2[i11]) {
                    return false;
                }
                int i14 = i12 + 1;
                int i15 = i13 + 1;
                if (iArr[i12] != iArr2[i13]) {
                    return false;
                }
                int i16 = i14 + 1;
                int i17 = iArr[i14];
                int i18 = i15 + 1;
                return i17 == iArr2[i15];
            case 5:
                i4 = 0;
                int i19 = i4 + 1;
                i7 = iArr[i4];
                int i20 = i2 + 1;
                if (i7 == iArr2[i2]) {
                    return false;
                }
                i2 = i20;
                i3 = i19;
                int i102 = i3 + 1;
                int i112 = i2 + 1;
                if (iArr[i3] == iArr2[i2]) {
                }
                break;
            case 6:
                i5 = 0;
                int i21 = i5 + 1;
                i8 = iArr[i5];
                int i22 = i2 + 1;
                if (i8 == iArr2[i2]) {
                    return false;
                }
                i2 = i22;
                i4 = i21;
                int i192 = i4 + 1;
                i7 = iArr[i4];
                int i202 = i2 + 1;
                if (i7 == iArr2[i2]) {
                }
                break;
            case 7:
                i6 = 0;
                int i23 = i6 + 1;
                i9 = iArr[i6];
                int i24 = i2 + 1;
                if (i9 == iArr2[i2]) {
                    return false;
                }
                i2 = i24;
                i5 = i23;
                int i212 = i5 + 1;
                i8 = iArr[i5];
                int i222 = i2 + 1;
                if (i8 == iArr2[i2]) {
                }
                break;
            case 8:
                int i25 = i2 + 1;
                if (iArr[0] != iArr2[i2]) {
                    return false;
                }
                i2 = i25;
                i6 = 1;
                int i232 = i6 + 1;
                i9 = iArr[i6];
                int i242 = i2 + 1;
                if (i9 == iArr2[i2]) {
                }
                break;
            default:
                return _verifyLongName2(iArr, i, i2);
        }
    }

    private boolean _verifyLongName2(int[] iArr, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            int i6 = i2 + 1;
            if (i5 != this._hashArea[i2]) {
                return false;
            }
            if (i4 >= i) {
                return true;
            }
            i2 = i6;
            i3 = i4;
        }
    }

    public String addName(String str, int i) {
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int _findOffsetForAdd = _findOffsetForAdd(calcHash(i));
        this._hashArea[_findOffsetForAdd] = i;
        this._hashArea[_findOffsetForAdd + 3] = 1;
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        _verifyNeedForRehash();
        return str;
    }

    public String addName(String str, int i, int i2) {
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int _findOffsetForAdd = _findOffsetForAdd(i2 == 0 ? calcHash(i) : calcHash(i, i2));
        this._hashArea[_findOffsetForAdd] = i;
        this._hashArea[_findOffsetForAdd + 1] = i2;
        this._hashArea[_findOffsetForAdd + 3] = 2;
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        _verifyNeedForRehash();
        return str;
    }

    public String addName(String str, int i, int i2, int i3) {
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int _findOffsetForAdd = _findOffsetForAdd(calcHash(i, i2, i3));
        this._hashArea[_findOffsetForAdd] = i;
        this._hashArea[_findOffsetForAdd + 1] = i2;
        this._hashArea[_findOffsetForAdd + 2] = i3;
        this._hashArea[_findOffsetForAdd + 3] = 3;
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        _verifyNeedForRehash();
        return str;
    }

    public String addName(String str, int[] iArr, int i) {
        int _findOffsetForAdd;
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        switch (i) {
            case 1:
                _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0]));
                this._hashArea[_findOffsetForAdd] = iArr[0];
                this._hashArea[_findOffsetForAdd + 3] = 1;
                break;
            case 2:
                _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0], iArr[1]));
                this._hashArea[_findOffsetForAdd] = iArr[0];
                this._hashArea[_findOffsetForAdd + 1] = iArr[1];
                this._hashArea[_findOffsetForAdd + 3] = 2;
                break;
            case 3:
                _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0], iArr[1], iArr[2]));
                this._hashArea[_findOffsetForAdd] = iArr[0];
                this._hashArea[_findOffsetForAdd + 1] = iArr[1];
                this._hashArea[_findOffsetForAdd + 2] = iArr[2];
                this._hashArea[_findOffsetForAdd + 3] = 3;
                break;
            default:
                int calcHash = calcHash(iArr, i);
                _findOffsetForAdd = _findOffsetForAdd(calcHash);
                this._hashArea[_findOffsetForAdd] = calcHash;
                this._hashArea[_findOffsetForAdd + 1] = _appendLongName(iArr, i);
                this._hashArea[_findOffsetForAdd + 3] = i;
                break;
        }
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        _verifyNeedForRehash();
        return str;
    }

    private void _verifyNeedForRehash() {
        if (this._count > (this._hashSize >> 1)) {
            if (((this._spilloverEnd - _spilloverStart()) >> 2) > ((this._count + 1) >> 7) || this._count > this._hashSize * 0.8d) {
                this._needRehash = true;
            }
        }
    }

    private void _verifySharing() {
        if (this._hashShared) {
            this._hashArea = Arrays.copyOf(this._hashArea, this._hashArea.length);
            this._names = (String[]) Arrays.copyOf(this._names, this._names.length);
            this._hashShared = false;
            _verifyNeedForRehash();
        }
        if (this._needRehash) {
            rehash();
        }
    }

    private int _findOffsetForAdd(int i) {
        int _calcOffset = _calcOffset(i);
        int[] iArr = this._hashArea;
        if (iArr[_calcOffset + 3] != 0) {
            int i2 = this._secondaryStart + ((_calcOffset >> 3) << 2);
            if (iArr[i2 + 3] == 0) {
                return i2;
            }
            int i3 = ((_calcOffset >> (this._tertiaryShift + 2)) << this._tertiaryShift) + this._tertiaryStart;
            int i4 = (1 << this._tertiaryShift) + i3;
            while (i3 < i4) {
                if (iArr[i3 + 3] != 0) {
                    i3 += 4;
                } else {
                    return i3;
                }
            }
            int i5 = this._spilloverEnd;
            this._spilloverEnd += 4;
            if (this._spilloverEnd >= (this._hashSize << 3)) {
                if (this._failOnDoS) {
                    _reportTooManyCollisions();
                }
                this._needRehash = true;
                return i5;
            }
            return i5;
        }
        return _calcOffset;
    }

    private int _appendLongName(int[] iArr, int i) {
        int i2 = this._longNameOffset;
        if (i2 + i > this._hashArea.length) {
            int length = (i2 + i) - this._hashArea.length;
            int min = Math.min(4096, this._hashSize);
            this._hashArea = Arrays.copyOf(this._hashArea, Math.max(length, min) + this._hashArea.length);
        }
        System.arraycopy(iArr, 0, this._hashArea, i2, i);
        this._longNameOffset += i;
        return i2;
    }

    public int calcHash(int i) {
        int i2 = this._seed ^ i;
        int i3 = i2 + (i2 >>> 16);
        int i4 = i3 ^ (i3 << 3);
        return i4 + (i4 >>> 12);
    }

    public int calcHash(int i, int i2) {
        int i3 = (i >>> 15) + i;
        int i4 = ((i3 ^ (i3 >>> 9)) + (i2 * 33)) ^ this._seed;
        int i5 = i4 + (i4 >>> 16);
        int i6 = i5 ^ (i5 >>> 4);
        return i6 + (i6 << 3);
    }

    public int calcHash(int i, int i2, int i3) {
        int i4 = this._seed ^ i;
        int i5 = (((i4 + (i4 >>> 9)) * 31) + i2) * 33;
        int i6 = (i5 + (i5 >>> 15)) ^ i3;
        int i7 = i6 + (i6 >>> 4);
        int i8 = i7 + (i7 >>> 15);
        return i8 ^ (i8 << 9);
    }

    public int calcHash(int[] iArr, int i) {
        if (i < 4) {
            throw new IllegalArgumentException();
        }
        int i2 = iArr[0] ^ this._seed;
        int i3 = i2 + (i2 >>> 9) + iArr[1];
        int i4 = ((i3 + (i3 >>> 15)) * 33) ^ iArr[2];
        int i5 = (i4 >>> 4) + i4;
        for (int i6 = 3; i6 < i; i6++) {
            int i7 = iArr[i6];
            i5 += i7 ^ (i7 >> 21);
        }
        int i8 = MULT2 * i5;
        int i9 = i8 + (i8 >>> 19);
        return i9 ^ (i9 << 5);
    }

    private void rehash() {
        this._needRehash = false;
        this._hashShared = false;
        int[] iArr = this._hashArea;
        String[] strArr = this._names;
        int i = this._hashSize;
        int i2 = this._count;
        int i3 = i + i;
        int i4 = this._spilloverEnd;
        if (i3 > 65536) {
            nukeSymbols(true);
            return;
        }
        this._hashArea = new int[(i << 3) + iArr.length];
        this._hashSize = i3;
        this._secondaryStart = i3 << 2;
        this._tertiaryStart = this._secondaryStart + (this._secondaryStart >> 1);
        this._tertiaryShift = _calcTertiaryShift(i3);
        this._names = new String[strArr.length << 1];
        nukeSymbols(false);
        int[] iArr2 = new int[16];
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6 += 4) {
            int i7 = iArr[i6 + 3];
            if (i7 != 0) {
                i5++;
                String str = strArr[i6 >> 2];
                switch (i7) {
                    case 1:
                        iArr2[0] = iArr[i6];
                        addName(str, iArr2, 1);
                        continue;
                    case 2:
                        iArr2[0] = iArr[i6];
                        iArr2[1] = iArr[i6 + 1];
                        addName(str, iArr2, 2);
                        continue;
                    case 3:
                        iArr2[0] = iArr[i6];
                        iArr2[1] = iArr[i6 + 1];
                        iArr2[2] = iArr[i6 + 2];
                        addName(str, iArr2, 3);
                        continue;
                    default:
                        if (i7 > iArr2.length) {
                            iArr2 = new int[i7];
                        }
                        System.arraycopy(iArr, iArr[i6 + 1], iArr2, 0, i7);
                        addName(str, iArr2, i7);
                        continue;
                }
            }
        }
        if (i5 != i2) {
            throw new IllegalStateException("Failed rehash(): old count=" + i2 + ", copyCount=" + i5);
        }
    }

    private void nukeSymbols(boolean z) {
        this._count = 0;
        this._spilloverEnd = _spilloverStart();
        this._longNameOffset = this._hashSize << 3;
        if (z) {
            Arrays.fill(this._hashArea, 0);
            Arrays.fill(this._names, (Object) null);
        }
    }

    private final int _spilloverStart() {
        int i = this._hashSize;
        return (i << 3) - i;
    }

    protected void _reportTooManyCollisions() {
        if (this._hashSize <= 1024) {
            return;
        }
        throw new IllegalStateException("Spill-over slots in symbol table with " + this._count + " entries, hash area of " + this._hashSize + " slots is now full (all " + (this._hashSize >> 3) + " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
    }

    static int _calcTertiaryShift(int i) {
        int i2 = i >> 2;
        if (i2 < 64) {
            return 4;
        }
        if (i2 <= 256) {
            return 5;
        }
        if (i2 <= 1024) {
            return 6;
        }
        return 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class TableInfo {
        public final int count;
        public final int longNameOffset;
        public final int[] mainHash;
        public final String[] names;
        public final int size;
        public final int spilloverEnd;
        public final int tertiaryShift;

        public TableInfo(int i, int i2, int i3, int[] iArr, String[] strArr, int i4, int i5) {
            this.size = i;
            this.count = i2;
            this.tertiaryShift = i3;
            this.mainHash = iArr;
            this.names = strArr;
            this.spilloverEnd = i4;
            this.longNameOffset = i5;
        }

        public TableInfo(ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
            this.size = byteQuadsCanonicalizer._hashSize;
            this.count = byteQuadsCanonicalizer._count;
            this.tertiaryShift = byteQuadsCanonicalizer._tertiaryShift;
            this.mainHash = byteQuadsCanonicalizer._hashArea;
            this.names = byteQuadsCanonicalizer._names;
            this.spilloverEnd = byteQuadsCanonicalizer._spilloverEnd;
            this.longNameOffset = byteQuadsCanonicalizer._longNameOffset;
        }

        public static TableInfo createInitial(int i) {
            int i2 = i << 3;
            return new TableInfo(i, 0, ByteQuadsCanonicalizer._calcTertiaryShift(i), new int[i2], new String[i << 1], i2 - i, i2);
        }
    }
}
