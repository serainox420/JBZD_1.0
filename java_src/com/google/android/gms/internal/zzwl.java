package com.google.android.gms.internal;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.awareness.SnapshotApi;
import com.google.android.gms.awareness.snapshot.BeaconStateResult;
import com.google.android.gms.awareness.snapshot.DetectedActivityResult;
import com.google.android.gms.awareness.snapshot.HeadphoneStateResult;
import com.google.android.gms.awareness.snapshot.LocationResult;
import com.google.android.gms.awareness.snapshot.PlacesResult;
import com.google.android.gms.awareness.snapshot.TimeIntervalsResult;
import com.google.android.gms.awareness.snapshot.WeatherResult;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.awareness.state.HeadphoneState;
import com.google.android.gms.awareness.state.TimeIntervals;
import com.google.android.gms.awareness.state.Weather;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.internal.zzafm;
import com.google.android.gms.internal.zzvx;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.places.PlaceLikelihood;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzwl implements SnapshotApi {
    private PendingResult<BeaconStateResult> zza(GoogleApiClient googleApiClient, ArrayList<zzvx.zzb> arrayList) {
        return new zzce<BeaconStateResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, GamesActivityResultCodes.RESULT_LICENSE_FAILED, arrayList))) { // from class: com.google.android.gms.internal.zzwl.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            /* renamed from: zzg */
            public BeaconStateResult zza(final zzwp zzwpVar) {
                return new BeaconStateResult(this) { // from class: com.google.android.gms.internal.zzwl.7.1
                    @Override // com.google.android.gms.awareness.snapshot.BeaconStateResult
                    public BeaconState getBeaconState() {
                        if (zzwpVar.zzsb() == null) {
                            return null;
                        }
                        return zzwpVar.zzsb().zzrR();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }
                };
            }
        };
    }

    private static zzafm.zzb zza(GoogleApiClient googleApiClient, final int i) {
        return new zzafm.zzb(googleApiClient) { // from class: com.google.android.gms.internal.zzwl.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzafn zzafnVar) throws RemoteException {
                zzafnVar.zza(this, new zzwn(i, null));
            }
        };
    }

    private static zzafm.zzb zza(GoogleApiClient googleApiClient, final int i, final ArrayList<zzvx.zzb> arrayList) {
        return new zzafm.zzb(googleApiClient) { // from class: com.google.android.gms.internal.zzwl.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzafn zzafnVar) throws RemoteException {
                zzafnVar.zza(this, new zzwn(i, arrayList));
            }
        };
    }

    private static ArrayList<zzvx.zzb> zza(BeaconState.TypeFilter... typeFilterArr) {
        com.google.android.gms.common.internal.zzac.zzb(typeFilterArr, "beaconTypes cannot be null");
        com.google.android.gms.common.internal.zzac.zzb(typeFilterArr.length > 0, "beaconTypes must not be empty");
        ArrayList<zzvx.zzb> arrayList = new ArrayList<>();
        for (BeaconState.TypeFilter typeFilter : typeFilterArr) {
            arrayList.add((zzvx.zzb) typeFilter);
        }
        return arrayList;
    }

    private static ArrayList<zzvx.zzb> zze(Collection<BeaconState.TypeFilter> collection) {
        com.google.android.gms.common.internal.zzac.zzb(collection, "beaconTypes cannot be null");
        com.google.android.gms.common.internal.zzac.zzb(collection.size() > 0, "beaconTypes must not be empty");
        ArrayList<zzvx.zzb> arrayList = new ArrayList<>();
        Iterator<BeaconState.TypeFilter> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((zzvx.zzb) it.next());
        }
        return arrayList;
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, Collection<BeaconState.TypeFilter> collection) {
        return zza(googleApiClient, zze(collection));
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, BeaconState.TypeFilter... typeFilterArr) {
        return zza(googleApiClient, zza(typeFilterArr));
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<DetectedActivityResult> getDetectedActivity(GoogleApiClient googleApiClient) {
        return new zzce<DetectedActivityResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_SIGN_IN_FAILED))) { // from class: com.google.android.gms.internal.zzwl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            /* renamed from: zzb */
            public DetectedActivityResult zza(final zzwp zzwpVar) {
                return new DetectedActivityResult(this) { // from class: com.google.android.gms.internal.zzwl.2.1
                    @Override // com.google.android.gms.awareness.snapshot.DetectedActivityResult
                    public ActivityRecognitionResult getActivityRecognitionResult() {
                        if (zzwpVar.zzsb() == null) {
                            return null;
                        }
                        return zzwpVar.zzsb().getActivityRecognitionResult();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<HeadphoneStateResult> getHeadphoneState(GoogleApiClient googleApiClient) {
        return new zzce<HeadphoneStateResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_APP_MISCONFIGURED))) { // from class: com.google.android.gms.internal.zzwl.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            /* renamed from: zzc */
            public HeadphoneStateResult zza(final zzwp zzwpVar) {
                return new HeadphoneStateResult(this) { // from class: com.google.android.gms.internal.zzwl.3.1
                    @Override // com.google.android.gms.awareness.snapshot.HeadphoneStateResult
                    public HeadphoneState getHeadphoneState() {
                        if (zzwpVar.zzsb() == null) {
                            return null;
                        }
                        return zzwpVar.zzsb().zzrS();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<LocationResult> getLocation(GoogleApiClient googleApiClient) {
        return new zzce<LocationResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_LEFT_ROOM))) { // from class: com.google.android.gms.internal.zzwl.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            /* renamed from: zzd */
            public LocationResult zza(final zzwp zzwpVar) {
                return new LocationResult(this) { // from class: com.google.android.gms.internal.zzwl.4.1
                    @Override // com.google.android.gms.awareness.snapshot.LocationResult
                    public Location getLocation() {
                        if (zzwpVar.zzsb() == null) {
                            return null;
                        }
                        return zzwpVar.zzsb().getLocation();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<PlacesResult> getPlaces(GoogleApiClient googleApiClient) {
        return new zzce<PlacesResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_NETWORK_FAILURE))) { // from class: com.google.android.gms.internal.zzwl.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            /* renamed from: zze */
            public PlacesResult zza(final zzwp zzwpVar) {
                return new PlacesResult(this) { // from class: com.google.android.gms.internal.zzwl.5.1
                    private boolean zzamw = false;
                    private List<PlaceLikelihood> zzamx = null;

                    @Override // com.google.android.gms.awareness.snapshot.PlacesResult
                    public List<PlaceLikelihood> getPlaceLikelihoods() {
                        DataHolder zzrU;
                        if (this.zzamw) {
                            return this.zzamx;
                        }
                        this.zzamw = true;
                        if (zzwpVar.zzsb() == null || (zzrU = zzwpVar.zzsb().zzrU()) == null) {
                            return null;
                        }
                        zzwe zzweVar = new zzwe(zzrU);
                        try {
                            if (zzweVar.getCount() <= 0) {
                                return null;
                            }
                            this.zzamx = ((zzwd) ((SafeParcelable) zzweVar.mo547get(0))).getPlaceLikelihoods();
                            return this.zzamx;
                        } finally {
                            zzweVar.release();
                        }
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<TimeIntervalsResult> getTimeIntervals(GoogleApiClient googleApiClient) {
        return new zzce<TimeIntervalsResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_INVALID_ROOM))) { // from class: com.google.android.gms.internal.zzwl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            public TimeIntervalsResult zza(final zzwp zzwpVar) {
                return new TimeIntervalsResult(this) { // from class: com.google.android.gms.internal.zzwl.1.1
                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }

                    @Override // com.google.android.gms.awareness.snapshot.TimeIntervalsResult
                    public TimeIntervals getTimeIntervals() {
                        if (zzwpVar.zzsb() == null) {
                            return null;
                        }
                        return zzwpVar.zzsb().zzrY();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<WeatherResult> getWeather(GoogleApiClient googleApiClient) {
        return new zzce<WeatherResult, zzwp>(this, googleApiClient.zza((GoogleApiClient) zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED))) { // from class: com.google.android.gms.internal.zzwl.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzce
            /* renamed from: zzf */
            public WeatherResult zza(final zzwp zzwpVar) {
                return new WeatherResult(this) { // from class: com.google.android.gms.internal.zzwl.6.1
                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzwpVar.getStatus();
                    }

                    @Override // com.google.android.gms.awareness.snapshot.WeatherResult
                    public Weather getWeather() {
                        if (zzwpVar.zzsb() == null) {
                            return null;
                        }
                        return zzwpVar.zzsb().zzrX();
                    }
                };
            }
        };
    }
}
