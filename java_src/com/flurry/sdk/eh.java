package com.flurry.sdk;
/* loaded from: classes2.dex */
public class eh extends kg {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2612a = eh.class.getName();
    public int b;
    public int c;
    public ei d;
    public String e;
    public Long f;

    public eh() {
        super("com.flurry.android.impl.analytics.tumblr.TumblrEvents");
        this.b = a.b;
        this.d = ei.kUnknown;
        this.e = "";
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes2.dex */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f2613a = 1;
        public static final int b = 2;
        private static final /* synthetic */ int[] c = {f2613a, b};

        public static int[] a() {
            return (int[]) c.clone();
        }
    }

    public static void a(int i, Long l) {
        km.a(5, f2612a, "Post success:" + l + " and " + i);
        eh ehVar = new eh();
        ehVar.c = i;
        ehVar.f = l;
        ehVar.b = a.f2613a;
        ehVar.b();
    }

    public static void a(ei eiVar, int i, String str) {
        km.a(5, f2612a, "Post failure:" + eiVar + " and " + i);
        eh ehVar = new eh();
        ehVar.d = eiVar;
        ehVar.c = i;
        ehVar.e = str;
        ehVar.b = a.b;
        ehVar.b();
    }
}
