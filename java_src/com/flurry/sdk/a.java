package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2.dex */
public class a {
    private static final String d = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public final ba f2410a;
    final Map<String, String> b;
    public final b c;

    public a(ba baVar, Map<String, String> map, b bVar) {
        this.f2410a = baVar;
        this.b = map;
        this.c = bVar;
    }

    public final String a(String str) {
        if (this.b == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.b.get(str);
    }

    public final String a(String str, String str2) {
        if (this.b == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.b.put(str, str2);
    }

    public static ba b(String str) {
        ba[] values;
        for (ba baVar : ba.values()) {
            if (baVar.toString().equals(str)) {
                km.a(5, d, "Action Type for name: " + str + " is " + baVar);
                return baVar;
            }
        }
        return ba.AC_UNKNOWN;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("action=");
        sb.append(this.f2410a.toString());
        sb.append(",params=");
        for (Map.Entry<String, String> entry : this.b.entrySet()) {
            sb.append(",key=" + entry.getKey() + ",value=" + entry.getValue());
        }
        sb.append(",");
        sb.append(",fTriggeringEvent=");
        sb.append(this.c);
        return sb.toString();
    }
}
