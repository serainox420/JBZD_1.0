package commons.validator.routines;

import com.facebook.common.util.UriUtil;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class UrlValidator implements Serializable {
    public static final long ALLOW_2_SLASHES = 2;
    public static final long ALLOW_ALL_SCHEMES = 1;
    public static final long ALLOW_LOCAL_URLS = 8;
    public static final long NO_FRAGMENTS = 4;

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f5634a = Pattern.compile("^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?");
    private static final Pattern b = Pattern.compile("^\\p{Alpha}[\\p{Alnum}\\+\\-\\.]*");
    private static final Pattern c = Pattern.compile("^([\\p{Alnum}\\-\\.]*)(:\\d*)?(.*)?");
    private static final Pattern d = Pattern.compile("^(/[-\\w:@&?=+,.!/~*'%$_;\\(\\)]*)?$");
    private static final Pattern e = Pattern.compile("^(.*)$");
    private static final Pattern f = Pattern.compile("^:(\\d{1,5})$");
    private static final String[] j = {"http", "https", "ftp"};
    private static final UrlValidator k = new UrlValidator();
    private final long g;
    private final Set h;
    private final RegexValidator i;

    public static UrlValidator getInstance() {
        return k;
    }

    public UrlValidator() {
        this((String[]) null);
    }

    public UrlValidator(String[] strArr) {
        this(strArr, 0L);
    }

    public UrlValidator(long j2) {
        this(null, null, j2);
    }

    public UrlValidator(String[] strArr, long j2) {
        this(strArr, null, j2);
    }

    public UrlValidator(RegexValidator regexValidator, long j2) {
        this(null, regexValidator, j2);
    }

    public UrlValidator(String[] strArr, RegexValidator regexValidator, long j2) {
        this.g = j2;
        if (a(1L)) {
            this.h = Collections.EMPTY_SET;
        } else {
            strArr = strArr == null ? j : strArr;
            this.h = new HashSet(strArr.length);
            for (String str : strArr) {
                this.h.add(str.toLowerCase(Locale.ENGLISH));
            }
        }
        this.i = regexValidator;
    }

    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        Matcher matcher = f5634a.matcher(str);
        if (!matcher.matches()) {
            return false;
        }
        String group = matcher.group(2);
        if (!a(group)) {
            return false;
        }
        String group2 = matcher.group(4);
        return ((UriUtil.LOCAL_FILE_SCHEME.equals(group) && "".equals(group2)) || b(group2)) && c(matcher.group(5)) && d(matcher.group(7)) && e(matcher.group(9));
    }

    protected boolean a(String str) {
        if (str != null && b.matcher(str).matches()) {
            return !b(1L) || this.h.contains(str.toLowerCase(Locale.ENGLISH));
        }
        return false;
    }

    protected boolean b(String str) {
        if (str == null) {
            return false;
        }
        if (this.i != null && this.i.isValid(str)) {
            return true;
        }
        Matcher matcher = c.matcher(DomainValidator.a(str));
        if (!matcher.matches()) {
            return false;
        }
        String group = matcher.group(1);
        if (!DomainValidator.getInstance(a(8L)).isValid(group) && !InetAddressValidator.getInstance().isValid(group)) {
            return false;
        }
        String group2 = matcher.group(2);
        if (group2 != null && !f.matcher(group2).matches()) {
            return false;
        }
        String group3 = matcher.group(3);
        return group3 == null || group3.trim().length() <= 0;
    }

    protected boolean c(String str) {
        if (str != null && d.matcher(str).matches()) {
            int a2 = a("//", str);
            if (b(2L) && a2 > 0) {
                return false;
            }
            int a3 = a("/", str);
            int a4 = a("..", str);
            return a4 <= 0 || (a3 - a2) + (-1) > a4;
        }
        return false;
    }

    protected boolean d(String str) {
        if (str == null) {
            return true;
        }
        return e.matcher(str).matches();
    }

    protected boolean e(String str) {
        if (str == null) {
            return true;
        }
        return b(4L);
    }

    protected int a(String str, String str2) {
        int i = 0;
        int i2 = 0;
        while (i2 != -1) {
            i2 = str2.indexOf(str, i2);
            if (i2 > -1) {
                i2++;
                i++;
            }
        }
        return i;
    }

    private boolean a(long j2) {
        return (this.g & j2) > 0;
    }

    private boolean b(long j2) {
        return (this.g & j2) == 0;
    }
}
