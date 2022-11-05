package com.revmob.a;

import com.google.android.gms.common.Scopes;
import com.mobsandgeeks.saripaar.DateFormats;
import com.revmob.RevMobUserGender;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static String f4740a;
    private static RevMobUserGender b = RevMobUserGender.UNDEFINED;
    private static int c = -1;
    private static int d = -1;
    private static Calendar e = null;
    private static String f = null;
    private static List g = null;

    public static RevMobUserGender a() {
        return b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
        if (r0.compareTo(r1) != (-1)) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject a(JSONObject jSONObject) {
        if (c != -1) {
            jSONObject.put("age_range_min", c);
        }
        if (d != -1) {
            jSONObject.put("age_range_max", d);
        }
        if (c <= 0 || d >= 13) {
            if (e != null) {
                jSONObject.put("birthday", new SimpleDateFormat(DateFormats.YMD, Locale.US).format(e.getTime()));
                Calendar calendar = Calendar.getInstance(Locale.US);
                calendar.setTime(new Date());
                Calendar calendar2 = Calendar.getInstance(Locale.US);
                calendar2.setTime(e.getTime());
                calendar2.add(1, 13);
            }
            if (f4740a != null) {
                jSONObject.put(Scopes.EMAIL, f4740a);
            }
            if (b != null) {
                jSONObject.put("gender", b.getValue());
            }
            if (f != null) {
                jSONObject.put("user_page", f);
            }
            if (g != null && g.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < g.size(); i++) {
                    jSONArray.put(g.get(i));
                }
                jSONObject.put("interests", jSONArray);
            }
        }
        return jSONObject;
    }

    public static void a(int i) {
        c = i;
    }

    public static void a(RevMobUserGender revMobUserGender) {
        b = revMobUserGender;
    }

    public static void a(String str) {
        f = str;
    }

    public static void a(Calendar calendar) {
        e = calendar;
    }

    public static void a(List list) {
        g = list;
    }

    public static int b() {
        return c;
    }

    public static void b(int i) {
        d = i;
    }

    public static void b(String str) {
        f4740a = str;
    }

    public static int c() {
        return d;
    }

    public static Calendar d() {
        return e;
    }

    public static String e() {
        return f;
    }

    public static List f() {
        return g;
    }
}
