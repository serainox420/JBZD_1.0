package com.smaato.soma.debug;
/* compiled from: LogMessage.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f4944a;
    private String b;
    private int c;
    private DebugCategory d;
    private Throwable e;

    public b(String str, String str2, int i, DebugCategory debugCategory) {
        this.f4944a = str;
        this.b = str2;
        this.c = i;
        this.d = debugCategory;
    }

    public b(String str, String str2, int i, DebugCategory debugCategory, Throwable th) {
        this.f4944a = str;
        this.b = str2;
        this.c = i;
        this.d = debugCategory;
        this.e = th;
    }

    public final String a() {
        return this.f4944a;
    }

    public final String b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final DebugCategory d() {
        return this.d;
    }

    public Throwable e() {
        return this.e;
    }
}
