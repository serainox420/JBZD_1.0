package okhttp3.internal;

import com.facebook.common.time.Clock;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.IDN;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.ByteString;
import okio.c;
import okio.e;
import okio.r;
/* loaded from: classes3.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final ResponseBody EMPTY_RESPONSE = ResponseBody.create((MediaType) null, EMPTY_BYTE_ARRAY);
    public static final RequestBody EMPTY_REQUEST = RequestBody.create((MediaType) null, EMPTY_BYTE_ARRAY);
    private static final ByteString UTF_8_BOM = ByteString.decodeHex("efbbbf");
    private static final ByteString UTF_16_BE_BOM = ByteString.decodeHex("feff");
    private static final ByteString UTF_16_LE_BOM = ByteString.decodeHex("fffe");
    private static final ByteString UTF_32_BE_BOM = ByteString.decodeHex("0000ffff");
    private static final ByteString UTF_32_LE_BOM = ByteString.decodeHex("ffff0000");
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset UTF_16_BE = Charset.forName("UTF-16BE");
    private static final Charset UTF_16_LE = Charset.forName("UTF-16LE");
    private static final Charset UTF_32_BE = Charset.forName("UTF-32BE");
    private static final Charset UTF_32_LE = Charset.forName("UTF-32LE");
    public static final TimeZone UTC = TimeZone.getTimeZone("GMT");
    private static final Pattern VERIFY_AS_IP_ADDRESS = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private Util() {
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void closeQuietly(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (isAndroidGetsocknameError(e)) {
                    return;
                }
                throw e;
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static void closeQuietly(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static boolean discard(r rVar, int i, TimeUnit timeUnit) {
        try {
            return skipAll(rVar, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    public static boolean skipAll(r rVar, int i, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long deadlineNanoTime = rVar.timeout().hasDeadline() ? rVar.timeout().deadlineNanoTime() - nanoTime : Long.MAX_VALUE;
        rVar.timeout().deadlineNanoTime(Math.min(deadlineNanoTime, timeUnit.toNanos(i)) + nanoTime);
        try {
            c cVar = new c();
            while (rVar.read(cVar, 8192L) != -1) {
                cVar.t();
            }
            if (deadlineNanoTime == Clock.MAX_TIME) {
                rVar.timeout().clearDeadline();
            } else {
                rVar.timeout().deadlineNanoTime(deadlineNanoTime + nanoTime);
            }
            return true;
        } catch (InterruptedIOException e) {
            if (deadlineNanoTime == Clock.MAX_TIME) {
                rVar.timeout().clearDeadline();
            } else {
                rVar.timeout().deadlineNanoTime(deadlineNanoTime + nanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (deadlineNanoTime == Clock.MAX_TIME) {
                rVar.timeout().clearDeadline();
            } else {
                rVar.timeout().deadlineNanoTime(deadlineNanoTime + nanoTime);
            }
            throw th;
        }
    }

    public static <T> List<T> immutableList(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> immutableList(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory threadFactory(final String str, final boolean z) {
        return new ThreadFactory() { // from class: okhttp3.internal.Util.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] intersect(Class<T> cls, T[] tArr, T[] tArr2) {
        List intersect = intersect(tArr, tArr2);
        return (T[]) intersect.toArray((Object[]) Array.newInstance((Class<?>) cls, intersect.size()));
    }

    private static <T> List<T> intersect(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t2 = tArr2[i];
                    if (!t.equals(t2)) {
                        i++;
                    } else {
                        arrayList.add(t2);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public static String hostHeader(HttpUrl httpUrl, boolean z) {
        String host;
        if (httpUrl.host().contains(":")) {
            host = "[" + httpUrl.host() + "]";
        } else {
            host = httpUrl.host();
        }
        if (!z && httpUrl.port() == HttpUrl.defaultPort(httpUrl.scheme())) {
            return host;
        }
        return host + ":" + httpUrl.port();
    }

    public static String toHumanReadableAscii(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt > 31 && codePointAt < 127) {
                i += Character.charCount(codePointAt);
            } else {
                c cVar = new c();
                cVar.a(str, 0, i);
                int i2 = i;
                while (i2 < length) {
                    int codePointAt2 = str.codePointAt(i2);
                    cVar.a((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
                    i2 = Character.charCount(codePointAt2) + i2;
                }
                return cVar.q();
            }
        }
        return str;
    }

    public static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static <T> int indexOf(T[] tArr, T t) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (equal(tArr[i], t)) {
                return i;
            }
        }
        return -1;
    }

    public static String[] concat(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static int skipLeadingAsciiWhitespace(String str, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                default:
                    return i3;
            }
        }
        return i2;
    }

    public static int skipTrailingAsciiWhitespace(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                default:
                    return i3 + 1;
            }
        }
        return i;
    }

    public static String trimSubstring(String str, int i, int i2) {
        int skipLeadingAsciiWhitespace = skipLeadingAsciiWhitespace(str, i, i2);
        return str.substring(skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace(str, skipLeadingAsciiWhitespace, i2));
    }

    public static int delimiterOffset(String str, int i, int i2, String str2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str2.indexOf(str.charAt(i3)) != -1) {
                return i3;
            }
        }
        return i2;
    }

    public static int delimiterOffset(String str, int i, int i2, char c) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str.charAt(i3) == c) {
                return i3;
            }
        }
        return i2;
    }

    public static String domainToAscii(String str) {
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    private static boolean containsInvalidHostnameAsciiCodes(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                return true;
            }
            if (" #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static int indexOfControlOrNonAscii(String str) {
        int i = 0;
        int length = str.length();
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt > 31 && charAt < 127) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }

    public static boolean verifyAsIpAddress(String str) {
        return VERIFY_AS_IP_ADDRESS.matcher(str).matches();
    }

    public static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static Charset bomAwareCharset(e eVar, Charset charset) throws IOException {
        if (eVar.a(0L, UTF_8_BOM)) {
            eVar.h(UTF_8_BOM.size());
            return UTF_8;
        } else if (eVar.a(0L, UTF_16_BE_BOM)) {
            eVar.h(UTF_16_BE_BOM.size());
            return UTF_16_BE;
        } else if (eVar.a(0L, UTF_16_LE_BOM)) {
            eVar.h(UTF_16_LE_BOM.size());
            return UTF_16_LE;
        } else if (eVar.a(0L, UTF_32_BE_BOM)) {
            eVar.h(UTF_32_BE_BOM.size());
            return UTF_32_BE;
        } else if (eVar.a(0L, UTF_32_LE_BOM)) {
            eVar.h(UTF_32_LE_BOM.size());
            return UTF_32_LE;
        } else {
            return charset;
        }
    }
}
