package com.adcolony.sdk;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    HashMap<Integer, Boolean> f1418a = new HashMap<>();
    al b;
    y c;
    String d;
    int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, int i) {
        this.d = str;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(z zVar) {
        if (this.b == null) {
            this.b = new al(this.d, this.e);
            this.c = new y(this.d, this.e);
        }
        int c = s.c(zVar.b, "id");
        if (s.d(zVar.b, "use_sound_pool")) {
            this.f1418a.put(Integer.valueOf(c), true);
            this.b.a(zVar);
            return;
        }
        this.f1418a.put(Integer.valueOf(c), false);
        this.c.a(zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.b.i.autoPause();
        this.c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.b.i.autoResume();
        this.c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(z zVar) {
        if (this.f1418a.get(Integer.valueOf(s.c(zVar.b, "id"))).booleanValue()) {
            this.b.d(zVar);
        } else {
            this.c.b(zVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(z zVar) {
        if (this.f1418a.get(Integer.valueOf(s.c(zVar.b, "id"))).booleanValue()) {
            this.b.c(zVar);
        } else {
            this.c.c(zVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(z zVar) {
        if (this.f1418a.get(Integer.valueOf(s.c(zVar.b, "id"))).booleanValue()) {
            this.b.b(zVar);
        } else {
            this.c.d(zVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(z zVar) {
        if (this.f1418a.get(Integer.valueOf(s.c(zVar.b, "id"))).booleanValue()) {
            this.b.e(zVar);
        } else {
            this.c.e(zVar);
        }
    }
}
