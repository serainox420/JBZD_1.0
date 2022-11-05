package com.inmobi.commons.thinICE.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.a.a;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class LocationUtil {
    private static LocationInfo a(Context context, String str) {
        Location lastKnownLocation = ((LocationManager) context.getSystemService(a.b.LOCATION)).getLastKnownLocation(str);
        if (lastKnownLocation == null) {
            return null;
        }
        LocationInfo locationInfo = new LocationInfo();
        locationInfo.time = lastKnownLocation.getTime();
        locationInfo.provider = lastKnownLocation.getProvider();
        locationInfo.latitude = lastKnownLocation.getLatitude();
        locationInfo.longitude = lastKnownLocation.getLongitude();
        locationInfo.accuracy = lastKnownLocation.getAccuracy();
        return locationInfo;
    }

    public static HashMap<String, LocationInfo> getLastKnownLocations(Context context) {
        HashMap<String, LocationInfo> hashMap = new HashMap<>();
        if (hasFineLocationPermission(context)) {
            hashMap.put("gps", a(context, "gps"));
        }
        if (hasCoarseLocationPermission(context)) {
            hashMap.put("network", a(context, "network"));
        }
        return hashMap;
    }

    public static boolean hasLocationPermission(Context context) {
        return hasFineLocationPermission(context) || hasCoarseLocationPermission(context);
    }

    public static boolean hasFineLocationPermission(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public static boolean hasCoarseLocationPermission(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }
}
