package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.internal.zzi;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzn extends com.google.android.gms.common.internal.zzl<zzi> {
    private final Locale zzblU;
    private final zzz zzbmo;

    /* loaded from: classes2.dex */
    public static class zza extends Api.zza<zzn, PlacesOptions> {
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzb */
        public zzn zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, PlacesOptions placesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            PlacesOptions build = placesOptions == null ? new PlacesOptions.Builder().build() : placesOptions;
            String packageName = context.getPackageName();
            if (build.zzblR != null) {
                packageName = build.zzblR;
            }
            return new zzn(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener, packageName, build);
        }
    }

    private zzn(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, PlacesOptions placesOptions) {
        super(context, looper, 67, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzblU = Locale.getDefault();
        this.zzbmo = new zzz(str, this.zzblU, zzgVar.getAccount() != null ? zzgVar.getAccount().name : null, placesOptions.zzblS, placesOptions.zzblT);
    }

    public void zza(com.google.android.gms.location.places.zzo zzoVar, PlaceFilter placeFilter) throws RemoteException {
        if (placeFilter == null) {
            placeFilter = PlaceFilter.zzIF();
        }
        ((zzi) zzxD()).zza(placeFilter, this.zzbmo, zzoVar);
    }

    public void zza(com.google.android.gms.location.places.zzo zzoVar, PlaceReport placeReport) throws RemoteException {
        com.google.android.gms.common.internal.zzac.zzw(placeReport);
        ((zzi) zzxD()).zza(placeReport, this.zzbmo, zzoVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzdp */
    public zzi zzh(IBinder iBinder) {
        return zzi.zza.zzdl(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.location.places.PlaceDetectionApi";
    }
}
