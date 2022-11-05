package com.flurry.sdk;

import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class fg extends kr {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2675a = fg.class.getSimpleName();

    public final String a(a aVar, String str) {
        String replace;
        String str2;
        String a2 = a(str);
        while (a2 != null) {
            r rVar = aVar.c.d;
            az a3 = aVar.c.e.a();
            cs csVar = aVar.c.e.b.b;
            if (a("fids", a2)) {
                StringBuilder sb = new StringBuilder();
                boolean z = true;
                for (Map.Entry entry : Collections.unmodifiableMap(jl.a().f2923a).entrySet()) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append(((jt) entry.getKey()).c).append(":");
                    if (((jt) entry.getKey()).d) {
                        sb.append(new String((byte[]) entry.getValue()));
                        z = false;
                    } else {
                        sb.append(ly.a((byte[]) entry.getValue()));
                        z = false;
                    }
                }
                km.a(3, f2675a, "Replacing param fids with: " + sb.toString());
                replace = str.replace(a2, ly.c(sb.toString()));
            } else if (a(AnalyticsSQLiteHelper.EVENT_LIST_SID, a2)) {
                jk.a();
                String valueOf = String.valueOf(jk.c());
                km.a(3, f2675a, "Replacing param sid with: " + valueOf);
                replace = str.replace(a2, ly.c(valueOf));
            } else if (a("lid", a2)) {
                String valueOf2 = String.valueOf(a3.f2467a);
                km.a(3, f2675a, "Replacing param lid with: " + valueOf2);
                replace = str.replace(a2, ly.c(valueOf2));
            } else if (!a("guid", a2)) {
                if (a("ats", a2)) {
                    String valueOf3 = String.valueOf(System.currentTimeMillis());
                    km.a(3, f2675a, "Replacing param ats with: " + valueOf3);
                    replace = str.replace(a2, ly.c(valueOf3));
                } else if (!a("apik", a2)) {
                    if (a("hid", a2)) {
                        String str3 = csVar.b;
                        km.a(3, f2675a, "Replacing param hid with: " + str3);
                        replace = str.replace(a2, ly.c(str3));
                    } else if (a("eso", a2)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        jk.a();
                        String l = Long.toString(currentTimeMillis - jk.c());
                        km.a(3, f2675a, "Replacing param eso with: " + l);
                        replace = str.replace(a2, ly.c(l));
                    } else if (a("uc", a2)) {
                        String str4 = "";
                        e m = rVar.m();
                        if (m != null) {
                            Iterator<Map.Entry<String, String>> it = m.getUserCookies().entrySet().iterator();
                            while (true) {
                                str2 = str4;
                                if (!it.hasNext()) {
                                    break;
                                }
                                Map.Entry<String, String> next = it.next();
                                str4 = str2 + "c_" + ly.c(next.getKey()) + "=" + ly.c(next.getValue()) + "&";
                            }
                        } else {
                            str2 = str4;
                        }
                        km.a(3, f2675a, "Replacing param uc with: " + str2);
                        replace = str.replace(a2, str2);
                        if (str2.equals("") && replace.length() > 0) {
                            replace = replace.substring(0, replace.length() - 1);
                        }
                    } else {
                        km.a(3, f2675a, "Unknown param: " + a2);
                        replace = str.replace(a2, "");
                    }
                } else {
                    String str5 = jy.a().d;
                    km.a(3, f2675a, "Replacing param apik with: " + str5);
                    replace = str.replace(a2, ly.c(str5));
                }
            } else {
                String str6 = a3.c;
                km.a(3, f2675a, "Replacing param guid with: " + str6);
                replace = str.replace(a2, ly.c(str6));
            }
            a2 = a(replace);
            str = replace;
        }
        return fm.a(aVar, str);
    }
}
