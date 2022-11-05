package com.flurry.sdk;

import java.util.Locale;
/* loaded from: classes2.dex */
public final class jo {

    /* renamed from: a  reason: collision with root package name */
    private static jo f2930a;

    public static synchronized jo a() {
        jo joVar;
        synchronized (jo.class) {
            if (f2930a == null) {
                f2930a = new jo();
            }
            joVar = f2930a;
        }
        return joVar;
    }

    private jo() {
    }

    public static String b() {
        return Locale.getDefault().getLanguage() + io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR + Locale.getDefault().getCountry();
    }
}
