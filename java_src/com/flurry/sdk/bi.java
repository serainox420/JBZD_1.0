package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class bi {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2483a = bi.class.getSimpleName();
    private final HashMap<String, bh> b = new HashMap<>();

    public final synchronized void a(b bVar) {
        cz czVar;
        if (bVar != null) {
            List<cz> list = bVar.e.b.b.g;
            if (list != null) {
                for (cz czVar2 : list) {
                    if (da.STREAM.equals(czVar2.f2523a)) {
                        czVar = czVar2;
                        break;
                    }
                }
            }
            czVar = null;
            if (czVar != null) {
                String str = czVar.b;
                if (!TextUtils.isEmpty(str)) {
                    bh bhVar = this.b.get(str);
                    if (bhVar == null) {
                        bhVar = new bh(str, czVar.e);
                        this.b.put(str, bhVar);
                    }
                    bhVar.c = bVar.f2471a.ag;
                    bhVar.e = System.currentTimeMillis();
                    if (bc.EV_RENDERED.equals(bVar.f2471a)) {
                        bhVar.d = System.currentTimeMillis();
                    }
                    bhVar.f = bVar.f2471a.ag;
                }
            }
        }
    }

    public final synchronized List<bh> a() {
        return new ArrayList(this.b.values());
    }

    public final synchronized void b() {
        for (bh bhVar : a()) {
            if (System.currentTimeMillis() > bhVar.e + bhVar.b) {
                this.b.remove(bhVar.f2482a);
            }
        }
    }
}
