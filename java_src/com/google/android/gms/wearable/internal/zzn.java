package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.CapabilityInfo;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.internal.zzb;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzn implements CapabilityApi {

    /* loaded from: classes2.dex */
    public static class zza implements CapabilityApi.AddLocalCapabilityResult, CapabilityApi.RemoveLocalCapabilityResult {
        private final Status zzair;

        public zza(Status status) {
            this.zzair = status;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb implements CapabilityApi.CapabilityListener {
        final CapabilityApi.CapabilityListener zzbTL;
        final String zzbTM;

        zzb(CapabilityApi.CapabilityListener capabilityListener, String str) {
            this.zzbTL = capabilityListener;
            this.zzbTM = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (!this.zzbTL.equals(zzbVar.zzbTL)) {
                return false;
            }
            return this.zzbTM.equals(zzbVar.zzbTM);
        }

        public int hashCode() {
            return (this.zzbTL.hashCode() * 31) + this.zzbTM.hashCode();
        }

        @Override // com.google.android.gms.wearable.CapabilityApi.CapabilityListener
        public void onCapabilityChanged(CapabilityInfo capabilityInfo) {
            this.zzbTL.onCapabilityChanged(capabilityInfo);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc implements CapabilityInfo {
        private final String mName;
        private final Set<Node> zzbTN;

        public zzc(CapabilityInfo capabilityInfo) {
            this(capabilityInfo.getName(), capabilityInfo.getNodes());
        }

        public zzc(String str, Set<Node> set) {
            this.mName = str;
            this.zzbTN = set;
        }

        @Override // com.google.android.gms.wearable.CapabilityInfo
        public String getName() {
            return this.mName;
        }

        @Override // com.google.android.gms.wearable.CapabilityInfo
        public Set<Node> getNodes() {
            return this.zzbTN;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd implements CapabilityApi.GetAllCapabilitiesResult {
        private final Status zzair;
        private final Map<String, CapabilityInfo> zzbTO;

        public zzd(Status status, Map<String, CapabilityInfo> map) {
            this.zzair = status;
            this.zzbTO = map;
        }

        @Override // com.google.android.gms.wearable.CapabilityApi.GetAllCapabilitiesResult
        public Map<String, CapabilityInfo> getAllCapabilities() {
            return this.zzbTO;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    public static class zze implements CapabilityApi.GetCapabilityResult {
        private final Status zzair;
        private final CapabilityInfo zzbTP;

        public zze(Status status, CapabilityInfo capabilityInfo) {
            this.zzair = status;
            this.zzbTP = capabilityInfo;
        }

        @Override // com.google.android.gms.wearable.CapabilityApi.GetCapabilityResult
        public CapabilityInfo getCapability() {
            return this.zzbTP;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzf extends zzm<Status> {
        private CapabilityApi.CapabilityListener zzbTL;

        private zzf(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener) {
            super(googleApiClient);
            this.zzbTL = capabilityListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzcx zzcxVar) throws RemoteException {
            zzcxVar.zza(this, this.zzbTL);
            this.zzbTL = null;
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            this.zzbTL = null;
            return status;
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, IntentFilter[] intentFilterArr) {
        return com.google.android.gms.wearable.internal.zzb.zza(googleApiClient, zza(intentFilterArr), capabilityListener);
    }

    private static zzb.zza<CapabilityApi.CapabilityListener> zza(final IntentFilter[] intentFilterArr) {
        return new zzb.zza<CapabilityApi.CapabilityListener>() { // from class: com.google.android.gms.wearable.internal.zzn.5
            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public void zza2(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, CapabilityApi.CapabilityListener capabilityListener, zzabh<CapabilityApi.CapabilityListener> zzabhVar) throws RemoteException {
                zzcxVar.zza(zzbVar, capabilityListener, zzabhVar, intentFilterArr);
            }

            @Override // com.google.android.gms.wearable.internal.zzb.zza
            public /* bridge */ /* synthetic */ void zza(zzcx zzcxVar, zzaad.zzb zzbVar, CapabilityApi.CapabilityListener capabilityListener, zzabh<CapabilityApi.CapabilityListener> zzabhVar) throws RemoteException {
                zza2(zzcxVar, (zzaad.zzb<Status>) zzbVar, capabilityListener, zzabhVar);
            }
        };
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<Status> addCapabilityListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, String str) {
        String str2;
        com.google.android.gms.common.internal.zzac.zzb(str != null, "capability must not be null");
        zzb zzbVar = new zzb(capabilityListener, str);
        IntentFilter zzip = zzcv.zzip(CapabilityApi.ACTION_CAPABILITY_CHANGED);
        if (!str.startsWith("/")) {
            String valueOf = String.valueOf(str);
            str2 = valueOf.length() != 0 ? "/".concat(valueOf) : new String("/");
        } else {
            str2 = str;
        }
        zzip.addDataPath(str2, 0);
        return zza(googleApiClient, zzbVar, new IntentFilter[]{zzip});
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, Uri uri, int i) {
        com.google.android.gms.common.internal.zzac.zzb(uri != null, "uri must not be null");
        com.google.android.gms.common.internal.zzac.zzb(i == 0 || i == 1, "invalid filter type");
        return zza(googleApiClient, capabilityListener, new IntentFilter[]{zzcv.zza(CapabilityApi.ACTION_CAPABILITY_CHANGED, uri, i)});
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<CapabilityApi.AddLocalCapabilityResult> addLocalCapability(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zzm<CapabilityApi.AddLocalCapabilityResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzn.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzv(this, str);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbR */
            public CapabilityApi.AddLocalCapabilityResult zzc(Status status) {
                return new zza(status);
            }
        });
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<CapabilityApi.GetAllCapabilitiesResult> getAllCapabilities(GoogleApiClient googleApiClient, final int i) {
        boolean z = true;
        if (i != 0 && i != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return googleApiClient.zza((GoogleApiClient) new zzm<CapabilityApi.GetAllCapabilitiesResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzn.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzd(this, i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbQ */
            public CapabilityApi.GetAllCapabilitiesResult zzc(Status status) {
                return new zzd(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<CapabilityApi.GetCapabilityResult> getCapability(GoogleApiClient googleApiClient, final String str, final int i) {
        boolean z = true;
        if (i != 0 && i != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return googleApiClient.zza((GoogleApiClient) new zzm<CapabilityApi.GetCapabilityResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzn.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzh(this, str, i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbP */
            public CapabilityApi.GetCapabilityResult zzc(Status status) {
                return new zze(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<Status> removeCapabilityListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, String str) {
        return googleApiClient.zza((GoogleApiClient) new zzf(googleApiClient, new zzb(capabilityListener, str)));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener) {
        return googleApiClient.zza((GoogleApiClient) new zzf(googleApiClient, capabilityListener));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public PendingResult<CapabilityApi.RemoveLocalCapabilityResult> removeLocalCapability(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zzm<CapabilityApi.RemoveLocalCapabilityResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzn.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzw(this, str);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbS */
            public CapabilityApi.RemoveLocalCapabilityResult zzc(Status status) {
                return new zza(status);
            }
        });
    }
}
