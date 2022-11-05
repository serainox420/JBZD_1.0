package com.adcolony.sdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    static u f1500a = new u(3, false);
    static u b = new u(3, true);
    static u c = new u(2, false);
    static u d = new u(2, true);
    static u e = new u(1, false);
    static u f = new u(1, true);
    static u g = new u(0, false);
    static u h = new u(0, true);
    int i;
    boolean j;
    StringBuilder k = new StringBuilder();

    u(int i, boolean z) {
        this.i = i;
        this.j = z;
    }

    synchronized u a(char c2) {
        u uVar;
        if (!this.j || w.f1502a) {
            this.k.append(c2);
            if (c2 == '\n') {
                w.a(this.i, this.k.toString(), this.j);
                this.k.setLength(0);
            }
            uVar = this;
        } else {
            uVar = this;
        }
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized u a(String str) {
        u uVar;
        if (!this.j || w.f1502a) {
            if (str == null) {
                this.k.append("null");
            } else {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    a(str.charAt(i));
                }
            }
            uVar = this;
        } else {
            uVar = this;
        }
        return uVar;
    }

    synchronized u a(Object obj) {
        if (!this.j || (this.j && w.f1502a)) {
            if (obj == null) {
                a("null");
            } else {
                a(obj.toString());
            }
        }
        return this;
    }

    synchronized u a(double d2) {
        u uVar;
        if (!this.j || w.f1502a) {
            au.a(d2, 2, this.k);
            uVar = this;
        } else {
            uVar = this;
        }
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized u a(int i) {
        u uVar;
        if (!this.j || w.f1502a) {
            this.k.append(i);
            uVar = this;
        } else {
            uVar = this;
        }
        return uVar;
    }

    synchronized u a(boolean z) {
        u uVar;
        if (!this.j || w.f1502a) {
            this.k.append(z);
            uVar = this;
        } else {
            uVar = this;
        }
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized u b(Object obj) {
        a(obj);
        return a('\n');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized u b(double d2) {
        a(d2);
        return a('\n');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized u b(int i) {
        a(i);
        return a('\n');
    }

    synchronized u b(boolean z) {
        a(z);
        return a('\n');
    }
}
