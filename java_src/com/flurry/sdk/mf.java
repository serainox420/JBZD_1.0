package com.flurry.sdk;
/* loaded from: classes2.dex */
public class mf {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3058a = mf.class.getSimpleName();
    private static boolean b;

    public static synchronized void a() {
        synchronized (mf.class) {
            if (!b) {
                ko.a(jk.class);
                try {
                    ko.a(hr.class);
                } catch (NoClassDefFoundError e) {
                    km.a(3, f3058a, "Analytics module not available");
                }
                try {
                    ko.a(md.class);
                } catch (NoClassDefFoundError e2) {
                    km.a(3, f3058a, "Crash module not available");
                }
                try {
                    ko.a((Class<? extends kp>) Class.forName("com.flurry.sdk.i"));
                } catch (ClassNotFoundException | NoClassDefFoundError e3) {
                    km.a(3, f3058a, "Ads module not available");
                }
                b = true;
            }
        }
    }
}
