package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.LocationSource;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.ILocationSourceDelegate;
import com.google.android.gms.maps.internal.zzaa;
import com.google.android.gms.maps.internal.zzag;
import com.google.android.gms.maps.internal.zzb;
import com.google.android.gms.maps.internal.zzd;
import com.google.android.gms.maps.internal.zze;
import com.google.android.gms.maps.internal.zzf;
import com.google.android.gms.maps.internal.zzg;
import com.google.android.gms.maps.internal.zzh;
import com.google.android.gms.maps.internal.zzi;
import com.google.android.gms.maps.internal.zzj;
import com.google.android.gms.maps.internal.zzk;
import com.google.android.gms.maps.internal.zzl;
import com.google.android.gms.maps.internal.zzm;
import com.google.android.gms.maps.internal.zzn;
import com.google.android.gms.maps.internal.zzo;
import com.google.android.gms.maps.internal.zzp;
import com.google.android.gms.maps.internal.zzq;
import com.google.android.gms.maps.internal.zzr;
import com.google.android.gms.maps.internal.zzs;
import com.google.android.gms.maps.internal.zzu;
import com.google.android.gms.maps.internal.zzv;
import com.google.android.gms.maps.internal.zzw;
import com.google.android.gms.maps.internal.zzx;
import com.google.android.gms.maps.internal.zzy;
import com.google.android.gms.maps.internal.zzz;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PointOfInterest;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.zzc;
import com.google.android.gms.maps.model.internal.zzd;
import com.google.android.gms.maps.model.internal.zzf;
import com.google.android.gms.maps.model.internal.zzh;
/* loaded from: classes.dex */
public final class GoogleMap {
    public static final int MAP_TYPE_HYBRID = 4;
    public static final int MAP_TYPE_NONE = 0;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MAP_TYPE_TERRAIN = 3;
    private final IGoogleMapDelegate zzbnw;
    private UiSettings zzbnx;

    /* loaded from: classes2.dex */
    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    /* loaded from: classes2.dex */
    public interface InfoWindowAdapter {
        View getInfoContents(Marker marker);

        View getInfoWindow(Marker marker);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnCameraChangeListener {
        void onCameraChange(CameraPosition cameraPosition);
    }

    /* loaded from: classes2.dex */
    public interface OnCameraIdleListener {
        void onCameraIdle();
    }

    /* loaded from: classes2.dex */
    public interface OnCameraMoveCanceledListener {
        void onCameraMoveCanceled();
    }

    /* loaded from: classes2.dex */
    public interface OnCameraMoveListener {
        void onCameraMove();
    }

    /* loaded from: classes2.dex */
    public interface OnCameraMoveStartedListener {
        public static final int REASON_API_ANIMATION = 2;
        public static final int REASON_DEVELOPER_ANIMATION = 3;
        public static final int REASON_GESTURE = 1;

        void onCameraMoveStarted(int i);
    }

    /* loaded from: classes2.dex */
    public interface OnCircleClickListener {
        void onCircleClick(Circle circle);
    }

    /* loaded from: classes2.dex */
    public interface OnGroundOverlayClickListener {
        void onGroundOverlayClick(GroundOverlay groundOverlay);
    }

    /* loaded from: classes2.dex */
    public interface OnIndoorStateChangeListener {
        void onIndoorBuildingFocused();

        void onIndoorLevelActivated(IndoorBuilding indoorBuilding);
    }

    /* loaded from: classes2.dex */
    public interface OnInfoWindowClickListener {
        void onInfoWindowClick(Marker marker);
    }

    /* loaded from: classes2.dex */
    public interface OnInfoWindowCloseListener {
        void onInfoWindowClose(Marker marker);
    }

    /* loaded from: classes2.dex */
    public interface OnInfoWindowLongClickListener {
        void onInfoWindowLongClick(Marker marker);
    }

    /* loaded from: classes2.dex */
    public interface OnMapClickListener {
        void onMapClick(LatLng latLng);
    }

