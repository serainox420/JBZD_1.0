package com.flurry.android;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.hr;
import com.flurry.sdk.jh;
import com.flurry.sdk.jk;
import com.flurry.sdk.jx;
import com.flurry.sdk.jy;
import com.flurry.sdk.jz;
import com.flurry.sdk.ka;
import com.flurry.sdk.kh;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
import com.flurry.sdk.ll;
import com.flurry.sdk.lm;
import com.flurry.sdk.lp;
import com.flurry.sdk.ly;
import com.flurry.sdk.mf;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.Date;
import java.util.Map;
/* loaded from: classes.dex */
public final class FlurryAgent {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2368a = FlurryAgent.class.getSimpleName();
    private static final kh<ll> b = new kh<ll>() { // from class: com.flurry.android.FlurryAgent.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ll llVar) {
            final ll llVar2 = llVar;
            jy.a().a(new Runnable() { // from class: com.flurry.android.FlurryAgent.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    switch (AnonymousClass2.f2370a[llVar2.c - 1]) {
                        case 1:
                            if (FlurryAgent.c != null) {
                                FlurryAgent.c.onSessionStarted();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };
    private static FlurryAgentListener c = null;
    private static boolean d = false;
    private static int e = 5;
    private static long f = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    private static boolean g = true;
    private static boolean h = false;
    private static String i = null;

    /* renamed from: com.flurry.android.FlurryAgent$2  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2370a = new int[ll.a.a().length];

        static {
            try {
                f2370a[ll.a.b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    private FlurryAgent() {
    }

    @Deprecated
    public static synchronized void init(Context context, String str) {
        synchronized (FlurryAgent.class) {
            if (Build.VERSION.SDK_INT < 10) {
                km.b(f2368a, "Device SDK Version older than 10");
            } else if (context == null) {
                throw new NullPointerException("Null context");
            } else {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("API key not specified");
                }
                if (jy.a() != null) {
                    km.e(f2368a, "Flurry is already initialized");
                }
                mf.a();
                jy.a(context, str);
            }
        }
    }

    public static int getAgentVersion() {
        return jz.a();
    }

    public static String getReleaseVersion() {
        return jz.b();
    }

    @Deprecated
    public static void setFlurryAgentListener(FlurryAgentListener flurryAgentListener) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (flurryAgentListener == null) {
            km.b(f2368a, "Listener cannot be null");
            ki.a().b("com.flurry.android.sdk.FlurrySessionEvent", b);
        } else {
            c = flurryAgentListener;
            ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", b);
        }
    }

    @Deprecated
    public static void setLogEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (z) {
            km.b();
        } else {
            km.a();
        }
    }

    @Deprecated
    public static void setLogLevel(int i2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else {
            km.a(i2);
        }
    }

    public static void setVersionName(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String versionName passed to setVersionName was null.");
        } else {
            lp.a().a("VersionName", str);
        }
    }

    public static void setReportLocation(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else {
            lp.a().a("ReportLocation", Boolean.valueOf(z));
        }
    }

    public static void setLocation(float f2, float f3) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return;
        }
        Location location = new Location("Explicit");
        location.setLatitude(f2);
        location.setLongitude(f3);
        lp.a().a("ExplicitLocation", location);
    }

    public static void clearLocation() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else {
            lp.a().a("ExplicitLocation", (Object) null);
        }
    }

    @Deprecated
    public static void setContinueSessionMillis(long j) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (j < 5000) {
            km.b(f2368a, "Invalid time set for session resumption: " + j);
        } else {
            lp.a().a("ContinueSessionMillis", Long.valueOf(j));
        }
    }

    public static void setLogEvents(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else {
            lp.a().a("LogEvents", Boolean.valueOf(z));
        }
    }

    @Deprecated
    public static void setCaptureUncaughtExceptions(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else {
            lp.a().a("CaptureUncaughtExceptions", Boolean.valueOf(z));
        }
    }

    public static void addOrigin(String str, String str2) {
        addOrigin(str, str2, null);
    }

    public static void addOrigin(String str, String str2, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("originName not specified");
        } else {
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("originVersion not specified");
            }
            try {
                ka.a().a(str, str2, map);
            } catch (Throwable th) {
                km.a(f2368a, "", th);
            }
        }
    }

    @Deprecated
    public static void setPulseEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return;
        }
        lp.a().a("ProtonEnabled", Boolean.valueOf(z));
        if (!z) {
            lp.a().a("analyticsEnabled", (Object) true);
        }
    }

    @Deprecated
    public static void onStartSession(Context context, String str) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Api key not specified");
            }
            if (jy.a() == null) {
                throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
            }
            try {
                lm.a().b(context);
            } catch (Throwable th) {
                km.a(f2368a, "", th);
            }
        }
    }

    public static void onStartSession(Context context) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else {
            if (jy.a() == null) {
                throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
            }
            try {
                lm.a().b(context);
            } catch (Throwable th) {
                km.a(f2368a, "", th);
            }
        }
    }

    public static void onEndSession(Context context) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else {
            if (jy.a() == null) {
                throw new IllegalStateException("Flurry SDK must be initialized before ending a session");
            }
            try {
                lm.a().c(context);
            } catch (Throwable th) {
                km.a(f2368a, "", th);
            }
        }
    }

    public static boolean isSessionActive() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return false;
        }
        try {
            return lm.a().c();
        } catch (Throwable th) {
            km.a(f2368a, "", th);
            return false;
        }
    }

    public static String getSessionId() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return null;
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            try {
                jk.a();
                return jk.b();
            } catch (Throwable th) {
                km.a(f2368a, "", th);
                return null;
            }
        }
    }

    public static FlurryEventRecordStatus logEvent(String str) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
                if (b2 != null) {
                    flurryEventRecordStatus = b2.a(str, (Map<String, String>) null, false);
                }
            } catch (Throwable th) {
                km.a(f2368a, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else if (map == null) {
            km.b(f2368a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
                if (b2 != null) {
                    flurryEventRecordStatus = b2.a(str, map, false);
                }
            } catch (Throwable th) {
                km.a(f2368a, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(FlurrySyndicationEventName flurrySyndicationEventName, String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        } else if (flurrySyndicationEventName == null) {
            km.b(f2368a, "String eventName passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else if (TextUtils.isEmpty(str)) {
            km.b(f2368a, "String syndicationId passed to logEvent was null or empty.");
            return flurryEventRecordStatus2;
        } else if (map == null) {
            km.b(f2368a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            try {
                hr.a();
                String flurrySyndicationEventName2 = flurrySyndicationEventName.toString();
                jh b2 = hr.b();
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
                if (b2 != null) {
                    flurryEventRecordStatus = b2.a(flurrySyndicationEventName2, str, map);
                }
            } catch (Throwable th) {
                km.a(f2368a, "Failed to log event: " + flurrySyndicationEventName.toString(), th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
                if (b2 != null) {
                    flurryEventRecordStatus = b2.a(str, (Map<String, String>) null, z);
                }
            } catch (Throwable th) {
                km.a(f2368a, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else if (map == null) {
            km.b(f2368a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
                if (b2 != null) {
                    flurryEventRecordStatus = b2.a(str, map, z);
                }
            } catch (Throwable th) {
                km.a(f2368a, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static void endTimedEvent(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                if (b2 == null) {
                    return;
                }
                b2.a(str, (Map<String, String>) null);
            } catch (Throwable th) {
                km.a(f2368a, "Failed to signify the end of event: " + str, th);
            }
        }
    }

    public static void endTimedEvent(String str, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to endTimedEvent was null.");
        } else if (map == null) {
            km.b(f2368a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                if (b2 == null) {
                    return;
                }
                b2.a(str, map);
            } catch (Throwable th) {
                km.a(f2368a, "Failed to signify the end of event: " + str, th);
            }
        }
    }

    @Deprecated
    public static void onError(String str, String str2, String str3) {
        StackTraceElement[] stackTraceElementArr;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            km.b(f2368a, "String message passed to onError was null.");
        } else if (str3 == null) {
            km.b(f2368a, "String errorClass passed to onError was null.");
        } else {
            try {
                hr.a();
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                if (stackTrace == null || stackTrace.length <= 2) {
                    stackTraceElementArr = stackTrace;
                } else {
                    stackTraceElementArr = new StackTraceElement[stackTrace.length - 2];
                    System.arraycopy(stackTrace, 2, stackTraceElementArr, 0, stackTraceElementArr.length);
                }
                Throwable th = new Throwable(str2);
                th.setStackTrace(stackTraceElementArr);
                jh b2 = hr.b();
                if (b2 == null) {
                    return;
                }
                b2.a(str, str2, str3, th);
            } catch (Throwable th2) {
                km.a(f2368a, "", th2);
            }
        }
    }

    public static void onError(String str, String str2, Throwable th) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            km.b(f2368a, "String message passed to onError was null.");
        } else if (th == null) {
            km.b(f2368a, "Throwable passed to onError was null.");
        } else {
            try {
                hr.a();
                hr.a(str, str2, th);
            } catch (Throwable th2) {
                km.a(f2368a, "", th2);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to onEvent was null.");
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                if (b2 == null) {
                    return;
                }
                b2.a(str, (Map<String, String>) null, false);
            } catch (Throwable th) {
                km.a(f2368a, "", th);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String eventId passed to onEvent was null.");
        } else if (map == null) {
            km.b(f2368a, "Parameters Map passed to onEvent was null.");
        } else {
            try {
                hr.a();
                jh b2 = hr.b();
                if (b2 == null) {
                    return;
                }
                b2.a(str, map, false);
            } catch (Throwable th) {
                km.a(f2368a, "", th);
            }
        }
    }

    public static void onPageView() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return;
        }
        try {
            hr.a();
            jh b2 = hr.b();
            if (b2 == null) {
                return;
            }
            b2.c();
        } catch (Throwable th) {
            km.a(f2368a, "", th);
        }
    }

    @Deprecated
    public static void setLocationCriteria(Criteria criteria) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        }
    }

    public static void setAge(int i2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (i2 > 0 && i2 < 110) {
            lp.a().a("Age", Long.valueOf(new Date(new Date(System.currentTimeMillis() - (i2 * 31449600000L)).getYear(), 1, 1).getTime()));
        }
    }

    public static void setGender(byte b2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
            return;
        }
        switch (b2) {
            case 0:
            case 1:
                lp.a().a("Gender", Byte.valueOf(b2));
                return;
            default:
                lp.a().a("Gender", (Object) (byte) -1);
                return;
        }
    }

    public static void setUserId(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (str == null) {
            km.b(f2368a, "String userId passed to setUserId was null.");
        } else {
            lp.a().a("UserId", ly.b(str));
        }
    }

    public static void setSessionOrigin(String str, String str2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str)) {
            km.b(f2368a, "String originName passed to setSessionOrigin was null or empty.");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            jk.a();
            jx h2 = jk.h();
            if (h2 != null) {
                h2.a(str);
            }
            jk.a();
            jx h3 = jk.h();
            if (h3 == null) {
                return;
            }
            h3.b(str2);
        }
    }

    public static void addSessionProperty(String str, String str2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2368a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            km.b(f2368a, "String name or value passed to addSessionProperty was null or empty.");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            jk.a();
            jx h2 = jk.h();
            if (h2 == null) {
                return;
            }
            h2.a(str, str2);
        }
    }

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private static FlurryAgentListener f2371a = null;
        private boolean b = false;
        private int c = 5;
        private long d = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
        private boolean e = true;
        private boolean f = false;

        public Builder withListener(FlurryAgentListener flurryAgentListener) {
            f2371a = flurryAgentListener;
            return this;
        }

        public Builder withLogEnabled(boolean z) {
            this.b = z;
            return this;
        }

        public Builder withLogLevel(int i) {
            this.c = i;
            return this;
        }

        public Builder withContinueSessionMillis(long j) {
            this.d = j;
            return this;
        }

        public Builder withCaptureUncaughtExceptions(boolean z) {
            this.e = z;
            return this;
        }

        public Builder withPulseEnabled(boolean z) {
            this.f = z;
            return this;
        }

        public void build(Context context, String str) {
            FlurryAgent.a(f2371a, this.b, this.c, this.d, this.e, this.f, context, str);
        }
    }

    static /* synthetic */ void a(FlurryAgentListener flurryAgentListener, boolean z, int i2, long j, boolean z2, boolean z3, Context context, String str) {
        c = flurryAgentListener;
        setFlurryAgentListener(flurryAgentListener);
        d = z;
        setLogEnabled(z);
        e = i2;
        setLogLevel(i2);
        f = j;
        setContinueSessionMillis(j);
        g = z2;
        setCaptureUncaughtExceptions(z2);
        h = z3;
        setPulseEnabled(z3);
        i = str;
        init(context, i);
    }
}
