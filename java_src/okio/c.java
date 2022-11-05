package okio;

import com.facebook.imageutils.JfifUtil;
import com.flurry.android.Constants;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* compiled from: Buffer.java */
/* loaded from: classes3.dex */
public final class c implements Cloneable, d, e {
    private static final byte[] c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a  reason: collision with root package name */
    n f5861a;
    long b;

    public long a() {
        return this.b;
    }

    @Override // okio.d, okio.e
    public c b() {
        return this;
    }

    @Override // okio.d
    /* renamed from: c */
    public c w() {
        return this;
    }

    @Override // okio.d
    public d d() {
        return this;
    }

    @Override // okio.e
    public boolean e() {
        return this.b == 0;
    }

    @Override // okio.e
    public void a(long j) throws EOFException {
        if (this.b < j) {
            throw new EOFException();
        }
    }

    @Override // okio.e
    public boolean b(long j) {
        return this.b >= j;
    }

    @Override // okio.e
    public InputStream f() {
        return new InputStream() { // from class: okio.c.1
            @Override // java.io.InputStream
            public int read() {
                if (c.this.b > 0) {
                    return c.this.h() & Constants.UNKNOWN;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return c.this.a(bArr, i, i2);
            }

            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(c.this.b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public String toString() {
                return c.this + ".inputStream()";
            }
        };
    }

    public c a(c cVar, long j, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        t.a(this.b, j, j2);
        if (j2 != 0) {
            cVar.b += j2;
            n nVar = this.f5861a;
            while (j >= nVar.c - nVar.b) {
                j -= nVar.c - nVar.b;
                nVar = nVar.f;
            }
            while (j2 > 0) {
                n nVar2 = new n(nVar);
                nVar2.b = (int) (nVar2.b + j);
                nVar2.c = Math.min(nVar2.b + ((int) j2), nVar2.c);
                if (cVar.f5861a == null) {
                    nVar2.g = nVar2;
                    nVar2.f = nVar2;
                    cVar.f5861a = nVar2;
                } else {
                    cVar.f5861a.g.a(nVar2);
                }
                j2 -= nVar2.c - nVar2.b;
                nVar = nVar.f;
                j = 0;
            }
        }
        return this;
    }

    public long g() {
        long j = this.b;
        if (j == 0) {
            return 0L;
        }
        n nVar = this.f5861a.g;
        if (nVar.c < 8192 && nVar.e) {
            return j - (nVar.c - nVar.b);
        }
        return j;
    }

    @Override // okio.e
    public byte h() {
        if (this.b == 0) {
            throw new IllegalStateException("size == 0");
        }
        n nVar = this.f5861a;
        int i = nVar.b;
        int i2 = nVar.c;
        int i3 = i + 1;
        byte b = nVar.f5873a[i];
        this.b--;
        if (i3 == i2) {
            this.f5861a = nVar.a();
            o.a(nVar);
        } else {
            nVar.b = i3;
        }
        return b;
    }

    public byte c(long j) {
        t.a(this.b, j, 1L);
        n nVar = this.f5861a;
        while (true) {
            int i = nVar.c - nVar.b;
            if (j < i) {
                return nVar.f5873a[nVar.b + ((int) j)];
            }
            j -= i;
            nVar = nVar.f;
        }
    }

    @Override // okio.e
    public short i() {
        if (this.b < 2) {
            throw new IllegalStateException("size < 2: " + this.b);
        }
        n nVar = this.f5861a;
        int i = nVar.b;
        int i2 = nVar.c;
        if (i2 - i < 2) {
            return (short) (((h() & Constants.UNKNOWN) << 8) | (h() & Constants.UNKNOWN));
        }
        byte[] bArr = nVar.f5873a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & Constants.UNKNOWN) << 8) | (bArr[i3] & Constants.UNKNOWN);
        this.b -= 2;
        if (i4 == i2) {
            this.f5861a = nVar.a();
            o.a(nVar);
        } else {
            nVar.b = i4;
        }
        return (short) i5;
    }

