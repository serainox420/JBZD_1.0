package com.applovin.impl.sdk;
/* loaded from: classes.dex */
public class bz implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private static int f1625a = 0;
    private final int b;
    private final String c;
    private final Object d;

    private bz(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("No name specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No default value specified");
        }
        this.c = str;
        this.d = obj;
        this.b = f1625a;
        f1625a++;
    }

    public int a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a(Object obj) {
        return this.d.getClass().cast(obj);
    }

    public String b() {
        return this.c;
    }

    public Object c() {
        return this.d;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null || !(obj instanceof bz)) {
            return 0;
        }
        return this.c.compareTo(((bz) obj).b());
    }
}
