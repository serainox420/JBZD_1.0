package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzcb implements NodeApi {

    /* loaded from: classes2.dex */
    public static class zza implements NodeApi.GetConnectedNodesResult {
        private final Status zzair;
        private final List<Node> zzbUL;

        public zza(Status status, List<Node> list) {
            this.zzair = status;
            this.zzbUL = list;
        }

        @Override // com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult
        public List<Node> getNodes() {
            return this.zzbUL;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements NodeApi.GetLocalNodeResult {
        private final Status zzair;
        private final Node zzbUM;

        public zzb(Status status, Node node) {
            this.zzair = status;
            this.zzbUM = node;
        }

        @Override // com.google.android.gms.wearable.NodeApi.GetLocalNodeResult
        public Node getNode() {
            return this.zzbUM;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    private static zzb.zza<NodeApi.NodeListener> zza(final IntentFilter[] intentFilterArr) {
        return new zzb.zza<NodeApi.NodeListener>() { // from class: com.google.android.gms.wearable.internal.zzcb.3
            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public void zza2(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, NodeApi.NodeListener nodeListener, zzabh<NodeApi.NodeListener> zzabhVar) throws RemoteException {
                zzcxVar.zza(zzbVar, nodeListener, zzabhVar, intentFilterArr);
            }

            @Override // com.google.android.gms.wearable.internal.zzb.zza
            public /* bridge */ /* synthetic */ void zza(zzcx zzcxVar, zzaad.zzb zzbVar, NodeApi.NodeListener nodeListener, zzabh<NodeApi.NodeListener> zzabhVar) throws RemoteException {
                zza2(zzcxVar, (zzaad.zzb<Status>) zzbVar, nodeListener, zzabhVar);
            }
        };
    }

    @Override // com.google.android.gms.wearable.NodeApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, NodeApi.NodeListener nodeListener) {
        return com.google.android.gms.wearable.internal.zzb.zza(googleApiClient, zza(new IntentFilter[]{zzcv.zzip("com.google.android.gms.wearable.NODE_CHANGED")}), nodeListener);
    }

    @Override // com.google.android.gms.wearable.NodeApi
    public PendingResult<NodeApi.GetConnectedNodesResult> getConnectedNodes(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzm<NodeApi.GetConnectedNodesResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzcb.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzy(this);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzcc */
            public NodeApi.GetConnectedNodesResult zzc(Status status) {
                return new zza(status, new ArrayList());
            }
        });
    }

    @Override // com.google.android.gms.wearable.NodeApi
    public PendingResult<NodeApi.GetLocalNodeResult> getLocalNode(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzm<NodeApi.GetLocalNodeResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzcb.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzx(this);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzcb */
            public NodeApi.GetLocalNodeResult zzc(Status status) {
                return new zzb(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.NodeApi
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, final NodeApi.NodeListener nodeListener) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzcb.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, nodeListener);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }
}
