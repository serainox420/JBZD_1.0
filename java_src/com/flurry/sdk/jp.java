package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.flurry.sdk.lq;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.a.a;
@SuppressLint({"MissingPermission"})
/* loaded from: classes2.dex */
public class jp implements lq.a {
    private static jp d;
    private boolean f;
    private Location g;
    private Location k;

    /* renamed from: a  reason: collision with root package name */
    private static int f2931a = -1;
    private static int b = -1;
    private static int c = -1;
    private static final String e = jp.class.getSimpleName();
    private long h = 0;
    private boolean l = false;
    private int m = 0;
    private kh<ls> n = new kh<ls>() { // from class: com.flurry.sdk.jp.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ls lsVar) {
            if (jp.this.h <= 0 || jp.this.h >= System.currentTimeMillis()) {
                return;
            }
            km.a(4, jp.e, "No location received in 90 seconds , stopping LocationManager");
            jp.this.i();
        }
    };
    private LocationManager i = (LocationManager) jy.a().f2947a.getSystemService(a.b.LOCATION);
    private a j = new a();

    static /* synthetic */ int c(jp jpVar) {
        int i = jpVar.m + 1;
        jpVar.m = i;
        return i;
    }

    public static synchronized jp a() {
        jp jpVar;
        synchronized (jp.class) {
            if (d == null) {
                d = new jp();
            }
            jpVar = d;
        }
        return jpVar;
    }

    private jp() {
        lp a2 = lp.a();
        this.f = ((Boolean) a2.a("ReportLocation")).booleanValue();
        a2.a("ReportLocation", (lq.a) this);
        km.a(4, e, "initSettings, ReportLocation = " + this.f);
        this.g = (Location) a2.a("ExplicitLocation");
        a2.a("ExplicitLocation", (lq.a) this);
        km.a(4, e, "initSettings, ExplicitLocation = " + this.g);
    }

    public static int b() {
        return f2931a;
    }

    public static int c() {
        return b;
    }

    public static int d() {
        return c;
    }

    public final synchronized void e() {
        km.a(4, e, "Location update requested");
        if (this.m < 3 && !this.l && this.f && this.g == null) {
            Context context = jy.a().f2947a;
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                this.m = 0;
                String str = null;
                if (!a(context)) {
                    if (b(context)) {
                        str = "network";
                    }
                } else {
                    str = "passive";
                }
                if (!TextUtils.isEmpty(str)) {
                    this.i.requestLocationUpdates(str, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, BitmapDescriptorFactory.HUE_RED, this.j, Looper.getMainLooper());
                }
                this.k = a(str);
                this.h = System.currentTimeMillis() + 90000;
                km.a(4, e, "Register location timer");
                lt.a().a(this.n);
                this.l = true;
                km.a(4, e, "LocationProvider started");
            }
        }
    }

    public final synchronized void f() {
        km.a(4, e, "Stop update location requested");
        i();
    }

    public final Location g() {
        String str;
        Location location = null;
        if (this.g != null) {
            return this.g;
        }
        if (this.f) {
            Context context = jy.a().f2947a;
            if (!a(context) && !b(context)) {
                return null;
            }
            if (a(context)) {
                str = "passive";
            } else {
                str = b(context) ? "network" : null;
            }
            if (str != null) {
                Location a2 = a(str);
                if (a2 != null) {
                    this.k = a2;
                }
                location = this.k;
            }
        }
        km.a(4, e, "getLocation() = " + location);
        return location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.l) {
            this.i.removeUpdates(this.j);
            this.m = 0;
            this.h = 0L;
            km.a(4, e, "Unregister location timer");
            lt.a().b(this.n);
            this.l = false;
            km.a(4, e, "LocationProvider stopped");
        }
    }

    private static boolean a(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    private static boolean b(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    private Location a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.i.getLastKnownLocation(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements LocationListener {
        public a() {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            if (location != null) {
                jp.this.k = location;
            }
            if (jp.c(jp.this) >= 3) {
                km.a(4, jp.e, "Max location reports reached, stopping");
                jp.this.i();
            }
        }
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        char c2 = 65535;
        switch (str.hashCode()) {
            case -864112343:
                if (str.equals("ReportLocation")) {
                    c2 = 0;
                    break;
                }
                break;
            case -300729815:
                if (str.equals("ExplicitLocation")) {
                    c2 = 1;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.f = ((Boolean) obj).booleanValue();
                km.a(4, e, "onSettingUpdate, ReportLocation = " + this.f);
                return;
            case 1:
                this.g = (Location) obj;
                km.a(4, e, "onSettingUpdate, ExplicitLocation = " + this.g);
                return;
            default:
                km.a(6, e, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
                return;
        }
    }
}
