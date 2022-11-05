package com.google.android.exoplayer2.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.common.util.UriUtil;
import com.google.android.exoplayer2.ParserException;
import com.google.android.gms.drive.MetadataChangeSet;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Util.java */
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final int f3519a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    private static final Pattern f;
    private static final Pattern g;
    private static final Pattern h;
    private static final int[] i;

    static {
        f3519a = (Build.VERSION.SDK_INT == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
        b = Build.DEVICE;
        c = Build.MANUFACTURER;
        d = Build.MODEL;
        e = b + ", " + d + ", " + c + ", " + f3519a;
        f = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d\\d):?(\\d\\d)))?");
        g = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        h = Pattern.compile("%([A-Fa-f0-9]{2})");
        i = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    }

    public static boolean a(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || scheme.equals(UriUtil.LOCAL_FILE_SCHEME);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static ExecutorService a(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.exoplayer2.util.v.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    public static void a(com.google.android.exoplayer2.upstream.e eVar) {
        if (eVar != null) {
            try {
                eVar.a();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        return new Locale(str).getLanguage();
    }

    public static byte[] c(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    public static boolean a(int i2) {
        return i2 == 10 || i2 == 13;
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(Locale.US);
    }

    public static int a(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static long a(long j, long j2) {
        return ((j + j2) - 1) / j2;
    }

    public static int a(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static int a(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            binarySearch = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (jArr[binarySearch] == j);
            if (z) {
                binarySearch++;
            }
        }
        return z2 ? Math.max(0, binarySearch) : binarySearch;
    }

    public static int b(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        } else {
            do {
                binarySearch++;
                if (binarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[binarySearch] == j);
            if (z) {
                binarySearch--;
            }
        }
        return z2 ? Math.min(jArr.length - 1, binarySearch) : binarySearch;
    }

    public static <T> int a(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int i2;
        int binarySearch = Collections.binarySearch(list, t);
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(t) == 0);
            i2 = z ? binarySearch + 1 : binarySearch;
        }
        return z2 ? Math.max(0, i2) : i2;
    }

    public static long e(String str) {
        boolean z = true;
        double d2 = 0.0d;
        Matcher matcher = g.matcher(str);
        if (matcher.matches()) {
            if (TextUtils.isEmpty(matcher.group(1))) {
                z = false;
            }
            String group = matcher.group(3);
            double parseDouble = group != null ? Double.parseDouble(group) * 3.1556908E7d : 0.0d;
            String group2 = matcher.group(5);
            double parseDouble2 = (group2 != null ? Double.parseDouble(group2) * 2629739.0d : 0.0d) + parseDouble;
            String group3 = matcher.group(7);
            double parseDouble3 = parseDouble2 + (group3 != null ? Double.parseDouble(group3) * 86400.0d : 0.0d);
            String group4 = matcher.group(10);
            double parseDouble4 = parseDouble3 + (group4 != null ? Double.parseDouble(group4) * 3600.0d : 0.0d);
            String group5 = matcher.group(12);
            double parseDouble5 = (group5 != null ? Double.parseDouble(group5) * 60.0d : 0.0d) + parseDouble4;
            String group6 = matcher.group(14);
            if (group6 != null) {
                d2 = Double.parseDouble(group6);
            }
            long j = (long) ((parseDouble5 + d2) * 1000.0d);
            return z ? -j : j;
        }
        return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
    }

    public static long f(String str) throws ParserException {
        int i2;
        Matcher matcher = f.matcher(str);
        if (!matcher.matches()) {
            throw new ParserException("Invalid date/time format: " + str);
        }
        if (matcher.group(9) == null) {
            i2 = 0;
        } else if (matcher.group(9).equalsIgnoreCase("Z")) {
            i2 = 0;
        } else {
            int parseInt = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            i2 = matcher.group(11).equals("-") ? parseInt * (-1) : parseInt;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        if (i2 != 0) {
            return timeInMillis - (60000 * i2);
        }
        return timeInMillis;
    }

    public static long a(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return (j2 / j3) * j;
        }
        return (long) ((j2 / j3) * j);
    }

    public static long[] a(List<Long> list, long j, long j2) {
        int i2 = 0;
        long[] jArr = new long[list.size()];
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            while (true) {
                int i3 = i2;
                if (i3 >= jArr.length) {
                    break;
                }
                jArr[i3] = list.get(i3).longValue() / j3;
                i2 = i3 + 1;
            }
        } else if (j2 < j && j % j2 == 0) {
            long j4 = j / j2;
            while (true) {
                int i4 = i2;
                if (i4 >= jArr.length) {
                    break;
                }
                jArr[i4] = list.get(i4).longValue() * j4;
                i2 = i4 + 1;
            }
        } else {
            double d2 = j / j2;
            while (true) {
                int i5 = i2;
                if (i5 >= jArr.length) {
                    break;
                }
                jArr[i5] = (long) (list.get(i5).longValue() * d2);
                i2 = i5 + 1;
            }
        }
        return jArr;
    }

    public static void a(long[] jArr, long j, long j2) {
        int i2 = 0;
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] / j3;
                i2++;
            }
        } else if (j2 < j && j % j2 == 0) {
            long j4 = j / j2;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] * j4;
                i2++;
            }
        } else {
            double d2 = j / j2;
            while (i2 < jArr.length) {
                jArr[i2] = (long) (jArr[i2] * d2);
                i2++;
            }
        }
    }

    public static int[] a(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        return iArr;
    }

    public static com.google.android.exoplayer2.upstream.g a(com.google.android.exoplayer2.upstream.g gVar, int i2) {
        long j = -1;
        if (i2 != 0) {
            if (gVar.e != -1) {
                j = gVar.e - i2;
            }
            return new com.google.android.exoplayer2.upstream.g(gVar.f3489a, gVar.d + i2, j, gVar.f, gVar.g);
        }
        return gVar;
    }

    public static int g(String str) {
        int length = str.length();
        a.a(length <= 4);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = (i2 << 8) | str.charAt(i3);
        }
        return i2;
    }

    public static byte[] h(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (Character.digit(str.charAt(i3 + 1), 16) + (Character.digit(str.charAt(i3), 16) << 4));
        }
        return bArr;
    }

    public static String a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < objArr.length; i2++) {
            sb.append(objArr[i2].getClass().getSimpleName());
            if (i2 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static String a(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            str2 = "?";
        }
        return str + "/" + str2 + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.3.1";
    }

    public static int b(int i2) {
        switch (i2) {
            case 8:
                return 3;
            case 16:
                return 2;
            case 24:
                return Integer.MIN_VALUE;
            case 32:
                return 1073741824;
            default:
                return 0;
        }
    }

    public static int b(int i2, int i3) {
        switch (i2) {
            case Integer.MIN_VALUE:
                return i3 * 3;
            case 2:
                return i3 * 2;
            case 3:
                return i3;
            case 1073741824:
                return i3 * 4;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static int b(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return 3;
        }
        return i(path);
    }

    public static int i(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".mpd")) {
            return 0;
        }
        if (lowerCase.endsWith(".m3u8")) {
            return 2;
        }
        if (lowerCase.endsWith(".ism") || lowerCase.endsWith(".isml") || lowerCase.endsWith(".ism/manifest") || lowerCase.endsWith(".isml/manifest")) {
            return 1;
        }
        return 3;
    }

    public static int c(int i2) {
        switch (i2) {
            case 0:
                return 16777216;
            case 1:
                return 3538944;
            case 2:
                return 13107200;
            case 3:
            case 4:
                return MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES;
            default:
                throw new IllegalStateException();
        }
    }

    public static String j(String str) {
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.charAt(i3) == '%') {
                i2++;
            }
        }
        if (i2 != 0) {
            int i4 = length - (i2 * 2);
            StringBuilder sb = new StringBuilder(i4);
            Matcher matcher = h.matcher(str);
            int i5 = 0;
            for (int i6 = i2; i6 > 0 && matcher.find(); i6--) {
                sb.append((CharSequence) str, i5, matcher.start()).append((char) Integer.parseInt(matcher.group(1), 16));
                i5 = matcher.end();
            }
            if (i5 < length) {
                sb.append((CharSequence) str, i5, length);
            }
            if (sb.length() != i4) {
                return null;
            }
            return sb.toString();
        }
        return str;
    }

    public static void a(Throwable th) {
        b(th);
    }

    private static <T extends Throwable> void b(Throwable th) throws Throwable {
        throw th;
    }

    public static int a(byte[] bArr, int i2, int i3, int i4) {
        while (i2 < i3) {
            i4 = (i4 << 8) ^ i[((i4 >>> 24) ^ (bArr[i2] & 255)) & 255];
            i2++;
        }
        return i4;
    }
}
