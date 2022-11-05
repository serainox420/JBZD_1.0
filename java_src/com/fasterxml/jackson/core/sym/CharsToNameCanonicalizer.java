package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class CharsToNameCanonicalizer {
    private static final int DEFAULT_T_SIZE = 64;
    public static final int HASH_MULT = 33;
    static final int MAX_COLL_CHAIN_LENGTH = 100;
    static final int MAX_ENTRIES_FOR_REUSE = 12000;
    private static final int MAX_T_SIZE = 65536;
    private Bucket[] _buckets;
    private boolean _canonicalize;
    private final int _flags;
    private boolean _hashShared;
    private int _indexMask;
    private int _longestCollisionList;
    private BitSet _overflows;
    private final CharsToNameCanonicalizer _parent;
    private final int _seed;
    private int _size;
    private int _sizeThreshold;
    private String[] _symbols;
    private final AtomicReference<TableInfo> _tableInfo;

    private CharsToNameCanonicalizer(int i) {
        this._parent = null;
        this._seed = i;
        this._canonicalize = true;
        this._flags = -1;
        this._hashShared = false;
        this._longestCollisionList = 0;
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(64));
    }

    private CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, int i, int i2, TableInfo tableInfo) {
        this._parent = charsToNameCanonicalizer;
        this._seed = i2;
        this._tableInfo = null;
        this._flags = i;
        this._canonicalize = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i);
        this._symbols = tableInfo.symbols;
        this._buckets = tableInfo.buckets;
        this._size = tableInfo.size;
        this._longestCollisionList = tableInfo.longestCollisionList;
        int length = this._symbols.length;
        this._sizeThreshold = _thresholdSize(length);
        this._indexMask = length - 1;
        this._hashShared = true;
    }

    private static int _thresholdSize(int i) {
        return i - (i >> 2);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    protected static CharsToNameCanonicalizer createRoot(int i) {
        return new CharsToNameCanonicalizer(i);
    }

    public CharsToNameCanonicalizer makeChild(int i) {
        return new CharsToNameCanonicalizer(this, i, this._seed, this._tableInfo.get());
    }

    public void release() {
        if (maybeDirty() && this._parent != null && this._canonicalize) {
            this._parent.mergeChild(new TableInfo(this));
            this._hashShared = true;
        }
    }

    private void mergeChild(TableInfo tableInfo) {
        int i = tableInfo.size;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i != tableInfo2.size) {
            if (i > 12000) {
                tableInfo = TableInfo.createInitial(64);
            }
            this._tableInfo.compareAndSet(tableInfo2, tableInfo);
        }
    }

    public int size() {
        return this._tableInfo != null ? this._tableInfo.get().size : this._size;
    }

    public int bucketCount() {
        return this._symbols.length;
    }

    public boolean maybeDirty() {
        return !this._hashShared;
    }

    public int hashSeed() {
        return this._seed;
    }

    public int collisionCount() {
        Bucket[] bucketArr;
        int i = 0;
        for (Bucket bucket : this._buckets) {
            if (bucket != null) {
                i += bucket.length;
            }
        }
        return i;
    }

    public int maxCollisionLength() {
        return this._longestCollisionList;
    }

    public String findSymbol(char[] cArr, int i, int i2, int i3) {
        if (i2 < 1) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(cArr, i, i2);
        }
        int _hashToIndex = _hashToIndex(i3);
        String str = this._symbols[_hashToIndex];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    i4++;
                    if (i4 == i2) {
                        return str;
                    }
                }
            }
            Bucket bucket = this._buckets[_hashToIndex >> 1];
            if (bucket != null) {
                String has = bucket.has(cArr, i, i2);
                if (has == null) {
                    String _findSymbol2 = _findSymbol2(cArr, i, i2, bucket.next);
                    if (_findSymbol2 != null) {
                        return _findSymbol2;
                    }
                } else {
                    return has;
                }
            }
        }
        return _addSymbol(cArr, i, i2, i3, _hashToIndex);
    }

    private String _findSymbol2(char[] cArr, int i, int i2, Bucket bucket) {
        while (bucket != null) {
            String has = bucket.has(cArr, i, i2);
            if (has == null) {
                bucket = bucket.next;
            } else {
                return has;
            }
        }
        return null;
    }

    private String _addSymbol(char[] cArr, int i, int i2, int i3, int i4) {
        if (this._hashShared) {
            copyArrays();
            this._hashShared = false;
        } else if (this._size >= this._sizeThreshold) {
            rehash();
            i4 = _hashToIndex(calcHash(cArr, i, i2));
        }
        String str = new String(cArr, i, i2);
        if (JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(this._flags)) {
            str = InternCache.instance.intern(str);
        }
        this._size++;
        if (this._symbols[i4] == null) {
            this._symbols[i4] = str;
        } else {
            int i5 = i4 >> 1;
            Bucket bucket = new Bucket(str, this._buckets[i5]);
            int i6 = bucket.length;
            if (i6 > 100) {
                _handleSpillOverflow(i5, bucket);
            } else {
                this._buckets[i5] = bucket;
                this._longestCollisionList = Math.max(i6, this._longestCollisionList);
            }
        }
        return str;
    }

    private void _handleSpillOverflow(int i, Bucket bucket) {
        if (this._overflows == null) {
            this._overflows = new BitSet();
            this._overflows.set(i);
        } else if (this._overflows.get(i)) {
            if (JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this._flags)) {
                reportTooManyCollisions(100);
            }
            this._canonicalize = false;
        } else {
            this._overflows.set(i);
        }
        this._symbols[i + i] = bucket.symbol;
        this._buckets[i] = null;
        this._size -= bucket.length;
        this._longestCollisionList = -1;
    }

    public int _hashToIndex(int i) {
        int i2 = (i >>> 15) + i;
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this._indexMask;
    }

    public int calcHash(char[] cArr, int i, int i2) {
        int i3 = this._seed;
        int i4 = i + i2;
        while (i < i4) {
            i3 = (i3 * 33) + cArr[i];
            i++;
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    public int calcHash(String str) {
        int length = str.length();
        int i = this._seed;
        int i2 = 0;
        while (i2 < length) {
            i2++;
            i = str.charAt(i2) + (i * 33);
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    private void copyArrays() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) Arrays.copyOf(strArr, strArr.length);
        Bucket[] bucketArr = this._buckets;
        this._buckets = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length);
    }

    private void rehash() {
        int length = this._symbols.length;
        int i = length + length;
        if (i > 65536) {
            this._size = 0;
            this._canonicalize = false;
            this._symbols = new String[64];
            this._buckets = new Bucket[32];
            this._indexMask = 63;
            this._hashShared = false;
            return;
        }
        String[] strArr = this._symbols;
        Bucket[] bucketArr = this._buckets;
        this._symbols = new String[i];
        this._buckets = new Bucket[i >> 1];
        this._indexMask = i - 1;
        this._sizeThreshold = _thresholdSize(i);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            String str = strArr[i4];
            if (str != null) {
                i3++;
                int _hashToIndex = _hashToIndex(calcHash(str));
                if (this._symbols[_hashToIndex] == null) {
                    this._symbols[_hashToIndex] = str;
                } else {
                    int i5 = _hashToIndex >> 1;
                    Bucket bucket = new Bucket(str, this._buckets[i5]);
                    this._buckets[i5] = bucket;
                    i2 = Math.max(i2, bucket.length);
                }
            }
        }
        int i6 = length >> 1;
        int i7 = 0;
        int i8 = i3;
        int i9 = i2;
        while (i7 < i6) {
            int i10 = i9;
            for (Bucket bucket2 = bucketArr[i7]; bucket2 != null; bucket2 = bucket2.next) {
                i8++;
                String str2 = bucket2.symbol;
                int _hashToIndex2 = _hashToIndex(calcHash(str2));
                if (this._symbols[_hashToIndex2] == null) {
                    this._symbols[_hashToIndex2] = str2;
                } else {
                    int i11 = _hashToIndex2 >> 1;
                    Bucket bucket3 = new Bucket(str2, this._buckets[i11]);
                    this._buckets[i11] = bucket3;
                    i10 = Math.max(i10, bucket3.length);
                }
            }
            i7++;
            i9 = i10;
        }
        this._longestCollisionList = i9;
        this._overflows = null;
        if (i8 != this._size) {
            throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", Integer.valueOf(this._size), Integer.valueOf(i8)));
        }
    }

    protected void reportTooManyCollisions(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class Bucket {
        public final int length;
        public final Bucket next;
        public final String symbol;

        public Bucket(String str, Bucket bucket) {
            this.symbol = str;
            this.next = bucket;
            this.length = bucket == null ? 1 : bucket.length + 1;
        }

        public String has(char[] cArr, int i, int i2) {
            if (this.symbol.length() != i2) {
                return null;
            }
            int i3 = 0;
            while (this.symbol.charAt(i3) == cArr[i + i3]) {
                i3++;
                if (i3 >= i2) {
                    return this.symbol;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class TableInfo {
        final Bucket[] buckets;
        final int longestCollisionList;
        final int size;
        final String[] symbols;

        public TableInfo(int i, int i2, String[] strArr, Bucket[] bucketArr) {
            this.size = i;
            this.longestCollisionList = i2;
            this.symbols = strArr;
            this.buckets = bucketArr;
        }

        public TableInfo(CharsToNameCanonicalizer charsToNameCanonicalizer) {
            this.size = charsToNameCanonicalizer._size;
            this.longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
            this.symbols = charsToNameCanonicalizer._symbols;
            this.buckets = charsToNameCanonicalizer._buckets;
        }

        public static TableInfo createInitial(int i) {
            return new TableInfo(0, 0, new String[i], new Bucket[i >> 1]);
        }
    }
}