    /* loaded from: classes2.dex */
    public interface OnMapLoadedCallback {
        void onMapLoaded();
    }

    /* loaded from: classes2.dex */
    public interface OnMapLongClickListener {
        void onMapLongClick(LatLng latLng);
    }

    /* loaded from: classes2.dex */
    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    /* loaded from: classes2.dex */
    public interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    /* loaded from: classes2.dex */
    public interface OnMyLocationButtonClickListener {
        boolean onMyLocationButtonClick();
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnMyLocationChangeListener {
        void onMyLocationChange(Location location);
    }

    /* loaded from: classes2.dex */
    public interface OnPoiClickListener {
        void onPoiClick(PointOfInterest pointOfInterest);
    }

    /* loaded from: classes2.dex */
    public interface OnPolygonClickListener {
        void onPolygonClick(Polygon polygon);
    }

    /* loaded from: classes2.dex */
    public interface OnPolylineClickListener {
        void onPolylineClick(Polyline polyline);
    }

    /* loaded from: classes2.dex */
    public interface SnapshotReadyCallback {
        void onSnapshotReady(Bitmap bitmap);
    }

    /* loaded from: classes2.dex */
    private static final class zza extends zzb.zza {
        private final CancelableCallback zzbnX;

        zza(CancelableCallback cancelableCallback) {
            this.zzbnX = cancelableCallback;
        }

        @Override // com.google.android.gms.maps.internal.zzb
        public void onCancel() {
            this.zzbnX.onCancel();
        }

