package com.flurry.sdk;

import android.location.Location;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class fi {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f2677a = new AtomicInteger(0);

    public static int a() {
        return f2677a.incrementAndGet();
    }

    public static AdCreative a(cr crVar) {
        if (crVar == null) {
            return null;
        }
        return new AdCreative(crVar.b, crVar.f2515a, crVar.d, crVar.c, crVar.e);
    }

    public static AdCreative a(cs csVar) {
        cr crVar;
        if (csVar == null) {
            return null;
        }
        List<cn> list = csVar.f;
        if (list == null || list.isEmpty()) {
            return null;
        }
        cn cnVar = list.get(0);
        if (cnVar != null && (crVar = cnVar.d) != null) {
            return a(crVar);
        }
        return null;
    }

    public static dg b() {
        int e = lw.e();
        if (e == 1) {
            return dg.PORTRAIT;
        }
        if (e == 2) {
            return dg.LANDSCAPE;
        }
        return dg.UNKNOWN;
    }

    public static db c() {
        db dbVar = new db();
        Location g = jp.a().g();
        if (g != null) {
            double longitude = (float) g.getLongitude();
            int c = jp.c();
            dbVar.f2527a = (float) ly.a((float) g.getLatitude(), c);
            dbVar.b = (float) ly.a(longitude, c);
        }
        return dbVar;
    }

    public static List<String> d() {
        ArrayList arrayList = new ArrayList();
        HashMap<String, Map<String, String>> b = ka.a().b();
        if (!b.isEmpty()) {
            for (String str : b.keySet()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static List<co> e() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : Collections.unmodifiableMap(jl.a().f2923a).entrySet()) {
            co coVar = new co();
            coVar.f2512a = ((jt) entry.getKey()).c;
            if (((jt) entry.getKey()).d) {
                coVar.b = new String((byte[]) entry.getValue());
            } else {
                coVar.b = ly.b((byte[]) entry.getValue());
            }
            arrayList.add(coVar);
        }
        return arrayList;
    }

    public static List<cy> f() {
        ArrayList arrayList = new ArrayList();
        i.a().h.b();
        for (bf bfVar : i.a().h.a()) {
            cy cyVar = new cy();
            cyVar.f2522a = bfVar.f2477a;
            cyVar.b = bfVar.b;
            cyVar.d = bfVar.d;
            cyVar.c = bfVar.c;
            cyVar.e = bfVar.j;
            cyVar.f = bfVar.e;
            cyVar.g = bfVar.i;
            cyVar.h = bfVar.f;
            cyVar.i = bfVar.g;
            cyVar.j = bfVar.h;
            arrayList.add(cyVar);
        }
        return arrayList;
    }

    public static List<dl> g() {
        ArrayList arrayList = new ArrayList();
        i.a();
        i.b().b();
        i.a();
        for (bh bhVar : i.b().a()) {
            dl dlVar = new dl();
            dlVar.f2537a = bhVar.f2482a;
            dlVar.b = bhVar.f;
            dlVar.c = bhVar.d;
            arrayList.add(dlVar);
        }
        return arrayList;
    }

    public static List<di> a(List<az> list) {
        ArrayList arrayList = new ArrayList();
        for (az azVar : list) {
            di diVar = new di();
            diVar.f2534a = azVar.b;
            diVar.b = azVar.c == null ? "" : azVar.c;
            ArrayList arrayList2 = new ArrayList();
            synchronized (azVar) {
                for (ax axVar : azVar.d) {
                    if (axVar.c) {
                        dh dhVar = new dh();
                        dhVar.f2533a = axVar.b;
                        dhVar.c = axVar.d;
                        Map<String, String> map = axVar.e;
                        HashMap hashMap = new HashMap();
                        hashMap.putAll(map);
                        dhVar.b = hashMap;
                        arrayList2.add(dhVar);
                    }
                }
            }
            diVar.c = arrayList2;
            if (arrayList2.size() > 0) {
                arrayList.add(diVar);
            }
        }
        return arrayList;
    }

    public static List<a> a(cn cnVar, b bVar) {
        ArrayList arrayList = new ArrayList();
        List<cv> list = cnVar.e;
        String str = bVar.f2471a.ag;
        for (cv cvVar : list) {
            if (cvVar.f2519a.equals(str)) {
                for (String str2 : cvVar.b) {
                    HashMap hashMap = new HashMap();
                    String charSequence = str2.toString();
                    int indexOf = charSequence.indexOf(63);
                    if (indexOf != -1) {
                        String substring = charSequence.substring(0, indexOf);
                        String substring2 = charSequence.substring(indexOf + 1);
                        if (substring2.contains("%{eventParams}")) {
                            substring2 = substring2.replace("%{eventParams}", "");
                            hashMap.putAll(bVar.b);
                        }
                        hashMap.putAll(ly.h(substring2));
                        charSequence = substring;
                    }
                    arrayList.add(new a(a.b(charSequence), hashMap, bVar));
                }
            }
        }
        return arrayList;
    }
}
