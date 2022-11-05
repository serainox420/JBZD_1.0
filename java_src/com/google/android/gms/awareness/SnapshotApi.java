package com.google.android.gms.awareness;

import com.google.android.gms.awareness.snapshot.BeaconStateResult;
import com.google.android.gms.awareness.snapshot.DetectedActivityResult;
import com.google.android.gms.awareness.snapshot.HeadphoneStateResult;
import com.google.android.gms.awareness.snapshot.LocationResult;
import com.google.android.gms.awareness.snapshot.PlacesResult;
import com.google.android.gms.awareness.snapshot.TimeIntervalsResult;
import com.google.android.gms.awareness.snapshot.WeatherResult;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import java.util.Collection;
/* loaded from: classes2.dex */
public interface SnapshotApi {
    PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, Collection<BeaconState.TypeFilter> collection);

    PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, BeaconState.TypeFilter... typeFilterArr);

    PendingResult<DetectedActivityResult> getDetectedActivity(GoogleApiClient googleApiClient);

    PendingResult<HeadphoneStateResult> getHeadphoneState(GoogleApiClient googleApiClient);

    PendingResult<LocationResult> getLocation(GoogleApiClient googleApiClient);

    PendingResult<PlacesResult> getPlaces(GoogleApiClient googleApiClient);

    PendingResult<TimeIntervalsResult> getTimeIntervals(GoogleApiClient googleApiClient);

    PendingResult<WeatherResult> getWeather(GoogleApiClient googleApiClient);
}
