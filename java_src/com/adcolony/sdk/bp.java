package com.adcolony.sdk;

import com.adcolony.sdk.bn;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bp {

    /* renamed from: a  reason: collision with root package name */
    private bp f1209a;
    private boolean b;
    private boolean c;
    private boolean d;
    private bs e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bq bqVar) {
        this(bqVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bq bqVar, bp bpVar) {
        this(bqVar, bpVar, true);
    }

    bp(bq bqVar, bp bpVar, boolean z) {
        this.b = true;
        this.c = false;
        this.d = false;
        this.e = null;
        this.f1209a = bpVar;
        if (bqVar != null && z) {
            this.d = true;
            bqVar.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        a(true);
    }

    synchronized void a(boolean z) {
        a(z, bn.a.YVOLVER_ERROR_UNKNOWN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(boolean z, bn.a aVar) {
        this.b = z;
        this.d = true;
        if (!z) {
            this.e = new bs(aVar, "Yvolver error when setSuccess");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(bs bsVar) {
        this.b = false;
        this.e = bsVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized bs c() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d() {
        this.c = true;
        this.d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean e() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean f() {
        return !this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean g() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean h() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f1209a == null || this.f1209a.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized bp j() {
        return this.f1209a;
    }
}
