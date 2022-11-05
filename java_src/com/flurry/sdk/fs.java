package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class fs {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2693a = fs.class.getSimpleName();
    private static int b = 500;

    public static void a(int i) {
        b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
        if (r1.d < r0.d) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ge a(List<ge> list) {
        ge geVar = null;
        if (list == null) {
            return null;
        }
        Iterator<ge> it = list.iterator();
        while (true) {
            ge geVar2 = geVar;
            if (it.hasNext()) {
                geVar = it.next();
                if (geVar.d <= b && geVar.c != null && ((geVar.j != null && geVar.j.equalsIgnoreCase("video/mp4")) || geVar.c.endsWith("mp4"))) {
                    if (geVar2 != null) {
                    }
                }
                geVar = geVar2;
            } else {
                return geVar2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(String str) {
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d{2}):(\\d{2}):(\\d{2})").matcher(str);
            if (!matcher.find() || matcher.groupCount() != 3) {
                return 0;
            }
            try {
                int parseInt = Integer.parseInt(matcher.group(1));
                int parseInt2 = Integer.parseInt(matcher.group(2));
                return Integer.parseInt(matcher.group(3)) + (parseInt * 60 * 60) + (parseInt2 * 60);
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        return 0;
    }

    public static void a(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fx.Close), str, str2, "Close Tracking URL");
        }
    }

    public static void b(au auVar, String str, String str2) {
        List<String> list;
        gb gbVar;
        fr c = auVar.c();
        if (c == null) {
            return;
        }
        List<fz> list2 = c.b;
        if (list2 == null || list2.isEmpty() || (gbVar = list2.get(0).c) == null) {
            list = null;
        } else {
            list = gbVar.f;
        }
        a(list, str, str2, "Error Tracking URL");
    }

    public static void c(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fy.ClickTracking), str, str2, "ClickTracking Tracking URL");
        }
    }

    public static void d(au auVar, String str, String str2) {
        List<String> list;
        gb gbVar;
        fr c = auVar.c();
        if (c == null) {
            return;
        }
        List<fz> list2 = c.b;
        if (list2 == null || list2.isEmpty() || (gbVar = list2.get(0).c) == null) {
            list = null;
        } else {
            list = gbVar.e;
        }
        a(list, str, str2, "Impression Tracking URL");
    }

    public static void e(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fx.Start), str, str2, "Start Tracking URL");
        }
    }

    public static void f(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fx.FirstQuartile), str, str2, "First Quartile Tracking URL");
        }
    }

    public static void g(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fx.Midpoint), str, str2, "Midpoint Tracking URL");
        }
    }

    public static void h(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fx.ThirdQuartile), str, str2, "Third Quartile Tracking URL");
        }
    }

    public static void i(au auVar, String str, String str2) {
        fr c = auVar.c();
        if (c != null) {
            a(c.a(fx.Complete), str, str2, "Complete Tracking URL");
        }
    }

    private static void a(List<String> list, String str, String str2, String str3) {
        if (list != null) {
            for (String str4 : list) {
                if (!TextUtils.isEmpty(str4)) {
                    km.a(3, f2693a, str3 + ": " + str4);
                    i.a().f.b((dp) new Cdo(str, str2, str4, 900000 + System.currentTimeMillis(), 2));
                }
            }
        }
    }
}
