package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import com.flurry.android.FlurryEventRecordStatus;
import com.flurry.sdk.jf;
import com.flurry.sdk.ll;
import com.flurry.sdk.lq;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class jh implements lq.a {

    /* renamed from: a  reason: collision with root package name */
    static final String f2901a = jh.class.getSimpleName();
    static int b = 100;
    static int c = 10;
    static int d = 1000;
    static int e = 160000;
    static int f = 50;
    WeakReference<lk> g;
    File h;
    kf<List<jf>> i;
    public boolean j;
    boolean k;
    String l;
    byte m;
    Long n;
    private long t;
    private String u;
    private final AtomicInteger q = new AtomicInteger(0);
    private final AtomicInteger r = new AtomicInteger(0);
    private final kh<ll> s = new kh<ll>() { // from class: com.flurry.sdk.jh.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ll llVar) {
            ll llVar2 = llVar;
            if (jh.this.g == null || llVar2.b == jh.this.g.get()) {
                switch (AnonymousClass8.f2917a[llVar2.c - 1]) {
                    case 1:
                        final jh jhVar = jh.this;
                        lk lkVar = llVar2.b;
                        Context context = llVar2.f3027a.get();
                        jhVar.g = new WeakReference<>(lkVar);
                        lp a2 = lp.a();
                        jhVar.k = ((Boolean) a2.a("LogEvents")).booleanValue();
                        a2.a("LogEvents", (lq.a) jhVar);
                        km.a(4, jh.f2901a, "initSettings, LogEvents = " + jhVar.k);
                        jhVar.l = (String) a2.a("UserId");
                        a2.a("UserId", (lq.a) jhVar);
                        km.a(4, jh.f2901a, "initSettings, UserId = " + jhVar.l);
                        jhVar.m = ((Byte) a2.a("Gender")).byteValue();
                        a2.a("Gender", (lq.a) jhVar);
                        km.a(4, jh.f2901a, "initSettings, Gender = " + ((int) jhVar.m));
                        jhVar.n = (Long) a2.a("Age");
                        a2.a("Age", (lq.a) jhVar);
                        km.a(4, jh.f2901a, "initSettings, BirthDate = " + jhVar.n);
                        jhVar.o = ((Boolean) a2.a("analyticsEnabled")).booleanValue();
                        a2.a("analyticsEnabled", (lq.a) jhVar);
                        km.a(4, jh.f2901a, "initSettings, AnalyticsEnabled = " + jhVar.o);
                        jhVar.h = context.getFileStreamPath(".flurryagent." + Integer.toString(jy.a().d.hashCode(), 16));
                        jhVar.i = new kf<>(context.getFileStreamPath(".yflurryreport." + Long.toString(ly.i(jy.a().d), 16)), ".yflurryreport.", 1, new lj<List<jf>>() { // from class: com.flurry.sdk.jh.10
                            @Override // com.flurry.sdk.lj
                            public final lg<List<jf>> a(int i) {
                                return new lf(new jf.a());
                            }
                        });
                        jhVar.a(context);
                        jhVar.a(true);
                        if (hr.a().f2812a != null) {
                            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.11
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    hr.a().f2812a.a();
                                }
                            });
                        }
                        jy.a().b(new ma() { // from class: com.flurry.sdk.jh.12
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                jh.this.e();
                            }
                        });
                        jy.a().b(new ma() { // from class: com.flurry.sdk.jh.13
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                jh.d(jh.this);
                            }
                        });
                        if (jl.a().b()) {
                            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.14
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    jh jhVar2 = jh.this;
                                    jk.a();
                                    jhVar2.a(true, jk.c());
                                }
                            });
                            return;
                        } else {
                            ki.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", jhVar.p);
                            return;
                        }
                    case 2:
                        jh jhVar2 = jh.this;
                        llVar2.f3027a.get();
                        jhVar2.a();
                        return;
                    case 3:
                        jh jhVar3 = jh.this;
                        llVar2.f3027a.get();
                        jhVar3.b();
                        return;
                    case 4:
                        ki.a().b("com.flurry.android.sdk.FlurrySessionEvent", jh.this.s);
                        jh.this.a(llVar2.d);
                        return;
                    default:
                        return;
                }
            }
        }
    };
    private int v = -1;
    private final List<jf> w = new ArrayList();
    private final Map<String, List<String>> x = new HashMap();
    private final Map<String, String> y = new HashMap();
    private final Map<String, jb> z = new HashMap();
    private final List<jc> A = new ArrayList();
    private boolean B = true;
    private int C = 0;
    private final List<ja> D = new ArrayList();
    private int E = 0;
    private int F = 0;
    boolean o = true;
    private final hs G = new hs();
    final kh<jm> p = new kh<jm>() { // from class: com.flurry.sdk.jh.9
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(jm jmVar) {
            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.9.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    jh jhVar = jh.this;
                    jk.a();
                    jhVar.a(true, jk.c());
                }
            });
        }
    };

    /* renamed from: com.flurry.sdk.jh$8  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2917a = new int[ll.a.a().length];

        static {
            try {
                f2917a[ll.a.f3028a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2917a[ll.a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2917a[ll.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2917a[ll.a.e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public jh() {
        ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.s);
    }

    public final synchronized void a() {
        this.v = lw.e();
        if (hr.a().c != null) {
            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.15
                @Override // com.flurry.sdk.ma
                public final void a() {
                    hr.a().c.c();
                }
            });
        }
        if (this.o && hr.a().f2812a != null) {
            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.16
                @Override // com.flurry.sdk.ma
                public final void a() {
                    hr.a().f2812a.b();
                }
            });
        }
    }

    public final synchronized void b() {
        a(false);
        jk.a();
        final long c2 = jk.c();
        jk.a();
        final long e2 = jk.e();
        jk.a();
        final long j = 0;
        jx h = jk.h();
        if (h != null) {
            j = h.f;
        }
        jk.a();
        final int i = jk.g().e;
        if (this.o && hr.a().f2812a != null) {
            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.2
                @Override // com.flurry.sdk.ma
                public final void a() {
                    hr.a().f2812a.a(c2);
                }
            });
        }
        jy.a().b(new ma() { // from class: com.flurry.sdk.jh.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                jh.this.f();
            }
        });
        if (jl.a().b()) {
            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.4
                @Override // com.flurry.sdk.ma
                public final void a() {
                    jf a2 = jh.this.a(c2, e2, j, i);
                    jh.this.w.clear();
                    jh.this.w.add(a2);
                    jh.this.d();
                }
            });
        }
    }

    public final synchronized void a(final long j) {
        ki.a().a(this.p);
        jk.a();
        b(jk.e());
        jy.a().b(new ma() { // from class: com.flurry.sdk.jh.5
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (jh.this.o && hr.a().f2812a != null) {
                    hr.a().f2812a.c();
                }
                if (hr.a().c != null) {
                    jy.a().b(new ma() { // from class: com.flurry.sdk.jh.5.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            hr.a().c.c = true;
                        }
                    });
                }
            }
        });
        if (jl.a().b()) {
            jy.a().b(new ma() { // from class: com.flurry.sdk.jh.6
                @Override // com.flurry.sdk.ma
                public final void a() {
                    jh.this.a(false, j);
                }
            });
        }
        lp.a().b("Gender", this);
        lp.a().b("UserId", this);
        lp.a().b("Age", this);
        lp.a().b("LogEvents", this);
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1752163738:
                if (str.equals("UserId")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1720015653:
                if (str.equals("analyticsEnabled")) {
                    c2 = 4;
                    break;
                }
                break;
            case -738063011:
                if (str.equals("LogEvents")) {
                    c2 = 0;
                    break;
                }
                break;
            case 65759:
                if (str.equals("Age")) {
                    c2 = 3;
                    break;
                }
                break;
            case 2129321697:
                if (str.equals("Gender")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.k = ((Boolean) obj).booleanValue();
                km.a(4, f2901a, "onSettingUpdate, LogEvents = " + this.k);
                return;
            case 1:
                this.l = (String) obj;
                km.a(4, f2901a, "onSettingUpdate, UserId = " + this.l);
                return;
            case 2:
                this.m = ((Byte) obj).byteValue();
                km.a(4, f2901a, "onSettingUpdate, Gender = " + ((int) this.m));
                return;
            case 3:
                this.n = (Long) obj;
                km.a(4, f2901a, "onSettingUpdate, Birthdate = " + this.n);
                return;
            case 4:
                this.o = ((Boolean) obj).booleanValue();
                km.a(4, f2901a, "onSettingUpdate, AnalyticsEnabled = " + this.o);
                return;
            default:
                km.a(6, f2901a, "onSettingUpdate internal error!");
                return;
        }
    }

    final void a(Context context) {
        Bundle extras;
        if ((context instanceof Activity) && (extras = ((Activity) context).getIntent().getExtras()) != null) {
            km.a(3, f2901a, "Launch Options Bundle is present " + extras.toString());
            for (String str : extras.keySet()) {
                if (str != null) {
                    Object obj = extras.get(str);
                    String obj2 = obj != null ? obj.toString() : "null";
                    this.x.put(str, new ArrayList(Arrays.asList(obj2)));
                    km.a(3, f2901a, "Launch options Key: " + str + ". Its value: " + obj2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01c3  */
    @TargetApi(18)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void a(boolean z) {
        Exception exc;
        boolean z2;
        int i;
        int i2;
        int i3 = -1;
        if (z) {
            this.y.put("boot.time", Long.toString(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
            StatFs statFs = new StatFs(Environment.getRootDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                this.y.put("disk.size.total.internal", Long.toString(statFs.getAvailableBlocksLong()));
                this.y.put("disk.size.available.internal", Long.toString(statFs.getAvailableBlocksLong()));
                this.y.put("disk.size.total.external", Long.toString(statFs2.getAvailableBlocksLong()));
                this.y.put("disk.size.available.external", Long.toString(statFs2.getAvailableBlocksLong()));
            } else {
                this.y.put("disk.size.total.internal", Long.toString(statFs.getAvailableBlocks()));
                this.y.put("disk.size.available.internal", Long.toString(statFs.getAvailableBlocks()));
                this.y.put("disk.size.total.external", Long.toString(statFs2.getAvailableBlocks()));
                this.y.put("disk.size.available.external", Long.toString(statFs2.getAvailableBlocks()));
            }
            Map<String, String> map = this.y;
            js.a();
            map.put("carrier.name", js.b());
            Map<String, String> map2 = this.y;
            js.a();
            map2.put("carrier.details", js.c());
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) jy.a().f2947a.getSystemService("activity")).getMemoryInfo(memoryInfo);
        this.y.put("memory.available" + (z ? ".start" : ".end"), Long.toString(memoryInfo.availMem));
        if (Build.VERSION.SDK_INT >= 16) {
            this.y.put("memory.total" + (z ? ".start" : ".end"), Long.toString(memoryInfo.availMem));
        }
        try {
            Intent registerReceiver = jy.a().f2947a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("status", -1);
                z2 = intExtra == 2 || intExtra == 5;
                try {
                    int intExtra2 = registerReceiver.getIntExtra("level", -1);
                    try {
                        i2 = registerReceiver.getIntExtra("scale", -1);
                        i3 = intExtra2;
                    } catch (Exception e2) {
                        i = intExtra2;
                        exc = e2;
                        km.a(5, f2901a, "Error getting battery status: " + exc);
                        i3 = i;
                        i2 = -1;
                        float f2 = i3 / i2;
                        this.y.put("battery.charging" + (!z ? ".start" : ".end"), Boolean.toString(z2));
                        this.y.put("battery.remaining" + (!z ? ".start" : ".end"), Float.toString(f2));
                    }
                } catch (Exception e3) {
                    exc = e3;
                    i = -1;
                }
            } else {
                z2 = false;
                i2 = -1;
            }
        } catch (Exception e4) {
            exc = e4;
            z2 = false;
            i = -1;
        }
        float f22 = i3 / i2;
        this.y.put("battery.charging" + (!z ? ".start" : ".end"), Boolean.toString(z2));
        this.y.put("battery.remaining" + (!z ? ".start" : ".end"), Float.toString(f22));
    }

    private synchronized void b(long j) {
        for (jc jcVar : this.A) {
            if (jcVar.b && !jcVar.c) {
                jcVar.a(j);
            }
        }
    }

    final synchronized jf a(long j, long j2, long j3, int i) {
        jf jfVar;
        jg jgVar = new jg();
        jgVar.f2900a = ju.a().g();
        jgVar.b = j;
        jgVar.c = j2;
        jgVar.d = j3;
        jgVar.e = this.y;
        jk.a();
        jx h = jk.h();
        jgVar.f = h != null ? h.d() : null;
        jk.a();
        jx h2 = jk.h();
        jgVar.g = h2 != null ? h2.e() : null;
        jk.a();
        jx h3 = jk.h();
        jgVar.h = h3 != null ? h3.f() : null;
        jo.a();
        jgVar.i = jo.b();
        jo.a();
        jgVar.j = TimeZone.getDefault().getID();
        jgVar.k = i;
        jgVar.l = this.v != -1 ? this.v : lw.e();
        jgVar.m = this.l == null ? "" : this.l;
        jgVar.n = jp.a().g();
        jgVar.o = this.F;
        jgVar.p = this.m;
        jgVar.q = this.n;
        jgVar.r = this.z;
        jgVar.s = this.A;
        jgVar.t = this.B;
        jgVar.v = this.D;
        jgVar.u = this.E;
        try {
            jfVar = new jf(jgVar);
        } catch (IOException e2) {
            km.a(5, f2901a, "Error creating analytics session report: " + e2);
            jfVar = null;
        }
        if (jfVar == null) {
            km.e(f2901a, "New session report wasn't created");
        }
        return jfVar;
    }

    public final synchronized void c() {
        this.F++;
    }

    public final synchronized FlurryEventRecordStatus a(String str, String str2, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (map != null && !TextUtils.isEmpty(str2)) {
            map.put("\ue8ffsid+Tumblr", str2);
            flurryEventRecordStatus = a(str, map, false);
            km.a(5, f2901a, "logEvent status for syndication:" + flurryEventRecordStatus);
        }
        return flurryEventRecordStatus;
    }

    public final synchronized FlurryEventRecordStatus a(String str, Map<String, String> map, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventRecorded;
        if (!this.o) {
            flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventAnalyticsDisabled;
            km.e(f2901a, "Analytics has been disabled, not logging event.");
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            jk.a();
            long d2 = elapsedRealtime - jk.d();
            final String b2 = ly.b(str);
            if (b2.length() == 0) {
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
            } else {
                jb jbVar = this.z.get(b2);
                if (jbVar == null) {
                    if (this.z.size() < b) {
                        jb jbVar2 = new jb();
                        jbVar2.f2890a = 1;
                        this.z.put(b2, jbVar2);
                        km.e(f2901a, "Event count started: " + b2);
                        flurryEventRecordStatus = flurryEventRecordStatus2;
                    } else {
                        km.e(f2901a, "Too many different events. Event not counted: " + b2);
                        flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;
                    }
                } else {
                    jbVar.f2890a++;
                    km.e(f2901a, "Event count incremented: " + b2);
                    flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
                }
                if (this.k && this.A.size() < d && this.C < e) {
                    final Map<String, String> emptyMap = map == null ? Collections.emptyMap() : map;
                    if (emptyMap.size() > c) {
                        km.e(f2901a, "MaxEventParams exceeded: " + emptyMap.size());
                        flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;
                    } else {
                        jc jcVar = new jc(this.q.incrementAndGet(), b2, emptyMap, d2, z);
                        if (jcVar.b().length + this.C <= e) {
                            this.A.add(jcVar);
                            this.C = jcVar.b().length + this.C;
                            flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
                            if (this.o && hr.a().f2812a != null) {
                                jy.a().b(new Runnable() { // from class: com.flurry.sdk.jh.7
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        hr.a().f2812a.a(b2, emptyMap);
                                    }
                                });
                            }
                        } else {
                            this.C = e;
                            this.B = false;
                            km.e(f2901a, "Event Log size exceeded. No more event details logged.");
                            flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventLogCountExceeded;
                        }
                    }
                } else {
                    this.B = false;
                }
            }
        }
        return flurryEventRecordStatus;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
        r2 = android.os.SystemClock.elapsedRealtime();
        com.flurry.sdk.jk.a();
        r2 = r2 - com.flurry.sdk.jk.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        if (r10 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
        if (r10.size() <= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
        if (r8.C >= com.flurry.sdk.jh.e) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        r1 = r8.C - r0.b().length;
        r4 = new java.util.HashMap(r0.a());
        r0.a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
        if ((r0.b().length + r1) > com.flurry.sdk.jh.e) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
        if (r0.a().size() <= com.flurry.sdk.jh.c) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006f, code lost:
        com.flurry.sdk.km.e(com.flurry.sdk.jh.f2901a, "MaxEventParams exceeded on endEvent: " + r0.a().size());
        r0.b(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008e, code lost:
        r0.a(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0095, code lost:
        r8.C = r1 + r0.b().length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
        r0.b(r4);
        r8.B = false;
        r8.C = com.flurry.sdk.jh.e;
        com.flurry.sdk.km.e(com.flurry.sdk.jh.f2901a, "Event Log size exceeded. No more event details logged.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a(String str, Map<String, String> map) {
        boolean z;
        Iterator<jc> it = this.A.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            jc next = it.next();
            if (!next.b || next.d != 0 || !next.f2891a.equals(str)) {
                z = false;
                continue;
            } else {
                z = true;
                continue;
            }
            if (z) {
                break;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:8:0x000d, B:10:0x001d, B:16:0x005a, B:18:0x0062, B:20:0x006e, B:22:0x0078, B:28:0x00a0), top: B:30:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a(String str, String str2, String str3, Throwable th) {
        boolean z;
        ja jaVar;
        int i = 0;
        synchronized (this) {
            if (str != null) {
                if ("uncaught".equals(str)) {
                    z = true;
                    this.E++;
                    if (this.D.size() >= f) {
                        this.D.add(new ja(this.r.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th));
                        km.e(f2901a, "Error logged: " + jaVar.f2889a);
                    } else if (z) {
                        while (true) {
                            int i2 = i;
                            if (i2 >= this.D.size()) {
                                break;
                            }
                            ja jaVar2 = this.D.get(i2);
                            if (jaVar2.f2889a == null || "uncaught".equals(jaVar2.f2889a)) {
                                i = i2 + 1;
                            } else {
                                this.D.set(i2, new ja(this.r.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), str, str2, str3, th));
                                break;
                            }
                        }
                    } else {
                        km.e(f2901a, "Max errors logged. No more errors logged.");
                    }
                }
            }
            z = false;
            this.E++;
            if (this.D.size() >= f) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z, long j) {
        byte[] bArr;
        if (!this.o) {
            km.a(3, f2901a, "Analytics disabled, not sending agent report.");
        } else if (z || !this.w.isEmpty()) {
            km.a(3, f2901a, "generating agent report");
            try {
                bArr = new jd(jy.a().d, ju.a().g(), this.j, jl.a().c(), this.t, j, this.w, Collections.unmodifiableMap(jl.a().f2923a), this.G.a(), this.x, ka.a().b(), System.currentTimeMillis()).f2892a;
            } catch (Exception e2) {
                km.e(f2901a, "Exception while generating report: " + e2);
                bArr = null;
            }
            if (bArr == null) {
                km.e(f2901a, "Error generating report");
            } else {
                km.a(3, f2901a, "generated report of size " + bArr.length + " with " + this.w.size() + " reports.");
                hr.a().b.b(bArr, jy.a().d, new StringBuilder().append(jz.a()).toString());
            }
            this.w.clear();
            this.i.b();
        }
    }

    public final synchronized void d() {
        km.a(4, f2901a, "Saving persistent agent data.");
        this.i.a(this.w);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        km.a(4, f2901a, "Loading persistent session report data.");
        List<jf> a2 = this.i.a();
        if (a2 != null) {
            this.w.addAll(a2);
        } else if (this.h.exists()) {
            km.a(4, f2901a, "Legacy persistent agent data found, converting.");
            ji a3 = hu.a(this.h);
            if (a3 != null) {
                boolean z = a3.f2920a;
                long j = a3.b;
                if (j <= 0) {
                    jk.a();
                    j = jk.c();
                }
                this.j = z;
                this.t = j;
                f();
                List unmodifiableList = Collections.unmodifiableList(a3.c);
                if (unmodifiableList != null) {
                    this.w.addAll(unmodifiableList);
                }
            }
            this.h.delete();
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        SharedPreferences.Editor edit = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putBoolean("com.flurry.sdk.previous_successful_report", this.j);
        edit.putLong("com.flurry.sdk.initial_run_time", this.t);
        edit.putString("com.flurry.sdk.api_key", jy.a().d);
        edit.apply();
    }

    static /* synthetic */ void d(jh jhVar) {
        SharedPreferences sharedPreferences = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        jhVar.j = sharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
        jk.a();
        jhVar.t = sharedPreferences.getLong("com.flurry.sdk.initial_run_time", jk.c());
        jhVar.u = sharedPreferences.getString("com.flurry.sdk.api_key", "");
        if (TextUtils.isEmpty(jhVar.u) && jhVar.t > 0) {
            jhVar.u = jy.a().d;
        } else if (jhVar.u.equals(jy.a().d)) {
        } else {
            jk.a();
            jhVar.t = jk.c();
        }
    }
}
