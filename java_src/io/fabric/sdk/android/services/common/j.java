package io.fabric.sdk.android.services.common;
/* compiled from: Crash.java */
/* loaded from: classes3.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private final String f5671a;
    private final String b;

    public j(String str, String str2) {
        this.f5671a = str;
        this.b = str2;
    }

    public String a() {
        return this.f5671a;
    }

    public String b() {
        return this.b;
    }

    /* compiled from: Crash.java */
    /* loaded from: classes3.dex */
    public static class b extends j {
        public b(String str, String str2) {
            super(str, str2);
        }
    }

    /* compiled from: Crash.java */
    /* loaded from: classes3.dex */
    public static class a extends j {
        public a(String str, String str2) {
            super(str, str2);
        }
    }
}
