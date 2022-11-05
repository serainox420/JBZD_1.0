package com.flurry.sdk;

import java.util.Locale;
/* loaded from: classes2.dex */
public class jz {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2948a = jz.class.getSimpleName();

    public static int a() {
        int intValue = ((Integer) lp.a().a("AgentVersion")).intValue();
        km.a(4, f2948a, "getAgentVersion() = " + intValue);
        return intValue;
    }

    private static String c() {
        return (String) lp.a().a("ReleaseBetaVersion");
    }

    public static String b() {
        Object obj;
        if (c().length() > 0) {
            obj = ".";
        } else {
            obj = "";
        }
        return String.format(Locale.getDefault(), "Flurry_Android_%d_%d.%d.%d%s%s", Integer.valueOf(a()), Integer.valueOf(((Integer) lp.a().a("ReleaseMajorVersion")).intValue()), Integer.valueOf(((Integer) lp.a().a("ReleaseMinorVersion")).intValue()), Integer.valueOf(((Integer) lp.a().a("ReleasePatchVersion")).intValue()), obj, c());
    }
}
