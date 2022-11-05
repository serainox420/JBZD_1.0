package com.flurry.sdk;

import android.location.Criteria;
import android.location.Location;
import com.google.android.gms.cast.framework.media.NotificationOptions;
/* loaded from: classes2.dex */
public final class lp extends lq {

    /* renamed from: a  reason: collision with root package name */
    public static final Integer f3037a = 229;
    public static final Integer b = 6;
    public static final Integer c = 4;
    public static final Integer d = 2;
    public static final String e = null;
    public static final Boolean f = true;
    public static final Boolean g = true;
    public static final String h = null;
    public static final Boolean i = true;
    public static final Criteria j = null;
    public static final Location k = null;
    public static final Long l = Long.valueOf((long) NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    public static final Boolean m = true;
    public static final Long n = null;
    public static final Byte o = (byte) -1;
    public static final Boolean p = false;
    public static final String q = null;
    public static final Boolean r = true;
    private static lp s;

    public static synchronized lp a() {
        lp lpVar;
        synchronized (lp.class) {
            if (s == null) {
                s = new lp();
            }
            lpVar = s;
        }
        return lpVar;
    }

    private lp() {
        a("AgentVersion", f3037a);
        a("ReleaseMajorVersion", b);
        a("ReleaseMinorVersion", c);
        a("ReleasePatchVersion", d);
        a("ReleaseBetaVersion", "");
        a("VersionName", e);
        a("CaptureUncaughtExceptions", f);
        a("UseHttps", g);
        a("ReportUrl", h);
        a("ReportLocation", i);
        a("ExplicitLocation", k);
        a("ContinueSessionMillis", l);
        a("LogEvents", m);
        a("Age", n);
        a("Gender", o);
        a("UserId", "");
        a("ProtonEnabled", p);
        a("ProtonConfigUrl", q);
        a("analyticsEnabled", r);
    }
}
