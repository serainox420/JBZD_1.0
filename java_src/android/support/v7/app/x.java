package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.google.firebase.a.a;
import java.util.Calendar;
/* compiled from: TwilightManager.java */
/* loaded from: classes.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    private static x f622a;
    private final Context b;
    private final LocationManager c;
    private final a d = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x a(Context context) {
        if (f622a == null) {
            Context applicationContext = context.getApplicationContext();
            f622a = new x(applicationContext, (LocationManager) applicationContext.getSystemService(a.b.LOCATION));
        }
        return f622a;
    }

    x(Context context, LocationManager locationManager) {
        this.b = context;
        this.c = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        a aVar = this.d;
        if (c()) {
            return aVar.f623a;
        }
        Location b = b();
        if (b != null) {
            a(b);
            return aVar.f623a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    private Location b() {
        Location location = null;
        Location a2 = android.support.v4.content.m.a(this.b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        if (android.support.v4.content.m.a(this.b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = a("gps");
        }
        if (location != null && a2 != null) {
            return location.getTime() > a2.getTime() ? location : a2;
        }
        if (location == null) {
            location = a2;
        }
        return location;
    }

    private Location a(String str) {
        if (this.c != null) {
            try {
                if (this.c.isProviderEnabled(str)) {
                    return this.c.getLastKnownLocation(str);
                }
            } catch (Exception e) {
                Log.d("TwilightManager", "Failed to get last known location", e);
            }
        }
        return null;
    }

    private boolean c() {
        return this.d != null && this.d.f > System.currentTimeMillis();
    }

    private void a(Location location) {
        long j;
        long j2;
        a aVar = this.d;
        long currentTimeMillis = System.currentTimeMillis();
        w a2 = w.a();
        a2.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = a2.f621a;
        a2.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = a2.c == 1;
        long j4 = a2.b;
        long j5 = a2.f621a;
        a2.a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = a2.b;
        if (j4 == -1 || j5 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            if (currentTimeMillis > j5) {
                j2 = 0 + j6;
            } else if (currentTimeMillis > j4) {
                j2 = 0 + j5;
            } else {
                j2 = 0 + j4;
            }
            j = j2 + 60000;
        }
        aVar.f623a = z;
        aVar.b = j3;
        aVar.c = j4;
        aVar.d = j5;
        aVar.e = j6;
        aVar.f = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TwilightManager.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f623a;
        long b;
        long c;
        long d;
        long e;
        long f;

        a() {
        }
    }
}
