package com.google.android.gms.location.places;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.internal.zzk;
import com.google.android.gms.location.places.zzo;
/* loaded from: classes2.dex */
public class zzh extends zzk.zza {
    private final zzb zzbls;
    private final zza zzblt;

    /* loaded from: classes2.dex */
    public static abstract class zza<A extends Api.zze> extends zzo.zzb<PlacePhotoResult, A> {
        public zza(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbq */
        public PlacePhotoResult zzc(Status status) {
            return new PlacePhotoResult(status, null);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzb<A extends Api.zze> extends zzo.zzb<PlacePhotoMetadataResult, A> {
        public zzb(Api api, GoogleApiClient googleApiClient) {
            super(api, googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbr */
        public PlacePhotoMetadataResult zzc(Status status) {
            return new PlacePhotoMetadataResult(status, null);
        }
    }

    public zzh(zza zzaVar) {
        this.zzbls = null;
        this.zzblt = zzaVar;
    }

    public zzh(zzb zzbVar) {
        this.zzbls = zzbVar;
        this.zzblt = null;
    }

    @Override // com.google.android.gms.location.places.internal.zzk
    public void zza(PlacePhotoMetadataResult placePhotoMetadataResult) throws RemoteException {
        this.zzbls.zzb((zzb) placePhotoMetadataResult);
    }

    @Override // com.google.android.gms.location.places.internal.zzk
    public void zza(PlacePhotoResult placePhotoResult) throws RemoteException {
        this.zzblt.zzb((zza) placePhotoResult);
    }
}
