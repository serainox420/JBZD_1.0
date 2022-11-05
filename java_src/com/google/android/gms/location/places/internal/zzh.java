package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.internal.zzj;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzh extends com.google.android.gms.common.internal.zzl<zzj> {
    private final zzz zzbmo;

    /* loaded from: classes2.dex */
    public static class zza extends Api.zza<zzh, PlacesOptions> {
        @Override // com.google.android.gms.common.api.Api.zza
        public zzh zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, PlacesOptions placesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            PlacesOptions build = placesOptions == null ? new PlacesOptions.Builder().build() : placesOptions;
            String packageName = context.getPackageName();
            if (build.zzblR != null) {
                packageName = build.zzblR;
            }
            return new zzh(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener, packageName, build);
        }
    }

    private zzh(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, PlacesOptions placesOptions) {
        super(context, looper, 65, zzgVar, connectionCallbacks, onConnectionFailedListener);
        Locale locale = Locale.getDefault();
        if (placesOptions != null && placesOptions.getLocale() != null) {
            locale = placesOptions.getLocale();
        }
        String str2 = null;
        if (placesOptions != null && placesOptions.getAccountName() != null) {
            str2 = placesOptions.getAccountName();
        } else if (zzgVar.getAccount() != null) {
            str2 = zzgVar.getAccount().name;
        }
        this.zzbmo = new zzz(str, locale, str2, placesOptions.zzblS, placesOptions.zzblT);
    }

    public void zza(com.google.android.gms.location.places.zzh zzhVar, String str) throws RemoteException {
        com.google.android.gms.common.internal.zzac.zzb(str, "placeId cannot be null");
        ((zzj) zzxD()).zza(str, this.zzbmo, zzhVar);
    }

    public void zza(com.google.android.gms.location.places.zzh zzhVar, String str, int i, int i2, int i3) throws RemoteException {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzb(str, "fifeUrl cannot be null");
        com.google.android.gms.common.internal.zzac.zzb(i > 0, "width should be > 0");
        if (i <= 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzb(z, "height should be > 0");
        ((zzj) zzxD()).zza(str, i, i2, i3, this.zzbmo, zzhVar);
    }

    public void zza(com.google.android.gms.location.places.zzo zzoVar, AddPlaceRequest addPlaceRequest) throws RemoteException {
        com.google.android.gms.common.internal.zzac.zzb(addPlaceRequest, "userAddedPlace == null");
        ((zzj) zzxD()).zza(addPlaceRequest, this.zzbmo, zzoVar);
    }

    public void zza(com.google.android.gms.location.places.zzo zzoVar, String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter) throws RemoteException {
        com.google.android.gms.common.internal.zzac.zzb(zzoVar, "callback == null");
        ((zzj) zzxD()).zza(str == null ? "" : str, latLngBounds, autocompleteFilter == null ? new AutocompleteFilter.Builder().build() : autocompleteFilter, this.zzbmo, zzoVar);
    }

    public void zza(com.google.android.gms.location.places.zzo zzoVar, List<String> list) throws RemoteException {
        ((zzj) zzxD()).zzb(list, this.zzbmo, zzoVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzdk */
    public zzj zzh(IBinder iBinder) {
        return zzj.zza.zzdm(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.location.places.internal.IGooglePlacesService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.location.places.GeoDataApi";
    }
}
