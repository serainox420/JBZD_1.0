package com.facebook.ads.internal.i.a;
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    protected String f2176a;
    protected j b;
    protected String c;
    protected byte[] d;

    public l(String str, p pVar) {
        this.f2176a = "";
        if (str != null) {
            this.f2176a = str;
        }
        if (pVar != null) {
            this.f2176a += "?" + pVar.a();
        }
    }

    public String a() {
        return this.f2176a;
    }

    public j b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public byte[] d() {
        return this.d;
    }
}
