package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentedByteString.java */
/* loaded from: classes3.dex */
public final class p extends ByteString {
    final transient byte[][] e;
    final transient int[] f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(c cVar, int i) {
        super(null);
        int i2 = 0;
        t.a(cVar.b, 0L, i);
        n nVar = cVar.f5861a;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            if (nVar.c == nVar.b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += nVar.c - nVar.b;
            i3++;
            nVar = nVar.f;
        }
        this.e = new byte[i3];
        this.f = new int[i3 * 2];
        n nVar2 = cVar.f5861a;
        int i5 = 0;
        while (i2 < i) {
            this.e[i5] = nVar2.f5873a;
            int i6 = (nVar2.c - nVar2.b) + i2;
            if (i6 > i) {
                i6 = i;
            }
            this.f[i5] = i6;
            this.f[this.e.length + i5] = nVar2.b;
            nVar2.d = true;
            i5++;
            nVar2 = nVar2.f;
            i2 = i6;
        }
    }

    @Override // okio.ByteString
    public String utf8() {
        return b().utf8();
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        return b().string(charset);
    }

    @Override // okio.ByteString
    public String base64() {
        return b().base64();
    }

    @Override // okio.ByteString
    public String hex() {
        return b().hex();
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return b().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public ByteString toAsciiUppercase() {
        return b().toAsciiUppercase();
    }

    @Override // okio.ByteString
    public ByteString md5() {
        return b().md5();
    }

    @Override // okio.ByteString
    public ByteString sha1() {
        return b().sha1();
    }

    @Override // okio.ByteString
    public ByteString sha256() {
        return b().sha256();
    }

    @Override // okio.ByteString
    public ByteString hmacSha1(ByteString byteString) {
        return b().hmacSha1(byteString);
    }

    @Override // okio.ByteString
    public ByteString hmacSha256(ByteString byteString) {
        return b().hmacSha256(byteString);
    }

    @Override // okio.ByteString
    public String base64Url() {
        return b().base64Url();
    }

    @Override // okio.ByteString
    public ByteString substring(int i) {
        return b().substring(i);
    }

    @Override // okio.ByteString
    public ByteString substring(int i, int i2) {
        return b().substring(i, i2);
    }

    @Override // okio.ByteString
    public byte getByte(int i) {
        t.a(this.f[this.e.length - 1], i, 1L);
        int a2 = a(i);
        return this.e[a2][(i - (a2 == 0 ? 0 : this.f[a2 - 1])) + this.f[this.e.length + a2]];
    }

    private int a(int i) {
        int binarySearch = Arrays.binarySearch(this.f, 0, this.e.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    @Override // okio.ByteString
    public int size() {
        return this.f[this.e.length - 1];
    }

    @Override // okio.ByteString
    public byte[] toByteArray() {
        int i = 0;
        byte[] bArr = new byte[this.f[this.e.length - 1]];
        int length = this.e.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f[length + i];
            int i4 = this.f[i];
            System.arraycopy(this.e[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    public void write(OutputStream outputStream) throws IOException {
        int i = 0;
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.e.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f[length + i];
            int i4 = this.f[i];
            outputStream.write(this.e[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // okio.ByteString
    public void a(c cVar) {
        int i = 0;
        int length = this.e.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.f[length + i];
            int i4 = this.f[i];
            n nVar = new n(this.e[i], i3, (i3 + i4) - i2);
            if (cVar.f5861a == null) {
                nVar.g = nVar;
                nVar.f = nVar;
                cVar.f5861a = nVar;
            } else {
                cVar.f5861a.g.a(nVar);
            }
            i++;
            i2 = i4;
        }
        cVar.b = i2 + cVar.b;
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int a2 = a(i);
        while (i3 > 0) {
            int i4 = a2 == 0 ? 0 : this.f[a2 - 1];
            int min = Math.min(i3, ((this.f[a2] - i4) + i4) - i);
            if (!byteString.rangeEquals(i2, this.e[a2], (i - i4) + this.f[this.e.length + a2], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            a2++;
        }
        return true;
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int a2 = a(i);
        while (i3 > 0) {
            int i4 = a2 == 0 ? 0 : this.f[a2 - 1];
            int min = Math.min(i3, ((this.f[a2] - i4) + i4) - i);
            if (!t.a(this.e[a2], (i - i4) + this.f[this.e.length + a2], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            a2++;
        }
        return true;
    }

    @Override // okio.ByteString
    public int indexOf(byte[] bArr, int i) {
        return b().indexOf(bArr, i);
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] bArr, int i) {
        return b().lastIndexOf(bArr, i);
    }

    private ByteString b() {
        return new ByteString(toByteArray());
    }

    @Override // okio.ByteString
    byte[] a() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ByteString) && ((ByteString) obj).size() == size() && rangeEquals(0, (ByteString) obj, 0, size());
    }

    @Override // okio.ByteString
    public int hashCode() {
        int i = this.c;
        if (i == 0) {
            i = 1;
            int length = this.e.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                byte[] bArr = this.e[i2];
                int i4 = this.f[length + i2];
                int i5 = this.f[i2];
                int i6 = (i5 - i3) + i4;
                int i7 = i;
                for (int i8 = i4; i8 < i6; i8++) {
                    i7 = (i7 * 31) + bArr[i8];
                }
                i2++;
                i3 = i5;
                i = i7;
            }
            this.c = i;
        }
        return i;
    }

    @Override // okio.ByteString
    public String toString() {
        return b().toString();
    }

    private Object writeReplace() {
        return b();
    }
}
