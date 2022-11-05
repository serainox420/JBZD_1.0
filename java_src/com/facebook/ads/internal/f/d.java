package com.facebook.ads.internal.f;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class d {
    private e c;
    private String d;
    private int b = 0;

    /* renamed from: a  reason: collision with root package name */
    private List<a> f2149a = new ArrayList();

    public d(e eVar, String str) {
        this.c = eVar;
        this.d = str;
    }

    public e a() {
        return this.c;
    }

    public void a(a aVar) {
        this.f2149a.add(aVar);
    }

    public String b() {
        return this.d;
    }

    public int c() {
        return this.f2149a.size();
    }

    public a d() {
        if (this.b < this.f2149a.size()) {
            this.b++;
            return this.f2149a.get(this.b - 1);
        }
        return null;
    }
}
