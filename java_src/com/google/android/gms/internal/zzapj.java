package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.result.BleDevicesResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaod;
import com.google.android.gms.internal.zzapt;
/* loaded from: classes2.dex */
public class zzapj implements BleApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzapt.zza {
        private final zzaad.zzb<BleDevicesResult> zzaGN;

        private zza(zzaad.zzb<BleDevicesResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzapt
        public void zza(BleDevicesResult bleDevicesResult) {
            this.zzaGN.setResult(bleDevicesResult);
        }
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, final BleDevice bleDevice) {
        return googleApiClient.zzb((GoogleApiClient) new zzaod.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapj.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaod zzaodVar) throws RemoteException {
                ((zzaos) zzaodVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzb(bleDevice.getAddress(), bleDevice, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new zzaod.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapj.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaod zzaodVar) throws RemoteException {
                ((zzaos) zzaodVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzb(str, null, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<BleDevicesResult> listClaimedBleDevices(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzaod.zza<BleDevicesResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapj.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzU */
            public BleDevicesResult zzc(Status status) {
                return BleDevicesResult.zzad(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaod zzaodVar) throws RemoteException {
                ((zzaos) zzaodVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzak(new zza(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> startBleScan(GoogleApiClient googleApiClient, final StartBleScanRequest startBleScanRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaod.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapj.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaod zzaodVar) throws RemoteException {
                ((zzaos) zzaodVar.zzxD()).zza(new StartBleScanRequest(startBleScanRequest, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> stopBleScan(GoogleApiClient googleApiClient, final BleScanCallback bleScanCallback) {
        return googleApiClient.zza((GoogleApiClient) new zzaod.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapj.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaod zzaodVar) throws RemoteException {
                ((zzaos) zzaodVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbk(bleScanCallback, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, BleDevice bleDevice) {
        return unclaimBleDevice(googleApiClient, bleDevice.getAddress());
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new zzaod.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapj.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaod zzaodVar) throws RemoteException {
                ((zzaos) zzaodVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbo(str, new zzapr(this)));
            }
        });
    }
}
