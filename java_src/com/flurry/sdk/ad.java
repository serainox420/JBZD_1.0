package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f2422a = new String[0];

    /* JADX WARN: Code restructure failed: missing block: B:75:0x011b, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L97;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> a(au auVar, int i) {
        String[] strArr;
        String str;
        String str2;
        if (auVar == null) {
            return Collections.emptyList();
        }
        cn a2 = auVar.b.a(i);
        if (a2 == null) {
            return Collections.emptyList();
        }
        if (ah.STREAM_ONLY.equals(ah.a(a2.g))) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (a2.i != null && a2.i.size() > 0) {
            for (String str3 : a2.i) {
                if (!TextUtils.isEmpty(str3)) {
                    arrayList.add(str3);
                }
            }
        } else if (a2.f2511a == 7) {
            for (de deVar : auVar.b.b()) {
                if (df.IMAGE.equals(deVar.b) || df.VIDEO.equals(deVar.b) || df.VAST_VIDEO.equals(deVar.b)) {
                    if (df.VAST_VIDEO.equals(deVar.b)) {
                        str2 = b(auVar, i);
                    } else {
                        str2 = deVar.c;
                    }
                    if (!TextUtils.isEmpty(str2) && !a(a2.j, str2)) {
                        arrayList.add(str2);
                    }
                }
            }
        } else {
            String b = b(auVar, i);
            if (!TextUtils.isEmpty(b) && !a(a2.j, b)) {
                arrayList.add(b);
            }
            String str4 = (a2 == null || a2.b == null || a2.f2511a != 3) ? null : a2.b;
            if (!TextUtils.isEmpty(str4) && !a(a2.j, str4)) {
                arrayList.add(str4);
            }
            for (String str5 : f2422a) {
                if (a2 == null || TextUtils.isEmpty(str5)) {
                    str = null;
                } else {
                    if (a2.c != null) {
                        str = a(a2.c, str5);
                    }
                    str = null;
                }
                if (!TextUtils.isEmpty(str) && !a(a2.j, str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    private static String b(au auVar, int i) {
        fr b = auVar.b(i);
        if (b != null) {
            return b.a();
        }
        return null;
    }

    private static boolean a(List<String> list, String str) {
        if (list != null && !TextUtils.isEmpty(str)) {
            for (String str2 : list) {
                if (str.equals(str2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private static String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        String str3 = "";
        try {
            String str4 = str;
            for (String str5 : Arrays.asList(str2.split("\\s*-\\s*"))) {
                String string = new JSONObject(str4).getString(str5);
                str4 = !TextUtils.isEmpty(string) ? string : str4;
                str3 = string;
            }
            return str3;
        } catch (JSONException e) {
            return null;
        }
    }
}