        @Override // com.google.android.gms.maps.internal.zzb
        public void onFinish() {
            this.zzbnX.onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GoogleMap(IGoogleMapDelegate iGoogleMapDelegate) {
        this.zzbnw = (IGoogleMapDelegate) zzac.zzw(iGoogleMapDelegate);
    }

    public final Circle addCircle(CircleOptions circleOptions) {
        try {
            return new Circle(this.zzbnw.addCircle(circleOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
        try {
            zzc addGroundOverlay = this.zzbnw.addGroundOverlay(groundOverlayOptions);
            if (addGroundOverlay == null) {
                return null;
            }
            return new GroundOverlay(addGroundOverlay);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Marker addMarker(MarkerOptions markerOptions) {
        try {
            zzf addMarker = this.zzbnw.addMarker(markerOptions);
            if (addMarker == null) {
                return null;
            }
            return new Marker(addMarker);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Polygon addPolygon(PolygonOptions polygonOptions) {
        try {
            return new Polygon(this.zzbnw.addPolygon(polygonOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Polyline addPolyline(PolylineOptions polylineOptions) {
        try {
            return new Polyline(this.zzbnw.addPolyline(polylineOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) {
        try {
            zzh addTileOverlay = this.zzbnw.addTileOverlay(tileOverlayOptions);
            if (addTileOverlay == null) {
                return null;
            }
            return new TileOverlay(addTileOverlay);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        try {
            this.zzbnw.animateCamera(cameraUpdate.zzJm());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, int i, CancelableCallback cancelableCallback) {
        try {
            this.zzbnw.animateCameraWithDurationAndCallback(cameraUpdate.zzJm(), i, cancelableCallback == null ? null : new zza(cancelableCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        try {
            this.zzbnw.animateCameraWithCallback(cameraUpdate.zzJm(), cancelableCallback == null ? null : new zza(cancelableCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void clear() {
        try {
            this.zzbnw.clear();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.zzbnw.getCameraPosition();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public IndoorBuilding getFocusedBuilding() {
        try {
            zzd focusedBuilding = this.zzbnw.getFocusedBuilding();
            if (focusedBuilding == null) {
                return null;
            }
            return new IndoorBuilding(focusedBuilding);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getMapType() {
        try {
            return this.zzbnw.getMapType();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getMaxZoomLevel() {
        try {
            return this.zzbnw.getMaxZoomLevel();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getMinZoomLevel() {
        try {
            return this.zzbnw.getMinZoomLevel();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final Location getMyLocation() {
        try {
            return this.zzbnw.getMyLocation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Projection getProjection() {
        try {
            return new Projection(this.zzbnw.getProjection());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final UiSettings getUiSettings() {
        try {
            if (this.zzbnx == null) {
                this.zzbnx = new UiSettings(this.zzbnw.getUiSettings());
            }
            return this.zzbnx;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isBuildingsEnabled() {
        try {
            return this.zzbnw.isBuildingsEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isIndoorEnabled() {
        try {
            return this.zzbnw.isIndoorEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isMyLocationEnabled() {
        try {
            return this.zzbnw.isMyLocationEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isTrafficEnabled() {
        try {
            return this.zzbnw.isTrafficEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        try {
            this.zzbnw.moveCamera(cameraUpdate.zzJm());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void resetMinMaxZoomPreference() {
        try {
            this.zzbnw.resetMinMaxZoomPreference();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setBuildingsEnabled(boolean z) {
        try {
            this.zzbnw.setBuildingsEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setContentDescription(String str) {
        try {
            this.zzbnw.setContentDescription(str);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean setIndoorEnabled(boolean z) {
        try {
            return this.zzbnw.setIndoorEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setInfoWindowAdapter(final InfoWindowAdapter infoWindowAdapter) {
        try {
            if (infoWindowAdapter == null) {
                this.zzbnw.setInfoWindowAdapter(null);
            } else {
                this.zzbnw.setInfoWindowAdapter(new zzd.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.7
                    @Override // com.google.android.gms.maps.internal.zzd
                    public IObjectWrapper zzh(zzf zzfVar) {
                        return com.google.android.gms.dynamic.zzd.zzA(infoWindowAdapter.getInfoWindow(new Marker(zzfVar)));
                    }

                    @Override // com.google.android.gms.maps.internal.zzd
                    public IObjectWrapper zzi(zzf zzfVar) {
                        return com.google.android.gms.dynamic.zzd.zzA(infoWindowAdapter.getInfoContents(new Marker(zzfVar)));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        try {
            this.zzbnw.setLatLngBoundsForCameraTarget(latLngBounds);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setLocationSource(final LocationSource locationSource) {
        try {
            if (locationSource == null) {
                this.zzbnw.setLocationSource(null);
            } else {
                this.zzbnw.setLocationSource(new ILocationSourceDelegate.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.12
                    @Override // com.google.android.gms.maps.internal.ILocationSourceDelegate
                    public void activate(final zzp zzpVar) {
                        locationSource.activate(new LocationSource.OnLocationChangedListener(this) { // from class: com.google.android.gms.maps.GoogleMap.12.1
                            @Override // com.google.android.gms.maps.LocationSource.OnLocationChangedListener
                            public void onLocationChanged(Location location) {
                                try {
                                    zzpVar.zze(location);
                                } catch (RemoteException e) {
                                    throw new RuntimeRemoteException(e);
                                }
                            }
                        });
                    }

                    @Override // com.google.android.gms.maps.internal.ILocationSourceDelegate
                    public void deactivate() {
                        locationSource.deactivate();
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean setMapStyle(MapStyleOptions mapStyleOptions) {
        try {
            return this.zzbnw.setMapStyle(mapStyleOptions);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMapType(int i) {
        try {
            this.zzbnw.setMapType(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setMaxZoomPreference(float f) {
        try {
            this.zzbnw.setMaxZoomPreference(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setMinZoomPreference(float f) {
        try {
            this.zzbnw.setMinZoomPreference(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMyLocationEnabled(boolean z) {
        try {
            this.zzbnw.setMyLocationEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final void setOnCameraChangeListener(final OnCameraChangeListener onCameraChangeListener) {
        try {
            if (onCameraChangeListener == null) {
                this.zzbnw.setOnCameraChangeListener(null);
            } else {
                this.zzbnw.setOnCameraChangeListener(new zze.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.18
                    @Override // com.google.android.gms.maps.internal.zze
                    public void onCameraChange(CameraPosition cameraPosition) {
                        onCameraChangeListener.onCameraChange(cameraPosition);
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraIdleListener(final OnCameraIdleListener onCameraIdleListener) {
        try {
            if (onCameraIdleListener == null) {
                this.zzbnw.setOnCameraIdleListener(null);
            } else {
                this.zzbnw.setOnCameraIdleListener(new zzf.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.22
                    @Override // com.google.android.gms.maps.internal.zzf
                    public void onCameraIdle() {
                        onCameraIdleListener.onCameraIdle();
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraMoveCanceledListener(final OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        try {
            if (onCameraMoveCanceledListener == null) {
                this.zzbnw.setOnCameraMoveCanceledListener(null);
            } else {
                this.zzbnw.setOnCameraMoveCanceledListener(new zzg.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.21
                    @Override // com.google.android.gms.maps.internal.zzg
                    public void onCameraMoveCanceled() {
                        onCameraMoveCanceledListener.onCameraMoveCanceled();
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraMoveListener(final OnCameraMoveListener onCameraMoveListener) {
        try {
            if (onCameraMoveListener == null) {
                this.zzbnw.setOnCameraMoveListener(null);
            } else {
                this.zzbnw.setOnCameraMoveListener(new zzh.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.20
                    @Override // com.google.android.gms.maps.internal.zzh
                    public void onCameraMove() {
                        onCameraMoveListener.onCameraMove();
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraMoveStartedListener(final OnCameraMoveStartedListener onCameraMoveStartedListener) {
        try {
            if (onCameraMoveStartedListener == null) {
                this.zzbnw.setOnCameraMoveStartedListener(null);
            } else {
                this.zzbnw.setOnCameraMoveStartedListener(new zzi.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.19
                    @Override // com.google.android.gms.maps.internal.zzi
                    public void onCameraMoveStarted(int i) {
                        onCameraMoveStartedListener.onCameraMoveStarted(i);
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCircleClickListener(final OnCircleClickListener onCircleClickListener) {
        try {
            if (onCircleClickListener == null) {
                this.zzbnw.setOnCircleClickListener(null);
            } else {
                this.zzbnw.setOnCircleClickListener(new zzj.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.13
                    @Override // com.google.android.gms.maps.internal.zzj
                    public void zza(com.google.android.gms.maps.model.internal.zzb zzbVar) {
                        onCircleClickListener.onCircleClick(new Circle(zzbVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnGroundOverlayClickListener(final OnGroundOverlayClickListener onGroundOverlayClickListener) {
        try {
            if (onGroundOverlayClickListener == null) {
                this.zzbnw.setOnGroundOverlayClickListener(null);
            } else {
                this.zzbnw.setOnGroundOverlayClickListener(new zzk.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.11
                    @Override // com.google.android.gms.maps.internal.zzk
                    public void zza(zzc zzcVar) {
                        onGroundOverlayClickListener.onGroundOverlayClick(new GroundOverlay(zzcVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnIndoorStateChangeListener(final OnIndoorStateChangeListener onIndoorStateChangeListener) {
        try {
            if (onIndoorStateChangeListener == null) {
                this.zzbnw.setOnIndoorStateChangeListener(null);
            } else {
                this.zzbnw.setOnIndoorStateChangeListener(new zzl.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.1
                    @Override // com.google.android.gms.maps.internal.zzl
                    public void onIndoorBuildingFocused() {
                        onIndoorStateChangeListener.onIndoorBuildingFocused();
                    }

                    @Override // com.google.android.gms.maps.internal.zzl
                    public void zza(com.google.android.gms.maps.model.internal.zzd zzdVar) {
                        onIndoorStateChangeListener.onIndoorLevelActivated(new IndoorBuilding(zzdVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnInfoWindowClickListener(final OnInfoWindowClickListener onInfoWindowClickListener) {
        try {
            if (onInfoWindowClickListener == null) {
                this.zzbnw.setOnInfoWindowClickListener(null);
            } else {
                this.zzbnw.setOnInfoWindowClickListener(new zzm.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.4
                    @Override // com.google.android.gms.maps.internal.zzm
                    public void zze(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        onInfoWindowClickListener.onInfoWindowClick(new Marker(zzfVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnInfoWindowCloseListener(final OnInfoWindowCloseListener onInfoWindowCloseListener) {
        try {
            if (onInfoWindowCloseListener == null) {
                this.zzbnw.setOnInfoWindowCloseListener(null);
            } else {
                this.zzbnw.setOnInfoWindowCloseListener(new zzn.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.6
                    @Override // com.google.android.gms.maps.internal.zzn
                    public void zzg(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        onInfoWindowCloseListener.onInfoWindowClose(new Marker(zzfVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnInfoWindowLongClickListener(final OnInfoWindowLongClickListener onInfoWindowLongClickListener) {
        try {
            if (onInfoWindowLongClickListener == null) {
                this.zzbnw.setOnInfoWindowLongClickListener(null);
            } else {
                this.zzbnw.setOnInfoWindowLongClickListener(new zzo.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.5
                    @Override // com.google.android.gms.maps.internal.zzo
                    public void zzf(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        onInfoWindowLongClickListener.onInfoWindowLongClick(new Marker(zzfVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMapClickListener(final OnMapClickListener onMapClickListener) {
        try {
            if (onMapClickListener == null) {
                this.zzbnw.setOnMapClickListener(null);
            } else {
                this.zzbnw.setOnMapClickListener(new zzq.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.23
                    @Override // com.google.android.gms.maps.internal.zzq
                    public void onMapClick(LatLng latLng) {
                        onMapClickListener.onMapClick(latLng);
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setOnMapLoadedCallback(final OnMapLoadedCallback onMapLoadedCallback) {
        try {
            if (onMapLoadedCallback == null) {
                this.zzbnw.setOnMapLoadedCallback(null);
            } else {
                this.zzbnw.setOnMapLoadedCallback(new zzr.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.10
                    @Override // com.google.android.gms.maps.internal.zzr
                    public void onMapLoaded() throws RemoteException {
                        onMapLoadedCallback.onMapLoaded();
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMapLongClickListener(final OnMapLongClickListener onMapLongClickListener) {
        try {
            if (onMapLongClickListener == null) {
                this.zzbnw.setOnMapLongClickListener(null);
            } else {
                this.zzbnw.setOnMapLongClickListener(new zzs.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.24
                    @Override // com.google.android.gms.maps.internal.zzs
                    public void onMapLongClick(LatLng latLng) {
                        onMapLongClickListener.onMapLongClick(latLng);
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMarkerClickListener(final OnMarkerClickListener onMarkerClickListener) {
        try {
            if (onMarkerClickListener == null) {
                this.zzbnw.setOnMarkerClickListener(null);
            } else {
                this.zzbnw.setOnMarkerClickListener(new zzu.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.2
                    @Override // com.google.android.gms.maps.internal.zzu
                    public boolean zza(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        return onMarkerClickListener.onMarkerClick(new Marker(zzfVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMarkerDragListener(final OnMarkerDragListener onMarkerDragListener) {
        try {
            if (onMarkerDragListener == null) {
                this.zzbnw.setOnMarkerDragListener(null);
            } else {
                this.zzbnw.setOnMarkerDragListener(new zzv.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.3
                    @Override // com.google.android.gms.maps.internal.zzv
                    public void zzb(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        onMarkerDragListener.onMarkerDragStart(new Marker(zzfVar));
                    }

                    @Override // com.google.android.gms.maps.internal.zzv
                    public void zzc(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        onMarkerDragListener.onMarkerDragEnd(new Marker(zzfVar));
                    }

                    @Override // com.google.android.gms.maps.internal.zzv
                    public void zzd(com.google.android.gms.maps.model.internal.zzf zzfVar) {
                        onMarkerDragListener.onMarkerDrag(new Marker(zzfVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMyLocationButtonClickListener(final OnMyLocationButtonClickListener onMyLocationButtonClickListener) {
        try {
            if (onMyLocationButtonClickListener == null) {
                this.zzbnw.setOnMyLocationButtonClickListener(null);
            } else {
                this.zzbnw.setOnMyLocationButtonClickListener(new zzw.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.9
                    @Override // com.google.android.gms.maps.internal.zzw
                    public boolean onMyLocationButtonClick() throws RemoteException {
                        return onMyLocationButtonClickListener.onMyLocationButtonClick();
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final void setOnMyLocationChangeListener(final OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            if (onMyLocationChangeListener == null) {
                this.zzbnw.setOnMyLocationChangeListener(null);
            } else {
                this.zzbnw.setOnMyLocationChangeListener(new zzx.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.8
                    @Override // com.google.android.gms.maps.internal.zzx
                    public void zzG(IObjectWrapper iObjectWrapper) {
                        onMyLocationChangeListener.onMyLocationChange((Location) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnPoiClickListener(final OnPoiClickListener onPoiClickListener) {
        try {
            if (onPoiClickListener == null) {
                this.zzbnw.setOnPoiClickListener(null);
            } else {
                this.zzbnw.setOnPoiClickListener(new zzy.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.17
                    @Override // com.google.android.gms.maps.internal.zzy
                    public void zza(PointOfInterest pointOfInterest) throws RemoteException {
                        onPoiClickListener.onPoiClick(pointOfInterest);
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnPolygonClickListener(final OnPolygonClickListener onPolygonClickListener) {
        try {
            if (onPolygonClickListener == null) {
                this.zzbnw.setOnPolygonClickListener(null);
            } else {
                this.zzbnw.setOnPolygonClickListener(new zzz.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.14
                    @Override // com.google.android.gms.maps.internal.zzz
                    public void zza(com.google.android.gms.maps.model.internal.zzg zzgVar) {
                        onPolygonClickListener.onPolygonClick(new Polygon(zzgVar));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnPolylineClickListener(final OnPolylineClickListener onPolylineClickListener) {
        try {
            if (onPolylineClickListener == null) {
                this.zzbnw.setOnPolylineClickListener(null);
            } else {
                this.zzbnw.setOnPolylineClickListener(new zzaa.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.15
                    @Override // com.google.android.gms.maps.internal.zzaa
                    public void zza(IPolylineDelegate iPolylineDelegate) {
                        onPolylineClickListener.onPolylineClick(new Polyline(iPolylineDelegate));
                    }
                });
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
        try {
            this.zzbnw.setPadding(i, i2, i3, i4);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setTrafficEnabled(boolean z) {
        try {
            this.zzbnw.setTrafficEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback) {
        snapshot(snapshotReadyCallback, null);
    }

    public final void snapshot(final SnapshotReadyCallback snapshotReadyCallback, Bitmap bitmap) {
        try {
            this.zzbnw.snapshot(new zzag.zza(this) { // from class: com.google.android.gms.maps.GoogleMap.16
                @Override // com.google.android.gms.maps.internal.zzag
                public void onSnapshotReady(Bitmap bitmap2) throws RemoteException {
                    snapshotReadyCallback.onSnapshotReady(bitmap2);
                }

                @Override // com.google.android.gms.maps.internal.zzag
                public void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
                    snapshotReadyCallback.onSnapshotReady((Bitmap) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
                }
            }, (com.google.android.gms.dynamic.zzd) (bitmap != null ? com.google.android.gms.dynamic.zzd.zzA(bitmap) : null));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void stopAnimation() {
        try {
            this.zzbnw.stopAnimation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
