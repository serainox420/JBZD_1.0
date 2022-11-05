package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.BleApi;
import com.google.android.gms.fitness.FitnessStatusCodes;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.result.BleDevicesResult;
/* loaded from: classes2.dex */
public class zzaps implements BleApi {
    private static final Status zzaVm = new Status(FitnessStatusCodes.UNSUPPORTED_PLATFORM);

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, BleDevice bleDevice) {
        return PendingResults.zza(zzaVm, googleApiClient);
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> claimBleDevice(GoogleApiClient googleApiClient, String str) {
        return PendingResults.zza(zzaVm, googleApiClient);
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<BleDevicesResult> listClaimedBleDevices(GoogleApiClient googleApiClient) {
        return PendingResults.zza(BleDevicesResult.zzad(zzaVm), googleApiClient);
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> startBleScan(GoogleApiClient googleApiClient, StartBleScanRequest startBleScanRequest) {
        return PendingResults.zza(zzaVm, googleApiClient);
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> stopBleScan(GoogleApiClient googleApiClient, BleScanCallback bleScanCallback) {
        return PendingResults.zza(zzaVm, googleApiClient);
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, BleDevice bleDevice) {
        return PendingResults.zza(zzaVm, googleApiClient);
    }

    @Override // com.google.android.gms.fitness.BleApi
    public PendingResult<Status> unclaimBleDevice(GoogleApiClient googleApiClient, String str) {
        return PendingResults.zza(zzaVm, googleApiClient);
    }
}
