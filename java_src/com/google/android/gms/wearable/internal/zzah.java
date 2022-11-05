package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.zzb;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class zzah implements DataApi {

    /* loaded from: classes2.dex */
    public static class zza implements DataApi.DataItemResult {
        private final Status zzair;
        private final DataItem zzbUo;

        public zza(Status status, DataItem dataItem) {
            this.zzair = status;
            this.zzbUo = dataItem;
        }

        @Override // com.google.android.gms.wearable.DataApi.DataItemResult
        public DataItem getDataItem() {
            return this.zzbUo;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements DataApi.DeleteDataItemsResult {
        private final Status zzair;
        private final int zzbUp;

        public zzb(Status status, int i) {
            this.zzair = status;
            this.zzbUp = i;
        }

        @Override // com.google.android.gms.wearable.DataApi.DeleteDataItemsResult
        public int getNumDeleted() {
            return this.zzbUp;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc implements DataApi.GetFdForAssetResult {
        private volatile boolean mClosed = false;
        private final Status zzair;
        private volatile InputStream zzbUb;
        private volatile ParcelFileDescriptor zzbUq;

        public zzc(Status status, ParcelFileDescriptor parcelFileDescriptor) {
            this.zzair = status;
            this.zzbUq = parcelFileDescriptor;
        }

        @Override // com.google.android.gms.wearable.DataApi.GetFdForAssetResult
        public ParcelFileDescriptor getFd() {
            if (this.mClosed) {
                throw new IllegalStateException("Cannot access the file descriptor after release().");
            }
            return this.zzbUq;
        }

        @Override // com.google.android.gms.wearable.DataApi.GetFdForAssetResult
        public InputStream getInputStream() {
            if (this.mClosed) {
                throw new IllegalStateException("Cannot access the input stream after release().");
            }
            if (this.zzbUq == null) {
                return null;
            }
            if (this.zzbUb == null) {
                this.zzbUb = new ParcelFileDescriptor.AutoCloseInputStream(this.zzbUq);
            }
            return this.zzbUb;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.zzbUq == null) {
                return;
            }
            if (this.mClosed) {
                throw new IllegalStateException("releasing an already released result.");
            }
            try {
                if (this.zzbUb != null) {
                    this.zzbUb.close();
                } else {
                    this.zzbUq.close();
                }
                this.mClosed = true;
                this.zzbUq = null;
                this.zzbUb = null;
            } catch (IOException e) {
            }
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, DataApi.DataListener dataListener, IntentFilter[] intentFilterArr) {
        return com.google.android.gms.wearable.internal.zzb.zza(googleApiClient, zza(intentFilterArr), dataListener);
    }

    private static zzb.zza<DataApi.DataListener> zza(final IntentFilter[] intentFilterArr) {
        return new zzb.zza<DataApi.DataListener>() { // from class: com.google.android.gms.wearable.internal.zzah.8
            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public void zza2(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, DataApi.DataListener dataListener, zzabh<DataApi.DataListener> zzabhVar) throws RemoteException {
                zzcxVar.zza(zzbVar, dataListener, zzabhVar, intentFilterArr);
            }

            @Override // com.google.android.gms.wearable.internal.zzb.zza
            public /* bridge */ /* synthetic */ void zza(zzcx zzcxVar, zzaad.zzb zzbVar, DataApi.DataListener dataListener, zzabh<DataApi.DataListener> zzabhVar) throws RemoteException {
                zza2(zzcxVar, (zzaad.zzb<Status>) zzbVar, dataListener, zzabhVar);
            }
        };
    }

    private void zza(Asset asset) {
        if (asset == null) {
            throw new IllegalArgumentException("asset is null");
        }
        if (asset.getDigest() == null) {
            throw new IllegalArgumentException("invalid asset");
        }
        if (asset.getData() == null) {
            return;
        }
        throw new IllegalArgumentException("invalid asset");
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, DataApi.DataListener dataListener) {
        return zza(googleApiClient, dataListener, new IntentFilter[]{zzcv.zzip(DataApi.ACTION_DATA_CHANGED)});
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, DataApi.DataListener dataListener, Uri uri, int i) {
        com.google.android.gms.common.internal.zzac.zzb(uri != null, "uri must not be null");
        com.google.android.gms.common.internal.zzac.zzb(i == 0 || i == 1, "invalid filter type");
        return zza(googleApiClient, dataListener, new IntentFilter[]{zzcv.zza(DataApi.ACTION_DATA_CHANGED, uri, i)});
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataApi.DeleteDataItemsResult> deleteDataItems(GoogleApiClient googleApiClient, Uri uri) {
        return deleteDataItems(googleApiClient, uri, 0);
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataApi.DeleteDataItemsResult> deleteDataItems(GoogleApiClient googleApiClient, final Uri uri, final int i) {
        boolean z = false;
        com.google.android.gms.common.internal.zzac.zzb(uri != null, "uri must not be null");
        if (i == 0 || i == 1) {
            z = true;
        }
        com.google.android.gms.common.internal.zzac.zzb(z, "invalid filter type");
        return googleApiClient.zza((GoogleApiClient) new zzm<DataApi.DeleteDataItemsResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzb(this, uri, i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbY */
            public DataApi.DeleteDataItemsResult zzc(Status status) {
                return new zzb(status, 0);
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataApi.DataItemResult> getDataItem(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.zza((GoogleApiClient) new zzm<DataApi.DataItemResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, uri);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbW */
            public DataApi.DataItemResult zzc(Status status) {
                return new zza(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzm<DataItemBuffer>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzw(this);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbX */
            public DataItemBuffer zzc(Status status) {
                return new DataItemBuffer(DataHolder.zzcJ(status.getStatusCode()));
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient googleApiClient, Uri uri) {
        return getDataItems(googleApiClient, uri, 0);
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient googleApiClient, final Uri uri, final int i) {
        boolean z = false;
        com.google.android.gms.common.internal.zzac.zzb(uri != null, "uri must not be null");
        if (i == 0 || i == 1) {
            z = true;
        }
        com.google.android.gms.common.internal.zzac.zzb(z, "invalid filter type");
        return googleApiClient.zza((GoogleApiClient) new zzm<DataItemBuffer>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, uri, i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbX */
            public DataItemBuffer zzc(Status status) {
                return new DataItemBuffer(DataHolder.zzcJ(status.getStatusCode()));
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient googleApiClient, final Asset asset) {
        zza(asset);
        return googleApiClient.zza((GoogleApiClient) new zzm<DataApi.GetFdForAssetResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, asset);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbZ */
            public DataApi.GetFdForAssetResult zzc(Status status) {
                return new zzc(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient googleApiClient, final DataItemAsset dataItemAsset) {
        return googleApiClient.zza((GoogleApiClient) new zzm<DataApi.GetFdForAssetResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, dataItemAsset);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbZ */
            public DataApi.GetFdForAssetResult zzc(Status status) {
                return new zzc(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<DataApi.DataItemResult> putDataItem(GoogleApiClient googleApiClient, final PutDataRequest putDataRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzm<DataApi.DataItemResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, putDataRequest);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbW */
            public DataApi.DataItemResult zzc(Status status) {
                return new zza(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.DataApi
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, final DataApi.DataListener dataListener) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzah.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, dataListener);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }
}
