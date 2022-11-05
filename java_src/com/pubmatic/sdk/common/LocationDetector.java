package com.pubmatic.sdk.common;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.a.a;
import com.pubmatic.sdk.common.PMLogger;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
/* loaded from: classes3.dex */
public class LocationDetector extends Observable {
    private static String TAG = LocationDetector.class.getName();
    private static LocationDetector self;
    private boolean changed;
    private Context context;
    private Location location;
    private LocationManager locationManager = null;
    private LocationListener locationListener = null;
    private final Object MUTEX = new Object();
    private List<Observer> observers = new ArrayList();

    private LocationDetector(Context context) {
        this.context = context;
    }

    public static LocationDetector getInstance(Context context) {
        if (self == null) {
            self = new LocationDetector(context);
        }
        return self;
    }

    @Override // java.util.Observable
    public void addObserver(Observer observer) {
        super.addObserver(observer);
        if (observer == null) {
            throw new NullPointerException("Null Observer");
        }
        synchronized (this.MUTEX) {
            if (!this.observers.contains(observer)) {
                this.observers.add(observer);
            }
            if (!isLocationDetectionEnabled()) {
                setLocationDetectionEnabled(true);
            }
        }
    }

    @Override // java.util.Observable
    public synchronized void deleteObserver(Observer observer) {
        super.deleteObserver(observer);
        synchronized (this.MUTEX) {
            this.observers.remove(observer);
            if (this.observers.isEmpty()) {
                setLocationDetectionEnabled(false);
            }
        }
    }

    @Override // java.util.Observable
    public synchronized void deleteObservers() {
        super.deleteObservers();
        synchronized (this.MUTEX) {
            this.observers.clear();
            setLocationDetectionEnabled(false);
        }
    }

    @Override // java.util.Observable
    public void notifyObservers() {
        synchronized (this.MUTEX) {
            if (this.changed) {
                ArrayList<Observer> arrayList = new ArrayList(this.observers);
                this.changed = false;
                for (Observer observer : arrayList) {
                    observer.update(this, this.location);
                }
            }
        }
    }

    public Location getUpdate(Observer observer) {
        if (this.observers.contains(observer)) {
            return this.location;
        }
        return null;
    }

    public boolean isLocationDetectionEnabled() {
        return this.locationManager != null;
    }

    public void setLocationDetectionEnabled(boolean z) {
        if (!z) {
            if (this.locationManager != null && this.locationListener != null) {
                try {
                    this.locationManager.removeUpdates(this.locationListener);
                } catch (SecurityException e) {
                }
                this.locationManager = null;
                this.locationListener = null;
                return;
            }
            return;
        }
        Criteria criteria = new Criteria();
        criteria.setCostAllowed(false);
        criteria.setPowerRequirement(0);
        criteria.setBearingRequired(false);
        criteria.setSpeedRequired(false);
        criteria.setAltitudeRequired(false);
        criteria.setAccuracy(2);
        enableLocationDetection(600000L, 20.0f, criteria, null);
    }

    public void enableLocationDetection(long j, float f, Criteria criteria, String str) {
        String bestProvider;
        if (str == null && criteria == null) {
            throw new IllegalArgumentException("criteria or provider required");
        }
        this.locationManager = (LocationManager) this.context.getSystemService(a.b.LOCATION);
        if (this.locationManager != null) {
            if (str == null) {
                try {
                    bestProvider = this.locationManager.getBestProvider(criteria, true);
                } catch (Exception e) {
                    Log.d(TAG, "Error requesting location updates.  Exception:" + e);
                    this.locationManager.removeUpdates(this.locationListener);
                    this.locationManager = null;
                    this.locationListener = null;
                    return;
                }
            } else {
                bestProvider = str;
            }
            if (bestProvider != null) {
                this.locationListener = new LocationListener();
                if (Build.VERSION.SDK_INT >= 23) {
                    if (this.context.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        this.locationManager.requestLocationUpdates(bestProvider, j, f, this.locationListener);
                        return;
                    }
                    return;
                }
                this.locationManager.requestLocationUpdates(bestProvider, j, f, this.locationListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class LocationListener implements android.location.LocationListener {
        public LocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            PMLogger.logEvent("LocationListener.onLocationChanged location:" + location.toString(), PMLogger.LogLevel.Debug);
            LocationDetector.this.location = location;
            LocationDetector.this.changed = true;
            LocationDetector.this.notifyObservers();
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            PMLogger.logEvent("LocationListener.onProviderDisabled provider:" + str, PMLogger.LogLevel.Debug);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            PMLogger.logEvent("LocationListener.onProviderEnabled provider:" + str, PMLogger.LogLevel.Debug);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            PMLogger.logEvent("LocationListener.onStatusChanged provider:" + str + " status:" + String.valueOf(i), PMLogger.LogLevel.Debug);
            if (i != 2) {
                LocationDetector.this.location = null;
            }
        }
    }
}
