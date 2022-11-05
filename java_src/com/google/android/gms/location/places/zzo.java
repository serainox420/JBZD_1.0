package com.google.android.gms.location.places;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzasy;
import com.google.android.gms.location.places.internal.zzl;
/* loaded from: classes2.dex */
public class zzo extends zzl.zza {
    private static final String TAG = zzo.class.getSimpleName();
    private final zzd zzblM;
    private final zza zzblN;
    private final zze zzblO;
    private final zzf zzblP;
    private final zzc zzblQ;

    /* loaded from: classes2.dex */
    public static abstract class zza<A extends Api.zze> extends zzb<AutocompletePredictionBuffer, A> {
        public zza(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbt */
        public AutocompletePredictionBuffer zzc(Status status) {
            return new AutocompletePredictionBuffer(DataHolder.zzcJ(status.getStatusCode()));
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzb<R extends Result, A extends Api.zze> extends zzaad.zza<R, A> {
        public zzb(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb<R, A>) ((Result) obj));
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzc<A extends Api.zze> extends zzb<PlaceBuffer, A> {
        public zzc(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbu */
        public PlaceBuffer zzc(Status status) {
            return new PlaceBuffer(DataHolder.zzcJ(status.getStatusCode()));
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzd<A extends Api.zze> extends zzb<PlaceLikelihoodBuffer, A> {
        public zzd(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbv */
        public PlaceLikelihoodBuffer zzc(Status status) {
            return new PlaceLikelihoodBuffer(DataHolder.zzcJ(status.getStatusCode()), 100);
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class zze<A extends Api.zze> extends zzb<zzasy, A> {
    }

    /* loaded from: classes2.dex */
    public static abstract class zzf<A extends Api.zze> extends zzb<Status, A> {
        public zzf(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    public zzo(zza zzaVar) {
        this.zzblM = null;
        this.zzblN = zzaVar;
        this.zzblO = null;
        this.zzblP = null;
        this.zzblQ = null;
    }

    public zzo(zzc zzcVar) {
        this.zzblM = null;
        this.zzblN = null;
        this.zzblO = null;
        this.zzblP = null;
        this.zzblQ = zzcVar;
    }

    public zzo(zzd zzdVar) {
        this.zzblM = zzdVar;
        this.zzblN = null;
        this.zzblO = null;
        this.zzblP = null;
        this.zzblQ = null;
    }

    public zzo(zzf zzfVar) {
        this.zzblM = null;
        this.zzblN = null;
        this.zzblO = null;
        this.zzblP = zzfVar;
        this.zzblQ = null;
    }

    @Override // com.google.android.gms.location.places.internal.zzl
    public void zzam(DataHolder dataHolder) throws RemoteException {
        zzac.zza(this.zzblM != null, "placeEstimator cannot be null");
        if (dataHolder != null) {
            Bundle zzxf = dataHolder.zzxf();
            this.zzblM.zzb((zzd) new PlaceLikelihoodBuffer(dataHolder, zzxf == null ? 100 : PlaceLikelihoodBuffer.zzL(zzxf)));
            return;
        }
        if (Log.isLoggable(TAG, 6)) {
            Log.e(TAG, "onPlaceEstimated received null DataHolder", new Throwable());
        }
        this.zzblM.zzB(Status.zzazz);
    }

    @Override // com.google.android.gms.location.places.internal.zzl
    public void zzan(DataHolder dataHolder) throws RemoteException {
        if (dataHolder != null) {
            this.zzblN.zzb((zza) new AutocompletePredictionBuffer(dataHolder));
            return;
        }
        if (Log.isLoggable(TAG, 6)) {
            Log.e(TAG, "onAutocompletePrediction received null DataHolder", new Throwable());
        }
        this.zzblN.zzB(Status.zzazz);
    }

    @Override // com.google.android.gms.location.places.internal.zzl
    public void zzao(DataHolder dataHolder) throws RemoteException {
        Cast.CastApi.zza.AnonymousClass7 anonymousClass7 = null;
        if (dataHolder != null) {
            anonymousClass7.zzb((Cast.CastApi.zza.AnonymousClass7) new zzasy(dataHolder));
            return;
        }
        if (Log.isLoggable(TAG, 6)) {
            Log.e(TAG, "onPlaceUserDataFetched received null DataHolder", new Throwable());
        }
        anonymousClass7.zzB(Status.zzazz);
    }

    @Override // com.google.android.gms.location.places.internal.zzl
    public void zzap(DataHolder dataHolder) throws RemoteException {
        this.zzblQ.zzb((zzc) new PlaceBuffer(dataHolder));
    }

    @Override // com.google.android.gms.location.places.internal.zzl
    public void zzbs(Status status) throws RemoteException {
        this.zzblP.zzb((zzf) status);
    }
}
