package com.video.adsdk.internal.checker;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.a.a;
import com.video.adsdk.interfaces.checker.GeolocationChecker;
/* loaded from: classes3.dex */
public class ADGeolocationChecker implements GeolocationChecker {
    private final boolean canBeUsed = true;
    private final Context context;
    private Location location;

    public ADGeolocationChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.GeolocationChecker
    public double getLatitude() {
        if (this.location != null) {
            return this.location.getLatitude();
        }
        return 0.0d;
    }

    @Override // com.video.adsdk.interfaces.checker.GeolocationChecker
    public double getLongitude() {
        if (this.location != null) {
            return this.location.getLongitude();
        }
        return 0.0d;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        try {
            LocationManager locationManager = (LocationManager) this.context.getSystemService(a.b.LOCATION);
            Criteria criteria = new Criteria();
            criteria.setSpeedRequired(true);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider != null) {
                this.location = locationManager.getLastKnownLocation(bestProvider);
                return true;
            }
            throw new Exception("ADGeolocationChecker - No best provider");
        } catch (Exception e) {
            return false;
        }
    }
}
