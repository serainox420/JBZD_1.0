package com.google.android.gms.fitness;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.result.DataTypeResult;
/* loaded from: classes2.dex */
public interface ConfigApi {
    PendingResult<DataTypeResult> createCustomDataType(GoogleApiClient googleApiClient, DataTypeCreateRequest dataTypeCreateRequest);

    PendingResult<Status> disableFit(GoogleApiClient googleApiClient);

    PendingResult<DataTypeResult> readDataType(GoogleApiClient googleApiClient, String str);
}
