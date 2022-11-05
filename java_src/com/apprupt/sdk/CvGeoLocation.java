package com.apprupt.sdk;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.apprupt.sdk.Logger;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.firebase.a.a;
/* loaded from: classes.dex */
public class CvGeoLocation {

    /* renamed from: a  reason: collision with root package name */
    private static String f1811a = "";
    private static final Logger.log b = Logger.a("GEO_LOCATION");
    private static CvGeoLocation c = null;
    private static boolean d = false;
    private static final CvLocationListener e = new CvLocationListener();
    private LocationManager f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CvLocationListener implements LocationListener {
        private CvLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            String unused = CvGeoLocation.f1811a = String.format("%fx%f", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
            CvGeoLocation.b.a("Geo location update: " + CvGeoLocation.f1811a);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            CvGeoLocation.b.a("Geo location status change");
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            CvGeoLocation.b.d("Geo location is disabled: " + str);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            CvGeoLocation.b.b("Geo location enabled: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        if (c == null) {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != -1) {
                c = new CvGeoLocation(context);
                return;
            }
            if (!d) {
                Logger.a().c("Geo location is not accessible");
            }
            b.d("Geo location is not accessible");
        }
    }

    private CvGeoLocation(Context context) {
        this.f = null;
        this.f = (LocationManager) context.getSystemService(a.b.LOCATION);
        if (!d) {
            b.b("Starting location tracker");
            this.f.requestLocationUpdates("gps", NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, 1.0f, e);
        } else {
            b.d("Cannot start location tracker - disabled.");
        }
        Location lastKnownLocation = this.f.getLastKnownLocation("gps");
        if (lastKnownLocation == null) {
            b.c("Current location unknown");
        } else {
            e.onLocationChanged(lastKnownLocation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        if (c != null && d) {
            b.a("Trying to fetch last known location...");
            a(c.f.getLastKnownLocation("gps"));
        }
        b.a("Last location:", f1811a);
        return f1811a;
    }

    public static void a(Location location) {
        if (location != null) {
            e.onLocationChanged(location);
        }
    }
}
