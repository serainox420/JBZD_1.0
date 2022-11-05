package com.openx.common.deviceData.managers;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.a.a;
import com.openx.common.deviceData.listeners.OXMLocationListener;
import com.openx.core.sdk.OXMBaseManager;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public final class LocationImpl extends OXMBaseManager implements OXMLocationListener {
    private static final int TWO_MINUTES = 120000;
    private String mAdminArea;
    private String mCountryName;
    private Geocoder mGeocoder;
    private LocationListener mLocListenerNtw;
    private LocationManager mLocManager;
    private Location mLocation;
    private String mPostalCode;
    private String mSubAdminArea;

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAddress() {
        List<Address> fromLocation;
        try {
            if (this.mGeocoder != null && (fromLocation = this.mGeocoder.getFromLocation(getLatitude().doubleValue(), getLongtitude().doubleValue(), 1)) != null && fromLocation.size() > 0) {
                Address address = fromLocation.get(0);
                setCountry(address.getCountryName());
                setState(address.getAdminArea());
                setCity(address.getSubAdminArea());
                setZipCode(address.getPostalCode());
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class DevLocationListener implements LocationListener {
        private DevLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (LocationImpl.this.mLocation == null) {
                LocationImpl.this.mLocation = location;
                LocationImpl.this.updateAddress();
            } else if (LocationImpl.this.isBetterLocation(location, LocationImpl.this.mLocation)) {
                LocationImpl.this.mLocation = location;
                LocationImpl.this.updateAddress();
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void init(Context context) {
        super.init(context);
        if (super.isInit()) {
            resetLocation();
        }
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public void resetLocation() {
        try {
            this.mLocManager = (LocationManager) getContext().getSystemService(a.b.LOCATION);
            this.mLocListenerNtw = new DevLocationListener();
            this.mLocManager.requestLocationUpdates("network", 0L, BitmapDescriptorFactory.HUE_RED, this.mLocListenerNtw);
            this.mGeocoder = new Geocoder(getContext(), Locale.getDefault());
            Location lastKnownLocation = this.mLocManager.getLastKnownLocation("gps");
            Location lastKnownLocation2 = this.mLocManager.getLastKnownLocation("network");
            if (lastKnownLocation != null) {
                this.mLocation = lastKnownLocation;
                if (lastKnownLocation2 != null && isBetterLocation(lastKnownLocation2, this.mLocation)) {
                    this.mLocation = lastKnownLocation2;
                    updateAddress();
                }
            } else if (lastKnownLocation2 != null) {
                this.mLocation = lastKnownLocation2;
                updateAddress();
            }
        } catch (Exception e) {
        }
    }

    protected boolean isBetterLocation(Location location, Location location2) {
        if (location2 == null) {
            return true;
        }
        if (location == null) {
            return false;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > 120000;
        boolean z2 = time < -120000;
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (z2) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z4 = accuracy > 0;
        boolean z5 = accuracy < 0;
        boolean z6 = accuracy > 200;
        boolean isSameProvider = isSameProvider(location.getProvider(), location2.getProvider());
        if (z5) {
            return true;
        }
        if (z3 && !z4) {
            return true;
        }
        return z3 && !z6 && isSameProvider;
    }

    private boolean isSameProvider(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public Double getLatitude() {
        if (this.mLocation != null) {
            return Double.valueOf(this.mLocation.getLatitude());
        }
        return null;
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public Double getLongtitude() {
        if (this.mLocation != null) {
            return Double.valueOf(this.mLocation.getLongitude());
        }
        return null;
    }

    private void setCountry(String str) {
        this.mCountryName = str;
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public String getCountry() {
        return this.mCountryName;
    }

    private void setState(String str) {
        this.mAdminArea = str;
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public String getState() {
        return this.mAdminArea;
    }

    private void setCity(String str) {
        this.mSubAdminArea = str;
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public String getCity() {
        return this.mSubAdminArea;
    }

    private void setZipCode(String str) {
        this.mPostalCode = str;
    }

    @Override // com.openx.common.deviceData.listeners.OXMLocationListener
    public String getZipCode() {
        return this.mPostalCode;
    }

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void dispose() {
        super.dispose();
        if (this.mLocManager != null) {
            this.mLocManager.removeUpdates(this.mLocListenerNtw);
        }
        this.mLocManager = null;
        this.mGeocoder = null;
        this.mLocation = null;
        this.mLocListenerNtw = null;
    }
}
