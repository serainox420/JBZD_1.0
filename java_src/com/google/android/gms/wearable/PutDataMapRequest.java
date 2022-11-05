package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzblc;
import com.google.android.gms.internal.zzbxt;
/* loaded from: classes2.dex */
public class PutDataMapRequest {
    private final DataMap zzbST = new DataMap();
    private final PutDataRequest zzbSU;

    private PutDataMapRequest(PutDataRequest putDataRequest, DataMap dataMap) {
        this.zzbSU = putDataRequest;
        if (dataMap != null) {
            this.zzbST.putAll(dataMap);
        }
    }

    public static PutDataMapRequest create(String str) {
        return new PutDataMapRequest(PutDataRequest.create(str), null);
    }

    public static PutDataMapRequest createFromDataMapItem(DataMapItem dataMapItem) {
        return new PutDataMapRequest(PutDataRequest.zzy(dataMapItem.getUri()), dataMapItem.getDataMap());
    }

    public static PutDataMapRequest createWithAutoAppendedId(String str) {
        return new PutDataMapRequest(PutDataRequest.createWithAutoAppendedId(str), null);
    }

    public PutDataRequest asPutDataRequest() {
        zzblc.zza zza = zzblc.zza(this.zzbST);
        this.zzbSU.setData(zzbxt.zzf(zza.zzbVs));
        int size = zza.zzbVt.size();
        for (int i = 0; i < size; i++) {
            String num = Integer.toString(i);
            Asset asset = zza.zzbVt.get(i);
            if (num == null) {
                String valueOf = String.valueOf(asset);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 26).append("asset key cannot be null: ").append(valueOf).toString());
            } else if (asset == null) {
                String valueOf2 = String.valueOf(num);
                throw new IllegalStateException(valueOf2.length() != 0 ? "asset cannot be null: key=".concat(valueOf2) : new String("asset cannot be null: key="));
            } else {
                if (Log.isLoggable(DataMap.TAG, 3)) {
                    String valueOf3 = String.valueOf(asset);
                    Log.d(DataMap.TAG, new StringBuilder(String.valueOf(num).length() + 33 + String.valueOf(valueOf3).length()).append("asPutDataRequest: adding asset: ").append(num).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf3).toString());
                }
                this.zzbSU.putAsset(num, asset);
            }
        }
        return this.zzbSU;
    }

    public DataMap getDataMap() {
        return this.zzbST;
    }

    public Uri getUri() {
        return this.zzbSU.getUri();
    }

    public boolean isUrgent() {
        return this.zzbSU.isUrgent();
    }

    public PutDataMapRequest setUrgent() {
        this.zzbSU.setUrgent();
        return this;
    }
}
