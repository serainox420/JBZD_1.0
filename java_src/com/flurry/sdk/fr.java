package com.flurry.sdk;

import com.flurry.sdk.fz;
import com.flurry.sdk.gb;
import com.flurry.sdk.gc;
import com.flurry.sdk.gd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class fr {

    /* renamed from: a  reason: collision with root package name */
    int f2691a;
    public List<fz> b;
    public boolean c;
    public boolean d;

    /* synthetic */ fr(byte b) {
        this();
    }

    private fr() {
    }

    public static fr a(fr frVar, fr frVar2) {
        gd gdVar;
        if (frVar == null || frVar2 == null) {
            return null;
        }
        List<fz> list = frVar.b;
        List<fz> list2 = frVar2.b;
        if (list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return null;
        }
        fz fzVar = list.get(0);
        gb gbVar = fzVar.c;
        gb gbVar2 = list2.get(0).c;
        if (gbVar == null || gbVar2 == null) {
            return null;
        }
        if (!fu.Wrapper.equals(gbVar.f2708a) || (!fu.InLine.equals(gbVar2.f2708a) && !fu.Wrapper.equals(gbVar2.f2708a))) {
            return null;
        }
        List<gc> list3 = gbVar.g;
        List<gc> list4 = gbVar2.g;
        if (list4 == null || list4.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        if (list3 == null || list3.isEmpty()) {
            arrayList.addAll(list4);
        } else {
            gc gcVar = list4.get(0);
            gd gdVar2 = list3.get(0).d;
            gd gdVar3 = gcVar.d;
            if (gdVar2 == null || gdVar3 == null) {
                return null;
            }
            if (gdVar2 == null || gdVar3 == null) {
                gdVar = null;
            } else {
                kd<fx, String> kdVar = new kd<>();
                kd<fx, String> kdVar2 = gdVar2.c;
                if (kdVar2 != null) {
                    kdVar.a(kdVar2);
                }
                kd<fx, String> kdVar3 = gdVar3.c;
                if (kdVar3 != null) {
                    kdVar.a(kdVar3);
                }
                kd<fy, String> kdVar4 = new kd<>();
                kd<fy, String> kdVar5 = gdVar2.d;
                if (kdVar5 != null) {
                    kdVar4.a(kdVar5);
                }
                kd<fy, String> kdVar6 = gdVar3.d;
                if (kdVar6 != null) {
                    kdVar4.a(kdVar6);
                }
                gd.a aVar = new gd.a();
                aVar.a(gdVar3.f2712a);
                aVar.b(gdVar3.b);
                aVar.a(kdVar);
                aVar.b(kdVar4);
                aVar.a(gdVar3.e);
                gdVar = aVar.f2713a;
            }
            if (gdVar == null) {
                return null;
            }
            gc.a aVar2 = new gc.a();
            aVar2.a(gcVar.f2710a);
            aVar2.a(gcVar.b);
            aVar2.a(gcVar.c);
            aVar2.a(gdVar);
            arrayList.add(aVar2.f2711a);
        }
        gb.a aVar3 = new gb.a();
        aVar3.a(fu.Wrapper);
        aVar3.a(gbVar2.b);
        aVar3.a(gbVar.c);
        ArrayList arrayList2 = new ArrayList();
        List<String> list5 = gbVar.d;
        if (list5 != null) {
            arrayList2.addAll(list5);
        }
        List<String> list6 = gbVar2.d;
        if (list6 != null) {
            for (String str : list6) {
                if (arrayList2.contains(str)) {
                    return null;
                }
            }
            arrayList2.addAll(list6);
        }
        aVar3.a(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        List<String> list7 = gbVar.e;
        if (list7 != null) {
            arrayList3.addAll(list7);
        }
        List<String> list8 = gbVar2.e;
        if (list8 != null) {
            arrayList3.addAll(list8);
        }
        aVar3.b(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        List<String> list9 = gbVar.f;
        if (list9 != null) {
            arrayList4.addAll(list9);
        }
        List<String> list10 = gbVar2.f;
        if (list10 != null) {
            arrayList4.addAll(list10);
        }
        aVar3.c(arrayList4);
        aVar3.d(arrayList);
        gb gbVar3 = aVar3.f2709a;
        fz.a aVar4 = new fz.a();
        aVar4.a(fzVar.f2701a);
        aVar4.a(fzVar.b);
        aVar4.a(gbVar3);
        fz fzVar2 = aVar4.f2702a;
        ArrayList arrayList5 = new ArrayList(1);
        arrayList5.add(fzVar2);
        a aVar5 = new a();
        aVar5.a(arrayList5);
        aVar5.a(frVar.f2691a);
        aVar5.a(fu.InLine.equals(gbVar2.f2708a));
        return aVar5.f2692a;
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public fr f2692a = new fr((byte) 0);

        public final a a(List<fz> list) {
            this.f2692a.b = list;
            return this;
        }

        public final a a(int i) {
            this.f2692a.f2691a = i;
            return this;
        }

        public final a a(boolean z) {
            this.f2692a.c = z;
            return this;
        }

        public final a a() {
            this.f2692a.d = true;
            return this;
        }
    }

    public final String a() {
        gb gbVar;
        List<gc> list;
        gd gdVar;
        ge geVar;
        List<fz> list2 = this.b;
        if (list2 == null || list2.isEmpty() || (gbVar = list2.get(0).c) == null || (list = gbVar.g) == null || list.isEmpty() || (gdVar = list.get(0).d) == null || (geVar = gdVar.e) == null || geVar.c == null) {
            return null;
        }
        return geVar.c;
    }

    public final List<String> a(fy fyVar) {
        gb gbVar;
        List<gc> list;
        gd gdVar;
        kd<fy, String> kdVar;
        ArrayList arrayList = new ArrayList();
        List<fz> list2 = this.b;
        if (list2 != null && !list2.isEmpty() && (gbVar = list2.get(0).c) != null && (list = gbVar.g) != null && !list.isEmpty() && (gdVar = list.get(0).d) != null && (kdVar = gdVar.d) != null) {
            arrayList.addAll(kdVar.a((kd<fy, String>) fyVar));
        }
        return arrayList;
    }

    public final String b() {
        List<String> a2 = a(fy.ClickThrough);
        if (a2.size() > 0) {
            return a2.get(0);
        }
        return null;
    }

    public final List<String> a(fx fxVar) {
        gb gbVar;
        List<gc> list;
        gd gdVar;
        kd<fx, String> kdVar;
        List<fz> list2 = this.b;
        if (list2 == null || list2.isEmpty() || (gbVar = list2.get(0).c) == null || (list = gbVar.g) == null || list.isEmpty() || (gdVar = list.get(0).d) == null || (kdVar = gdVar.c) == null) {
            return null;
        }
        return kdVar.a((kd<fx, String>) fxVar);
    }
}
