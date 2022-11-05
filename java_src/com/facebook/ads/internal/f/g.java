package com.facebook.ads.internal.f;

import java.util.UUID;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2154a = g.class.getSimpleName();
    private static volatile boolean b = false;
    private static double c;
    private static String d;

    public static void a() {
        if (!b) {
            synchronized (f2154a) {
                if (!b) {
                    b = true;
                    c = System.currentTimeMillis() / 1000.0d;
                    d = UUID.randomUUID().toString();
                }
            }
        }
    }

    public static double b() {
        return c;
    }

    public static String c() {
        return d;
    }
}
