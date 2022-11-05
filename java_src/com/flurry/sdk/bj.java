package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class bj {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2484a = bj.class.getName();
    private int b;
    private String c;
    private String d;
    private List<bl> e;

    public bj(r rVar) {
        au l = rVar.l();
        if (l == null) {
            km.a(3, f2484a, "AdController is null. Cannot create response.");
            return;
        }
        this.b = 0;
        this.c = l.c;
        this.d = l.d;
        this.e = new ArrayList();
        a(rVar, l);
    }

    private void a(r rVar, au auVar) {
        this.e.clear();
        for (String str : auVar.f2460a.c()) {
            List<ay> a2 = auVar.f2460a.a((kd<String, ay>) str);
            if (a2 != null && a2.size() > 0) {
                this.e.add(new bl(str, a2, rVar));
            }
        }
    }
}
