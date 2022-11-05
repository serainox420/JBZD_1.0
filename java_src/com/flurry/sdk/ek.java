package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ek {

    /* renamed from: a  reason: collision with root package name */
    public final List<ej> f2616a;

    public ek() {
        this.f2616a = new ArrayList();
    }

    public ek(List<ej> list) {
        this.f2616a = new ArrayList(list);
    }

    public ek(Map<String, String> map) {
        this();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f2616a.add(new ej(entry.getKey(), entry.getValue()));
        }
    }

    public final String a() {
        if (this.f2616a.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (ej ejVar : this.f2616a) {
            sb.append('&').append(ee.a(ejVar.f2615a).concat("=").concat(ee.a(ejVar.b)));
        }
        return sb.toString().substring(1);
    }

    public final void a(ek ekVar) {
        this.f2616a.addAll(ekVar.f2616a);
    }
}
