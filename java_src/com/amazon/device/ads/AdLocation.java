package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.amazon.device.ads.Configuration;
import com.google.firebase.a.a;
/* loaded from: classes.dex */
class AdLocation {
    private static final int ARCMINUTE_PRECISION = 6;
    private static final String LOGTAG = AdLocation.class.getSimpleName();
    private static final float MAX_DISTANCE_IN_KILOMETERS = 3.0f;
    private final Configuration configuration;
    private final Context context;
    private final MobileAdsLogger logger;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum LocationAwareness {
        LOCATION_AWARENESS_NORMAL,
        LOCATION_AWARENESS_TRUNCATED,
        LOCATION_AWARENESS_DISABLED
    }

    public AdLocation(Context context) {
        this(context, Configuration.getInstance());
    }

    AdLocation(Context context, Configuration configuration) {
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        this.context = context;
        this.configuration = configuration;
    }

    private static double roundToArcminutes(double d) {
        return Math.round(d * 60.0d) / 60.0d;
    }

    private LocationAwareness getLocationAwareness() {
        return this.configuration.getBoolean(Configuration.ConfigOption.TRUNCATE_LAT_LON) ? LocationAwareness.LOCATION_AWARENESS_TRUNCATED : LocationAwareness.LOCATION_AWARENESS_NORMAL;
    }

    public Location getLocation() {
        Location location;
        Location location2;
        float f = Float.MAX_VALUE;
        LocationAwareness locationAwareness = getLocationAwareness();
        if (LocationAwareness.LOCATION_AWARENESS_DISABLED.equals(locationAwareness)) {
            return null;
        }
        LocationManager locationManager = (LocationManager) this.context.getSystemService(a.b.LOCATION);
        try {
            location = locationManager.getLastKnownLocation("gps");
        } catch (IllegalArgumentException e) {
            this.logger.d("Failed to retrieve GPS location: No GPS found");
            location = null;
        } catch (SecurityException e2) {
            this.logger.d("Failed to retrieve GPS location: No permissions to access GPS");
            location = null;
        }
        try {
            location2 = locationManager.getLastKnownLocation("network");
        } catch (IllegalArgumentException e3) {
            this.logger.d("Failed to retrieve network location: No network provider found");
            location2 = null;
        } catch (SecurityException e4) {
            this.logger.d("Failed to retrieve network location: No permissions to access network location");
            location2 = null;
        }
        if (location == null && location2 == null) {
            return null;
        }
        if (location != null && location2 != null) {
            if (location.distanceTo(location2) / 1000.0f <= 3.0f) {
                float accuracy = location.hasAccuracy() ? location.getAccuracy() : Float.MAX_VALUE;
                if (location2.hasAccuracy()) {
                    f = location2.getAccuracy();
                }
                if (accuracy < f) {
                    this.logger.d("Setting lat/long using GPS determined by distance");
                } else {
                    this.logger.d("Setting lat/long using network determined by distance");
                    location = location2;
                }
            } else if (location.getTime() > location2.getTime()) {
                this.logger.d("Setting lat/long using GPS");
            } else {
                this.logger.d("Setting lat/long using network");
                location = location2;
            }
        } else if (location != null) {
            this.logger.d("Setting lat/long using GPS, not network");
        } else {
            this.logger.d("Setting lat/long using network location, not GPS");
            location = location2;
        }
        if (LocationAwareness.LOCATION_AWARENESS_TRUNCATED.equals(locationAwareness)) {
            location.setLatitude(Math.round(roundToArcminutes(location.getLatitude()) * Math.pow(10.0d, 6.0d)) / Math.pow(10.0d, 6.0d));
            location.setLongitude(Math.round(roundToArcminutes(location.getLongitude()) * Math.pow(10.0d, 6.0d)) / Math.pow(10.0d, 6.0d));
        }
        return location;
    }
}
