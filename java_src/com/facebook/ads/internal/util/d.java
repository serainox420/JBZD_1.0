package com.facebook.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final List<c> f2236a = new ArrayList();

    public static String a() {
        synchronized (f2236a) {
            if (f2236a.isEmpty()) {
                return "";
            }
            ArrayList<c> arrayList = new ArrayList(f2236a);
            f2236a.clear();
            JSONArray jSONArray = new JSONArray();
            for (c cVar : arrayList) {
                jSONArray.put(cVar.a());
            }
            return jSONArray.toString();
        }
    }

    public static void a(c cVar) {
        synchronized (f2236a) {
            f2236a.add(cVar);
        }
    }
}
