package com.facebook.ads.internal.i.a;
/* loaded from: classes.dex */
public enum j {
    GET(true, false),
    POST(true, true);
    
    private boolean c;
    private boolean d;

    j(boolean z, boolean z2) {
        this.c = z;
        this.d = z2;
    }

    public boolean a() {
        return this.c;
    }

    public boolean b() {
        return this.d;
    }

    public String c() {
        return toString();
    }
}
