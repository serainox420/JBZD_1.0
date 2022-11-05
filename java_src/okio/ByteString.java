package okio;

import com.applovin.sdk.AppLovinTargetingData;
import com.flurry.android.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    final byte[] b;
    transient int c;
    transient String d;

    /* renamed from: a  reason: collision with root package name */
    static final char[] f5857a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', AppLovinTargetingData.GENDER_FEMALE};
    public static final ByteString EMPTY = of(new byte[0]);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteString(byte[] bArr) {
        this.b = bArr;
    }

    public static ByteString of(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new ByteString((byte[]) bArr.clone());
    }

    public static ByteString of(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        t.a(bArr.length, i, i2);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new ByteString(bArr2);
    }

    public static ByteString of(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("data == null");
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new ByteString(bArr);
    }

    public static ByteString encodeUtf8(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        ByteString byteString = new ByteString(str.getBytes(t.f5875a));
        byteString.d = str;
        return byteString;
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset != null) {
            return new ByteString(str.getBytes(charset));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public String utf8() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.b, t.f5875a);
        this.d = str2;
        return str2;
    }

    public String string(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        return new String(this.b, charset);
    }

    public String base64() {
        return b.a(this.b);
    }

    public ByteString md5() {
        return a("MD5");
    }

    public ByteString sha1() {
        return a("SHA-1");
    }

    public ByteString sha256() {
        return a("SHA-256");
    }

    private ByteString a(String str) {
        try {
            return of(MessageDigest.getInstance(str).digest(this.b));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public ByteString hmacSha1(ByteString byteString) {
        return a("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return a("HmacSHA256", byteString);
    }

    private ByteString a(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return of(mac.doFinal(this.b));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public String base64Url() {
        return b.b(this.b);
    }

    public static ByteString decodeBase64(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] a2 = b.a(str);
        if (a2 == null) {
            return null;
        }
        return new ByteString(a2);
    }

    public String hex() {
        byte[] bArr;
        char[] cArr = new char[this.b.length * 2];
        int i = 0;
        for (byte b : this.b) {
            int i2 = i + 1;
            cArr[i] = f5857a[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = f5857a[b & 15];
        }
        return new String(cArr);
    }

    public static ByteString decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((a(str.charAt(i * 2)) << 4) + a(str.charAt((i * 2) + 1)));
        }
        return of(bArr);
    }

    private static int a(char c) {
        if (c < '0' || c > '9') {
            if (c >= 'a' && c <= 'f') {
                return (c - 'a') + 10;
            }
            if (c >= 'A' && c <= 'F') {
                return (c - 'A') + 10;
            }
            throw new IllegalArgumentException("Unexpected hex digit: " + c);
        }
        return c - '0';
    }

    public static ByteString read(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return new ByteString(bArr);
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.b.length) {
                byte b = this.b[i2];
                if (b < 65 || b > 90) {
                    i = i2 + 1;
                } else {
                    byte[] bArr = (byte[]) this.b.clone();
                    bArr[i2] = (byte) (b + 32);
                    for (int i3 = i2 + 1; i3 < bArr.length; i3++) {
                        byte b2 = bArr[i3];
                        if (b2 >= 65 && b2 <= 90) {
                            bArr[i3] = (byte) (b2 + 32);
                        }
                    }
                    return new ByteString(bArr);
                }
            } else {
                return this;
            }
        }
    }

    public ByteString toAsciiUppercase() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.b.length) {
                byte b = this.b[i2];
                if (b < 97 || b > 122) {
                    i = i2 + 1;
                } else {
                    byte[] bArr = (byte[]) this.b.clone();
                    bArr[i2] = (byte) (b - 32);
                    for (int i3 = i2 + 1; i3 < bArr.length; i3++) {
                        byte b2 = bArr[i3];
                        if (b2 >= 97 && b2 <= 122) {
                            bArr[i3] = (byte) (b2 - 32);
                        }
                    }
                    return new ByteString(bArr);
                }
            } else {
                return this;
            }
        }
    }

    public ByteString substring(int i) {
        return substring(i, this.b.length);
    }

    public ByteString substring(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (i2 > this.b.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.b.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i != 0 || i2 != this.b.length) {
            byte[] bArr = new byte[i3];
            System.arraycopy(this.b, i, bArr, 0, i3);
            return new ByteString(bArr);
        }
        return this;
    }

    public byte getByte(int i) {
        return this.b[i];
    }

    public int size() {
        return this.b.length;
    }

    public byte[] toByteArray() {
        return (byte[]) this.b.clone();
    }

    byte[] a() {
        return this.b;
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.b).asReadOnlyBuffer();
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        outputStream.write(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        cVar.c(this.b, 0, this.b.length);
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        return byteString.rangeEquals(i2, this.b, i, i3);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.b.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && t.a(this.b, i, bArr, i2, i3);
    }

    public final boolean startsWith(ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public final boolean endsWith(ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf(byteString.a(), 0);
    }

    public final int indexOf(ByteString byteString, int i) {
        return indexOf(byteString.a(), i);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.b.length - bArr.length;
        for (int max = Math.max(i, 0); max <= length; max++) {
            if (t.a(this.b, max, bArr, 0, bArr.length)) {
                return max;
            }
        }
        return -1;
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf(byteString.a(), size());
    }

    public final int lastIndexOf(ByteString byteString, int i) {
        return lastIndexOf(byteString.a(), i);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int min = Math.min(i, this.b.length - bArr.length); min >= 0; min--) {
            if (t.a(this.b, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ByteString) && ((ByteString) obj).size() == this.b.length && ((ByteString) obj).rangeEquals(0, this.b, 0, this.b.length);
    }

    public int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.b);
        this.c = hashCode;
        return hashCode;
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int i2 = getByte(i) & Constants.UNKNOWN;
            int i3 = byteString.getByte(i) & Constants.UNKNOWN;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size >= size2 ? 1 : -1;
    }

    public String toString() {
        if (this.b.length == 0) {
            return "[size=0]";
        }
        String utf8 = utf8();
        int a2 = a(utf8, 64);
        if (a2 == -1) {
            if (this.b.length <= 64) {
                return "[hex=" + hex() + "]";
            }
            return "[size=" + this.b.length + " hex=" + substring(0, 64).hex() + "…]";
        }
        String replace = utf8.substring(0, a2).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        return a2 < utf8.length() ? "[size=" + this.b.length + " text=" + replace + "…]" : "[text=" + replace + "]";
    }

    static int a(String str, int i) {
        int i2 = 0;
        int length = str.length();
        int i3 = 0;
        while (i2 < length) {
            if (i3 != i) {
                int codePointAt = str.codePointAt(i2);
                if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                    return -1;
                }
                i3++;
                i2 += Character.charCount(codePointAt);
            } else {
                return i2;
            }
        }
        return str.length();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString read = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("b");
            declaredField.setAccessible(true);
            declaredField.set(this, read.b);
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        } catch (NoSuchFieldException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.b.length);
        objectOutputStream.write(this.b);
    }
}
