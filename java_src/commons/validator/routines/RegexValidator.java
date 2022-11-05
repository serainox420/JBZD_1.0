package commons.validator.routines;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class RegexValidator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern[] f5633a;

    public RegexValidator(String str) {
        this(str, true);
    }

    public RegexValidator(String str, boolean z) {
        this(new String[]{str}, z);
    }

    public RegexValidator(String[] strArr) {
        this(strArr, true);
    }

    public RegexValidator(String[] strArr, boolean z) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("Regular expressions are missing");
        }
        this.f5633a = new Pattern[strArr.length];
        int i = z ? 0 : 2;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (strArr[i2] == null || strArr[i2].length() == 0) {
                throw new IllegalArgumentException("Regular expression[" + i2 + "] is missing");
            }
            this.f5633a[i2] = Pattern.compile(strArr[i2], i);
        }
    }

    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < this.f5633a.length; i++) {
            if (this.f5633a[i].matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    public String[] match(String str) {
        if (str == null) {
            return null;
        }
        for (int i = 0; i < this.f5633a.length; i++) {
            Matcher matcher = this.f5633a[i].matcher(str);
            if (matcher.matches()) {
                int groupCount = matcher.groupCount();
                String[] strArr = new String[groupCount];
                for (int i2 = 0; i2 < groupCount; i2++) {
                    strArr[i2] = matcher.group(i2 + 1);
                }
                return strArr;
            }
        }
        return null;
    }

    public String validate(String str) {
        if (str == null) {
            return null;
        }
        for (int i = 0; i < this.f5633a.length; i++) {
            Matcher matcher = this.f5633a[i].matcher(str);
            if (matcher.matches()) {
                int groupCount = matcher.groupCount();
                if (groupCount == 1) {
                    return matcher.group(1);
                }
                StringBuffer stringBuffer = new StringBuffer();
                for (int i2 = 0; i2 < groupCount; i2++) {
                    String group = matcher.group(i2 + 1);
                    if (group != null) {
                        stringBuffer.append(group);
                    }
                }
                return stringBuffer.toString();
            }
        }
        return null;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("RegexValidator{");
        for (int i = 0; i < this.f5633a.length; i++) {
            if (i > 0) {
                stringBuffer.append(",");
            }
            stringBuffer.append(this.f5633a[i].pattern());
        }
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
