package com.intentsoftware.addapptr.c;

import android.annotation.SuppressLint;
import android.app.Application;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.a.a;
/* compiled from: LocationUtils.java */
/* loaded from: classes2.dex */
public class b {
    private static final long MAX_TIME_FROM_FIX = 120000;
    private static final float MINIMAL_ACCURACY = 100.0f;
    @SuppressLint({"StaticFieldLeak"})
    private static Application application;
    private static LocationManager locationManager = null;

    public static void init(Application application2) {
        application = application2;
        locationManager = (LocationManager) application2.getSystemService(a.b.LOCATION);
    }

    public static Location getLocation() {
        Location lastKnownLocation;
        boolean z = false;
        boolean z2 = true;
        if (locationManager == null) {
            c.e("LocationUtils", "Location Manager not initialized");
            return null;
        }
        try {
            if (application.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                z = true;
            } else if (application.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                z2 = false;
                z = true;
            } else {
                z2 = false;
            }
            if (locationManager != null && z2 && locationManager.isProviderEnabled("gps")) {
                Location lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                if (lastKnownLocation2 == null) {
                    return null;
                }
                long abs = Math.abs(System.currentTimeMillis() - lastKnownLocation2.getTime());
                if (lastKnownLocation2.hasAccuracy() && lastKnownLocation2.getAccuracy() < MINIMAL_ACCURACY && abs < MAX_TIME_FROM_FIX) {
                    return lastKnownLocation2;
                }
            }
            if (locationManager == null || !z || !locationManager.isProviderEnabled("network") || (lastKnownLocation = locationManager.getLastKnownLocation("network")) == null) {
                return null;
            }
            long abs2 = Math.abs(System.currentTimeMillis() - lastKnownLocation.getTime());
            if (!lastKnownLocation.hasAccuracy()) {
                return null;
            }
            if (lastKnownLocation.getAccuracy() < MINIMAL_ACCURACY && abs2 < MAX_TIME_FROM_FIX) {
                return lastKnownLocation;
            }
            return null;
        } catch (SecurityException e) {
            if (!c.isLoggable(6)) {
                return null;
            }
            c.e("LocationUtils", "Error obtaining location: " + e.getMessage());
            return null;
        }
    }
}
