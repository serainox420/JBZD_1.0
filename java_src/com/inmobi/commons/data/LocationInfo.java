package com.inmobi.commons.data;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.a.a;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.List;
/* loaded from: classes2.dex */
public class LocationInfo {

    /* renamed from: a  reason: collision with root package name */
    private static LocationManager f3781a;
    private static double b;
    private static double c;
    private static double d;
    private static boolean e;
    private static long f;
    public static int LOCATION_SET_BY_SDK = 1;
    public static int LOCATION_SET_BY_PUB = 0;
    private static int g = LOCATION_SET_BY_SDK;

    private static synchronized LocationManager a() {
        LocationManager locationManager;
        synchronized (LocationInfo.class) {
            locationManager = f3781a;
        }
        return locationManager;
    }

    private static synchronized void a(LocationManager locationManager) {
        synchronized (LocationInfo.class) {
            f3781a = locationManager;
        }
    }

    public static boolean isLocationPermissionsDenied() {
        return (InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 || InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) ? false : true;
    }

    public static double getLat() {
        return b;
    }

    private static void a(double d2) {
        b = d2;
    }

    public static double getLon() {
        return c;
    }

    private static void b(double d2) {
        c = d2;
    }

    public static double getLocAccuracy() {
        return d;
    }

    private static void c(double d2) {
        d = d2;
    }

    public static boolean isValidGeoInfo() {
        return e;
    }

    static void a(boolean z) {
        e = z;
    }

    public static long getGeoTS() {
        return f;
    }

    private static void a(long j) {
        f = j;
    }

    private static boolean b() {
        try {
            if (a() == null) {
                a((LocationManager) InternalSDKUtil.getContext().getSystemService(a.b.LOCATION));
            }
            if (a() != null) {
                LocationManager a2 = a();
                Criteria criteria = new Criteria();
                if (InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                    criteria.setAccuracy(1);
                } else if (InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    criteria.setAccuracy(2);
                }
                criteria.setCostAllowed(false);
                String bestProvider = a2.getBestProvider(criteria, true);
                if (bestProvider != null) {
                    boolean isProviderEnabled = InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 ? a2.isProviderEnabled("network") : false;
                    boolean isProviderEnabled2 = InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 ? a2.isProviderEnabled("gps") : false;
                    if (!isProviderEnabled && !isProviderEnabled2) {
                        return false;
                    }
                    Location lastKnownLocation = a2.getLastKnownLocation(bestProvider);
                    if (lastKnownLocation == null) {
                        lastKnownLocation = c();
                        Log.debug(InternalSDKUtil.LOGGING_TAG, "lastKnownLocation: " + lastKnownLocation);
                    }
                    if (lastKnownLocation == null) {
                        return false;
                    }
                    Log.debug(InternalSDKUtil.LOGGING_TAG, "lastBestKnownLocation: " + lastKnownLocation);
                    a(lastKnownLocation);
                    return true;
                }
            }
            return true;
        } catch (Exception e2) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Error getting the Location Info ", e2);
            return false;
        }
    }

    private static Location c() {
        Location lastKnownLocation;
        if (a() == null) {
            a((LocationManager) InternalSDKUtil.getContext().getSystemService(a.b.LOCATION));
        }
        if (a() != null) {
            LocationManager a2 = a();
            List<String> providers = a2.getProviders(true);
            for (int size = providers.size() - 1; size >= 0; size--) {
                String str = providers.get(size);
                if (a2.isProviderEnabled(str) && (lastKnownLocation = a2.getLastKnownLocation(str)) != null) {
                    return lastKnownLocation;
                }
            }
        }
        return null;
    }

    static void a(Location location) {
        if (location != null) {
            a(true);
            a(location.getLatitude());
            b(location.getLongitude());
            c(location.getAccuracy());
            a(location.getTime());
            return;
        }
        a(false);
    }

    public static synchronized void collectLocationInfo() {
        synchronized (LocationInfo.class) {
            try {
                if (!isLocationPermissionsDenied() && b()) {
                    setSDKLocation(LOCATION_SET_BY_SDK);
                }
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception updating loc info", e2);
            }
        }
    }

    public static String currentLocationStr() {
        StringBuilder sb = new StringBuilder();
        if (!DemogInfo.isLocationInquiryAllowed()) {
            if (DemogInfo.getCurrentLocation() != null) {
                a(DemogInfo.getCurrentLocation());
            } else {
                a((Location) null);
            }
            setSDKLocation(LOCATION_SET_BY_PUB);
        } else if (!isValidGeoInfo() && DemogInfo.getCurrentLocation() != null) {
            a(DemogInfo.getCurrentLocation());
            setSDKLocation(LOCATION_SET_BY_PUB);
        }
        if (sb != null && isValidGeoInfo()) {
            sb.append(getLat());
            sb.append(",");
            sb.append(getLon());
            sb.append(",");
            sb.append((int) getLocAccuracy());
            return sb.toString();
        }
        return "";
    }

    public static void setSDKLocation(int i) {
        g = i;
    }

    public static int isSDKSetLocation() {
        return g;
    }
}
