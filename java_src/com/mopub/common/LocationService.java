package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.a.a;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import java.math.BigDecimal;
/* loaded from: classes3.dex */
public class LocationService {

    /* loaded from: classes.dex */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED;

        @Deprecated
        public MoPub.LocationAwareness getNewLocationAwareness() {
            if (this == TRUNCATED) {
                return MoPub.LocationAwareness.TRUNCATED;
            }
            if (this == DISABLED) {
                return MoPub.LocationAwareness.DISABLED;
            }
            return MoPub.LocationAwareness.NORMAL;
        }

        @Deprecated
        public static LocationAwareness fromMoPubLocationAwareness(MoPub.LocationAwareness locationAwareness) {
            if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
                return DISABLED;
            }
            if (locationAwareness == MoPub.LocationAwareness.TRUNCATED) {
                return TRUNCATED;
            }
            return NORMAL;
        }
    }

    /* loaded from: classes3.dex */
    public enum ValidLocationProvider {
        NETWORK("network"),
        GPS("gps");
        

        /* renamed from: a  reason: collision with root package name */
        final String f4342a;

        ValidLocationProvider(String str) {
            this.f4342a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4342a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(Context context) {
            switch (this) {
                case NETWORK:
                    return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION");
                case GPS:
                    return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
                default:
                    return false;
            }
        }
    }

    public static Location getLastKnownLocation(Context context, int i, MoPub.LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(locationAwareness);
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        Location a2 = a(a(context, ValidLocationProvider.GPS), a(context, ValidLocationProvider.NETWORK));
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED) {
            a(a2, i);
            return a2;
        }
        return a2;
    }

    @VisibleForTesting
    static Location a(Context context, ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (!validLocationProvider.a(context)) {
            return null;
        }
        try {
            return ((LocationManager) context.getSystemService(a.b.LOCATION)).getLastKnownLocation(validLocationProvider.toString());
        } catch (IllegalArgumentException e) {
            MoPubLog.d("Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
            return null;
        } catch (NullPointerException e2) {
            MoPubLog.d("Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
            return null;
        } catch (SecurityException e3) {
            MoPubLog.d("Failed to retrieve location from " + validLocationProvider.toString() + " provider: access appears to be disabled.");
            return null;
        }
    }

    @VisibleForTesting
    static Location a(Location location, Location location2) {
        return location == null ? location2 : (location2 == null || location.getTime() > location2.getTime()) ? location : location2;
    }

    @VisibleForTesting
    static void a(Location location, int i) {
        if (location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
    }
}
