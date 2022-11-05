package commons.validator.routines;

import com.facebook.appevents.AppEventsConstants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public class InetAddressValidator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final InetAddressValidator f5631a = new InetAddressValidator();
    private final RegexValidator b = new RegexValidator("^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$");

    public static InetAddressValidator getInstance() {
        return f5631a;
    }

    public boolean isValid(String str) {
        return isValidInet4Address(str) || isValidInet6Address(str);
    }

    public boolean isValidInet4Address(String str) {
        String[] match = this.b.match(str);
        if (match == null) {
            return false;
        }
        for (int i = 0; i <= 3; i++) {
            String str2 = match[i];
            if (str2 == null || str2.length() == 0) {
                return false;
            }
            try {
                if (Integer.parseInt(str2) > 255) {
                    return false;
                }
                if (str2.length() > 1 && str2.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                    return false;
                }
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return true;
    }

    public boolean isValidInet6Address(String str) {
        String[] strArr;
        int i;
        boolean z = str.indexOf("::") > -1;
        if (!z || str.indexOf("::") == str.lastIndexOf("::")) {
            if (str.startsWith(":") && !str.startsWith("::")) {
                return false;
            }
            if (str.endsWith(":") && !str.endsWith("::")) {
                return false;
            }
            String[] split = str.split(":");
            if (z) {
                ArrayList arrayList = new ArrayList(Arrays.asList(split));
                if (str.endsWith("::")) {
                    arrayList.add("");
                } else if (str.startsWith("::") && !arrayList.isEmpty()) {
                    arrayList.remove(0);
                }
                strArr = arrayList.toArray();
            } else {
                strArr = split;
            }
            if (strArr.length > 8) {
                return false;
            }
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                String str2 = strArr[i4];
                if (str2.length() == 0) {
                    i = i2 + 1;
                    if (i > 1) {
                        return false;
                    }
                } else if (str2.indexOf(".") > -1) {
                    if (!str.endsWith(str2) || i4 > strArr.length - 1 || i4 > 6 || !isValidInet4Address(str2)) {
                        return false;
                    }
                    i3 += 2;
                    i2 = 0;
                } else if (str2.length() > 4) {
                    return false;
                } else {
                    try {
                        int intValue = Integer.valueOf(str2, 16).intValue();
                        if (intValue < 0 || intValue > 65535) {
                            return false;
                        }
                        i = 0;
                    } catch (NumberFormatException e) {
                        return false;
                    }
                }
                i3++;
                i2 = i;
            }
            return i3 >= 8 || z;
        }
        return false;
    }
}