    @Override // okio.e
    public int j() {
        if (this.b < 4) {
            throw new IllegalStateException("size < 4: " + this.b);
        }
        n nVar = this.f5861a;
        int i = nVar.b;
        int i2 = nVar.c;
        if (i2 - i < 4) {
            return ((h() & Constants.UNKNOWN) << 24) | ((h() & Constants.UNKNOWN) << 16) | ((h() & Constants.UNKNOWN) << 8) | (h() & Constants.UNKNOWN);
        }
        byte[] bArr = nVar.f5873a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & Constants.UNKNOWN) << 24) | ((bArr[i3] & Constants.UNKNOWN) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & Constants.UNKNOWN) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & Constants.UNKNOWN);
        this.b -= 4;
        if (i8 == i2) {
            this.f5861a = nVar.a();
            o.a(nVar);
            return i9;
        }
        nVar.b = i8;
        return i9;
    }

    @Override // okio.e
    public long k() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.b < 8) {
            throw new IllegalStateException("size < 8: " + this.b);
        }
        n nVar = this.f5861a;
        int i7 = nVar.b;
        int i8 = nVar.c;
        if (i8 - i7 < 8) {
            return ((j() & 4294967295L) << 32) | (j() & 4294967295L);
        }
        byte[] bArr = nVar.f5873a;
        int i9 = i7 + 1 + 1;
        long j = ((bArr[i] & 255) << 48) | ((bArr[i7] & 255) << 56);
        long j2 = j | ((bArr[i9] & 255) << 40) | ((bArr[i2] & 255) << 32);
        long j3 = j2 | ((bArr[i3] & 255) << 24) | ((bArr[i4] & 255) << 16);
        int i10 = i9 + 1 + 1 + 1 + 1 + 1 + 1;
        long j4 = (bArr[i6] & 255) | j3 | ((bArr[i5] & 255) << 8);
        this.b -= 8;
        if (i10 == i8) {
            this.f5861a = nVar.a();
            o.a(nVar);
            return j4;
        }
        nVar.b = i10;
        return j4;
    }

    @Override // okio.e
    public short l() {
        return t.a(i());
    }

    @Override // okio.e
    public int m() {
        return t.a(j());
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cd A[EDGE_INSN: B:44:0x00cd->B:39:0x00cd ?: BREAK  , SYNTHETIC] */
    @Override // okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long n() {
        if (this.b == 0) {
            throw new IllegalStateException("size == 0");
        }
        long j = 0;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        long j2 = -7;
        do {
            n nVar = this.f5861a;
            byte[] bArr = nVar.f5873a;
            int i2 = nVar.b;
            int i3 = nVar.c;
            while (i2 < i3) {
                byte b = bArr[i2];
                if (b >= 48 && b <= 57) {
                    int i4 = 48 - b;
                    if (j < -922337203685477580L || (j == -922337203685477580L && i4 < j2)) {
                        c i5 = new c().m(j).i((int) b);
                        if (!z) {
                            i5.h();
                        }
                        throw new NumberFormatException("Number too large: " + i5.q());
                    }
                    j = (j * 10) + i4;
                } else if (b == 45 && i == 0) {
                    z = true;
                    j2--;
                } else if (i == 0) {
                    throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(b));
                } else {
                    z2 = true;
                    if (i2 != i3) {
                        this.f5861a = nVar.a();
                        o.a(nVar);
                    } else {
                        nVar.b = i2;
                    }
                    if (!z2) {
                        break;
                    }
                }
                i2++;
                i++;
            }
            if (i2 != i3) {
            }
            if (!z2) {
            }
        } while (this.f5861a != null);
        this.b -= i;
        return z ? j : -j;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1 A[EDGE_INSN: B:41:0x00b1->B:37:0x00b1 ?: BREAK  , SYNTHETIC] */
    @Override // okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long o() {
        int i;
        if (this.b == 0) {
            throw new IllegalStateException("size == 0");
        }
        long j = 0;
        int i2 = 0;
        boolean z = false;
        do {
            n nVar = this.f5861a;
            byte[] bArr = nVar.f5873a;
            int i3 = nVar.b;
            int i4 = nVar.c;
            int i5 = i3;
            while (i5 < i4) {
                byte b = bArr[i5];
                if (b >= 48 && b <= 57) {
                    i = b - 48;
                } else if (b >= 97 && b <= 102) {
                    i = (b - 97) + 10;
                } else if (b >= 65 && b <= 70) {
                    i = (b - 65) + 10;
                } else if (i2 == 0) {
                    throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b));
                } else {
                    z = true;
                    if (i5 != i4) {
                        this.f5861a = nVar.a();
                        o.a(nVar);
                    } else {
                        nVar.b = i5;
                    }
                    if (!z) {
                        break;
                    }
                }
                if (((-1152921504606846976L) & j) != 0) {
                    throw new NumberFormatException("Number too large: " + new c().l(j).i((int) b).q());
                }
                i2++;
                i5++;
                j = i | (j << 4);
            }
            if (i5 != i4) {
            }
            if (!z) {
            }
        } while (this.f5861a != null);
        this.b -= i2;
        return j;
    }

    public ByteString p() {
        return new ByteString(s());
    }

    @Override // okio.e
    public ByteString d(long j) throws EOFException {
        return new ByteString(g(j));
    }

    @Override // okio.e
    public void a(c cVar, long j) throws EOFException {
        if (this.b < j) {
            cVar.write(this, this.b);
            throw new EOFException();
        } else {
            cVar.write(this, j);
        }
    }

    @Override // okio.e
    public long a(q qVar) throws IOException {
        long j = this.b;
        if (j > 0) {
            qVar.write(this, j);
        }
        return j;
    }

    public String q() {
        try {
            return a(this.b, t.f5875a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String e(long j) throws EOFException {
        return a(j, t.f5875a);
    }

    @Override // okio.e
    public String a(Charset charset) {
        try {
            return a(this.b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String a(long j, Charset charset) throws EOFException {
        t.a(this.b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        n nVar = this.f5861a;
        if (nVar.b + j > nVar.c) {
            return new String(g(j), charset);
        }
        String str = new String(nVar.f5873a, nVar.b, (int) j, charset);
        nVar.b = (int) (nVar.b + j);
        this.b -= j;
        if (nVar.b == nVar.c) {
            this.f5861a = nVar.a();
            o.a(nVar);
            return str;
        }
        return str;
    }

    @Override // okio.e
    public String r() throws EOFException {
        long a2 = a((byte) 10);
        if (a2 == -1) {
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, this.b));
            throw new EOFException("\\n not found: size=" + a() + " content=" + cVar.p().hex() + "…");
        }
        return f(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f(long j) throws EOFException {
        if (j > 0 && c(j - 1) == 13) {
            String e = e(j - 1);
            h(2L);
            return e;
        }
        String e2 = e(j);
        h(1L);
        return e2;
    }

    @Override // okio.e
    public byte[] s() {
        try {
            return g(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.e
    public byte[] g(long j) throws EOFException {
        t.a(this.b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        a(bArr);
        return bArr;
    }

    @Override // okio.e
    public void a(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int a2 = a(bArr, i, bArr.length - i);
            if (a2 == -1) {
                throw new EOFException();
            }
            i += a2;
        }
    }

    @Override // okio.e
    public int a(byte[] bArr, int i, int i2) {
        t.a(bArr.length, i, i2);
        n nVar = this.f5861a;
        if (nVar == null) {
            return -1;
        }
        int min = Math.min(i2, nVar.c - nVar.b);
        System.arraycopy(nVar.f5873a, nVar.b, bArr, i, min);
        nVar.b += min;
        this.b -= min;
        if (nVar.b == nVar.c) {
            this.f5861a = nVar.a();
            o.a(nVar);
            return min;
        }
        return min;
    }

    public void t() {
        try {
            h(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.e
    public void h(long j) throws EOFException {
        while (j > 0) {
            if (this.f5861a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, this.f5861a.c - this.f5861a.b);
            this.b -= min;
            j -= min;
            n nVar = this.f5861a;
            nVar.b = min + nVar.b;
            if (this.f5861a.b == this.f5861a.c) {
                n nVar2 = this.f5861a;
                this.f5861a = nVar2.a();
                o.a(nVar2);
            }
        }
    }

    @Override // okio.d
    /* renamed from: a */
    public c b(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.a(this);
        return this;
    }

    @Override // okio.d
    /* renamed from: a */
    public c b(String str) {
        return a(str, 0, str.length());
    }

    public c a(String str, int i, int i2) {
        int i3;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt < 128) {
                n e = e(1);
                byte[] bArr = e.f5873a;
                int i4 = e.c - i;
                int min = Math.min(i2, 8192 - i4);
                i3 = i + 1;
                bArr[i4 + i] = (byte) charAt;
                while (i3 < min) {
                    char charAt2 = str.charAt(i3);
                    if (charAt2 >= 128) {
                        break;
                    }
                    bArr[i3 + i4] = (byte) charAt2;
                    i3++;
                }
                int i5 = (i3 + i4) - e.c;
                e.c += i5;
                this.b += i5;
            } else if (charAt < 2048) {
                i((charAt >> 6) | JfifUtil.MARKER_SOFn);
                i((charAt & '?') | 128);
                i3 = i + 1;
            } else if (charAt < 55296 || charAt > 57343) {
                i((charAt >> '\f') | 224);
                i(((charAt >> 6) & 63) | 128);
                i((charAt & '?') | 128);
                i3 = i + 1;
            } else {
                char charAt3 = i + 1 < i2 ? str.charAt(i + 1) : (char) 0;
                if (charAt > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                    i(63);
                    i++;
                } else {
                    int i6 = ((charAt3 & 9215) | ((charAt & 10239) << 10)) + 65536;
                    i((i6 >> 18) | 240);
                    i(((i6 >> 12) & 63) | 128);
                    i(((i6 >> 6) & 63) | 128);
                    i((i6 & 63) | 128);
                    i3 = i + 2;
                }
            }
            i = i3;
        }
        return this;
    }

    public c a(int i) {
        if (i < 128) {
            i(i);
        } else if (i < 2048) {
            i((i >> 6) | JfifUtil.MARKER_SOFn);
            i((i & 63) | 128);
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
            }
            i((i >> 12) | 224);
            i(((i >> 6) & 63) | 128);
            i((i & 63) | 128);
        } else if (i <= 1114111) {
            i((i >> 18) | 240);
            i(((i >> 12) & 63) | 128);
            i(((i >> 6) & 63) | 128);
            i((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    public c a(String str, Charset charset) {
        return a(str, 0, str.length(), charset);
    }

    public c a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(t.f5875a)) {
            return a(str, i, i2);
        }
        byte[] bytes = str.substring(i, i2).getBytes(charset);
        return c(bytes, 0, bytes.length);
    }

    @Override // okio.d
    /* renamed from: b */
    public c c(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return c(bArr, 0, bArr.length);
    }

    @Override // okio.d
    /* renamed from: b */
    public c c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        t.a(bArr.length, i, i2);
        int i3 = i + i2;
        while (i < i3) {
            n e = e(1);
            int min = Math.min(i3 - i, 8192 - e.c);
            System.arraycopy(bArr, i, e.f5873a, e.c, min);
            i += min;
            e.c = min + e.c;
        }
        this.b += i2;
        return this;
    }

    @Override // okio.d
    public long a(r rVar) throws IOException {
        if (rVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = rVar.read(this, 8192L);
            if (read != -1) {
                j += read;
            } else {
                return j;
            }
        }
    }

    @Override // okio.d
    /* renamed from: b */
    public c i(int i) {
        n e = e(1);
        byte[] bArr = e.f5873a;
        int i2 = e.c;
        e.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
        return this;
    }

    @Override // okio.d
    /* renamed from: c */
    public c h(int i) {
        n e = e(2);
        byte[] bArr = e.f5873a;
        int i2 = e.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        e.c = i3 + 1;
        this.b += 2;
        return this;
    }

    @Override // okio.d
    /* renamed from: d */
    public c g(int i) {
        n e = e(4);
        byte[] bArr = e.f5873a;
        int i2 = e.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        e.c = i5 + 1;
        this.b += 4;
        return this;
    }

    @Override // okio.d
    /* renamed from: i */
    public c n(long j) {
        n e = e(8);
        byte[] bArr = e.f5873a;
        int i = e.c;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        e.c = i8 + 1;
        this.b += 8;
        return this;
    }

    @Override // okio.d
    /* renamed from: j */
    public c m(long j) {
        boolean z;
        long j2;
        int i;
        if (j == 0) {
            return i(48);
        }
        if (j >= 0) {
            z = false;
            j2 = j;
        } else {
            j2 = -j;
            if (j2 < 0) {
                return b("-9223372036854775808");
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
            i = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 < 100) {
            i = j2 < 10 ? 1 : 2;
        } else {
            i = j2 < 1000 ? 3 : 4;
        }
        if (z) {
            i++;
        }
        n e = e(i);
        byte[] bArr = e.f5873a;
        int i2 = e.c + i;
        while (j2 != 0) {
            i2--;
            bArr[i2] = c[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        e.c += i;
        this.b = i + this.b;
        return this;
    }

    @Override // okio.d
    /* renamed from: k */
    public c l(long j) {
        if (j == 0) {
            return i(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        n e = e(numberOfTrailingZeros);
        byte[] bArr = e.f5873a;
        int i = e.c;
        for (int i2 = (e.c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = c[(int) (15 & j)];
            j >>>= 4;
        }
        e.c += numberOfTrailingZeros;
        this.b = numberOfTrailingZeros + this.b;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n e(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.f5861a == null) {
            this.f5861a = o.a();
            n nVar = this.f5861a;
            n nVar2 = this.f5861a;
            n nVar3 = this.f5861a;
            nVar2.g = nVar3;
            nVar.f = nVar3;
            return nVar3;
        }
        n nVar4 = this.f5861a.g;
        if (nVar4.c + i > 8192 || !nVar4.e) {
            return nVar4.a(o.a());
        }
        return nVar4;
    }

    @Override // okio.q
    public void write(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        t.a(cVar.b, 0L, j);
        while (j > 0) {
            if (j < cVar.f5861a.c - cVar.f5861a.b) {
                n nVar = this.f5861a != null ? this.f5861a.g : null;
                if (nVar != null && nVar.e) {
                    if ((nVar.c + j) - (nVar.d ? 0 : nVar.b) <= 8192) {
                        cVar.f5861a.a(nVar, (int) j);
                        cVar.b -= j;
                        this.b += j;
                        return;
                    }
                }
                cVar.f5861a = cVar.f5861a.a((int) j);
            }
            n nVar2 = cVar.f5861a;
            long j2 = nVar2.c - nVar2.b;
            cVar.f5861a = nVar2.a();
            if (this.f5861a == null) {
                this.f5861a = nVar2;
                n nVar3 = this.f5861a;
                n nVar4 = this.f5861a;
                n nVar5 = this.f5861a;
                nVar4.g = nVar5;
                nVar3.f = nVar5;
            } else {
                this.f5861a.g.a(nVar2).b();
            }
            cVar.b -= j2;
            this.b += j2;
            j -= j2;
        }
    }

    @Override // okio.r
    public long read(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.b == 0) {
            return -1L;
        }
        if (j > this.b) {
            j = this.b;
        }
        cVar.write(this, j);
        return j;
    }

    @Override // okio.e
    public long a(byte b) {
        return a(b, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long a(byte b, long j) {
        n nVar;
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        n nVar2 = this.f5861a;
        if (nVar2 == null) {
            return -1L;
        }
        if (this.b - j < j) {
            j2 = this.b;
            nVar = nVar2;
            while (j2 > j) {
                nVar = nVar.g;
                j2 -= nVar.c - nVar.b;
            }
        } else {
            nVar = nVar2;
            while (true) {
                long j3 = (nVar.c - nVar.b) + j2;
                if (j3 < j) {
                    nVar = nVar.f;
                    j2 = j3;
                }
            }
            while (j2 < this.b) {
                byte[] bArr = nVar.f5873a;
                int i = nVar.c;
                for (int i2 = (int) ((nVar.b + j) - j2); i2 < i; i2++) {
                    if (bArr[i2] == b) {
                        return j2 + (i2 - nVar.b);
                    }
                }
                j2 += nVar.c - nVar.b;
                nVar = nVar.f;
                j = j2;
            }
            return -1L;
        }
        while (j2 < this.b) {
        }
        return -1L;
    }

    @Override // okio.e
    public boolean a(long j, ByteString byteString) {
        return a(j, byteString, 0, byteString.size());
    }

    public boolean a(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.b - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (c(i3 + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.d, okio.q, java.io.Flushable
    public void flush() {
    }

    @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.q
    public s timeout() {
        return s.NONE;
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.b != cVar.b) {
            return false;
        }
        if (this.b == 0) {
            return true;
        }
        n nVar = this.f5861a;
        n nVar2 = cVar.f5861a;
        int i = nVar.b;
        int i2 = nVar2.b;
        while (j < this.b) {
            long min = Math.min(nVar.c - i, nVar2.c - i2);
            int i3 = 0;
            while (i3 < min) {
                int i4 = i + 1;
                byte b = nVar.f5873a[i];
                int i5 = i2 + 1;
                if (b != nVar2.f5873a[i2]) {
                    return false;
                }
                i3++;
                i2 = i5;
                i = i4;
            }
            if (i == nVar.c) {
                nVar = nVar.f;
                i = nVar.b;
            }
            if (i2 == nVar2.c) {
                nVar2 = nVar2.f;
                i2 = nVar2.b;
            }
            j += min;
        }
        return true;
    }

    public int hashCode() {
        n nVar = this.f5861a;
        if (nVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = nVar.b;
            int i3 = nVar.c;
            while (i2 < i3) {
                i2++;
                i = nVar.f5873a[i2] + (i * 31);
            }
            nVar = nVar.f;
        } while (nVar != this.f5861a);
        return i;
    }

    public String toString() {
        return v().toString();
    }

    /* renamed from: u */
    public c clone() {
        c cVar = new c();
        if (this.b == 0) {
            return cVar;
        }
        cVar.f5861a = new n(this.f5861a);
        n nVar = cVar.f5861a;
        n nVar2 = cVar.f5861a;
        n nVar3 = cVar.f5861a;
        nVar2.g = nVar3;
        nVar.f = nVar3;
        for (n nVar4 = this.f5861a.f; nVar4 != this.f5861a; nVar4 = nVar4.f) {
            cVar.f5861a.g.a(new n(nVar4));
        }
        cVar.b = this.b;
        return cVar;
    }

    public ByteString v() {
        if (this.b > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.b);
        }
        return f((int) this.b);
    }

    public ByteString f(int i) {
        return i == 0 ? ByteString.EMPTY : new p(this, i);
    }
}
