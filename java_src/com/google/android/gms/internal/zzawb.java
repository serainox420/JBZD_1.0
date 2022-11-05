package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzawf;
import com.google.android.gms.internal.zzawg;
import com.google.android.gms.internal.zzawh;
import com.google.android.gms.internal.zzawi;
import com.google.android.gms.internal.zzawk;
import com.google.android.gms.internal.zzawl;
import com.google.android.gms.internal.zzawm;
import com.google.android.gms.nearby.connection.Connections;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzawb extends com.google.android.gms.common.internal.zzl<zzawk> {
    private final long zzbyr;
    private final zzaxh zzbys;

    /* loaded from: classes2.dex */
    private static final class zza extends zzawf.zza {
        private final zzabh<Connections.ConnectionRequestListener> zzbyt;

        zza(zzabh<Connections.ConnectionRequestListener> zzabhVar) {
            this.zzbyt = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        }

        @Override // com.google.android.gms.internal.zzawf
        public void zza(final zzawn zzawnVar) {
            this.zzbyt.zza(new zze<Connections.ConnectionRequestListener>(this) { // from class: com.google.android.gms.internal.zzawb.zza.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.ConnectionRequestListener connectionRequestListener) {
                    connectionRequestListener.onConnectionRequest(zzawnVar.zzOf(), zzawnVar.zzOl(), zzawnVar.zzOg());
                }
            });
        }

        @Override // com.google.android.gms.internal.zzawf
        public void zza(final zzaxd zzaxdVar) {
            this.zzbyt.zza(new zze<Connections.ConnectionRequestListener>(this) { // from class: com.google.android.gms.internal.zzawb.zza.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.ConnectionRequestListener connectionRequestListener) {
                    zzaxdVar.getReason();
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb extends zzawg.zza {
        private final zzabh<Connections.zza> zzbyw;

        zzb(zzabh<Connections.zza> zzabhVar) {
            this.zzbyw = zzabhVar;
        }

        @Override // com.google.android.gms.internal.zzawg
        public void zza(final zzawr zzawrVar) {
            this.zzbyw.zza(new zze<Connections.zza>(this) { // from class: com.google.android.gms.internal.zzawb.zzb.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.zza zzaVar) {
                    zzaVar.onDisconnected(zzawrVar.zzOf());
                }
            });
        }

        @Override // com.google.android.gms.internal.zzawg
        public void zza(final zzawx zzawxVar) {
            this.zzbyw.zza(new zze<Connections.zza>(this) { // from class: com.google.android.gms.internal.zzawb.zzb.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.zza zzaVar) {
                    com.google.android.gms.nearby.connection.zzg zza = zzaxk.zza(zzawxVar.zzOp());
                    if (zza == null) {
                        Log.w("NearbyConnectionsClient", String.format("Failed to convert incoming ParcelablePayload %d to Payload.", Long.valueOf(zzawxVar.zzOp().getId())));
                    } else {
                        zzaVar.zza(zzawxVar.zzOf(), zza, zzawxVar.zzOq());
                    }
                }
            });
        }

        @Override // com.google.android.gms.internal.zzawg
        public void zza(final zzawz zzawzVar) {
            this.zzbyw.zza(new zze<Connections.zza>(this) { // from class: com.google.android.gms.internal.zzawb.zzb.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.zza zzaVar) {
                    zzawzVar.zzOf();
                    zzawzVar.zzOr();
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzc extends zzawh.zza {
        private final zzabh<Connections.ConnectionResponseCallback> zzbyA;

        public zzc(zzabh<Connections.ConnectionResponseCallback> zzabhVar) {
            this.zzbyA = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        }

        @Override // com.google.android.gms.internal.zzawh
        public void zza(final zzawp zzawpVar) {
            this.zzbyA.zza(new zze<Connections.ConnectionResponseCallback>(this) { // from class: com.google.android.gms.internal.zzawb.zzc.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.ConnectionResponseCallback connectionResponseCallback) {
                    connectionResponseCallback.onConnectionResponse(zzawpVar.zzOf(), new Status(zzawpVar.getStatusCode()), zzawpVar.zzOg());
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzd extends zzawi.zza {
        private final zzabh<Connections.EndpointDiscoveryListener> zzbyt;

        zzd(zzabh<Connections.EndpointDiscoveryListener> zzabhVar) {
            this.zzbyt = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        }

        @Override // com.google.android.gms.internal.zzawi
        public void zza(final zzawt zzawtVar) {
            this.zzbyt.zza(new zze<Connections.EndpointDiscoveryListener>(this) { // from class: com.google.android.gms.internal.zzawb.zzd.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.EndpointDiscoveryListener endpointDiscoveryListener) {
                    endpointDiscoveryListener.onEndpointFound(zzawtVar.zzOm(), zzawtVar.zzOn(), zzawtVar.zzOo());
                }
            });
        }

        @Override // com.google.android.gms.internal.zzawi
        public void zza(final zzawv zzawvVar) {
            this.zzbyt.zza(new zze<Connections.EndpointDiscoveryListener>(this) { // from class: com.google.android.gms.internal.zzawb.zzd.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.EndpointDiscoveryListener endpointDiscoveryListener) {
                    endpointDiscoveryListener.onEndpointLost(zzawvVar.zzOm());
                }
            });
        }

        @Override // com.google.android.gms.internal.zzawi
        public void zza(final zzaxf zzaxfVar) {
            this.zzbyt.zza(new zze<Connections.EndpointDiscoveryListener>(this) { // from class: com.google.android.gms.internal.zzawb.zzd.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(Connections.EndpointDiscoveryListener endpointDiscoveryListener) {
                    zzaxfVar.getReason();
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class zze<T> implements zzabh.zzc<T> {
        private zze() {
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzf extends zzawl.zza {
        private final zzaad.zzb<Status> zzaUC;

        zzf(zzaad.zzb<Status> zzbVar) {
            this.zzaUC = (zzaad.zzb) com.google.android.gms.common.internal.zzac.zzw(zzbVar);
        }

        @Override // com.google.android.gms.internal.zzawl
        public void zzlW(int i) {
            this.zzaUC.setResult(new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzg implements Connections.StartAdvertisingResult {
        private final Status zzahw;
        private final String zzbyF;

        zzg(Status status, String str) {
            this.zzahw = status;
            this.zzbyF = str;
        }

        @Override // com.google.android.gms.nearby.connection.Connections.StartAdvertisingResult
        public String getLocalEndpointName() {
            return this.zzbyF;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzahw;
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzh extends zzawm.zza {
        private final zzaad.zzb<Connections.StartAdvertisingResult> zzaUC;

        zzh(zzaad.zzb<Connections.StartAdvertisingResult> zzbVar) {
            this.zzaUC = (zzaad.zzb) com.google.android.gms.common.internal.zzac.zzw(zzbVar);
        }

        @Override // com.google.android.gms.internal.zzawm
        public void zza(zzaxb zzaxbVar) {
            this.zzaUC.setResult(new zzg(new Status(zzaxbVar.getStatusCode()), zzaxbVar.getLocalEndpointName()));
        }
    }

    public zzawb(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 54, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzbys = new zzaxh();
        this.zzbyr = hashCode();
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        if (isConnected()) {
            try {
                ((zzawk) zzxD()).zza(new zzavz());
            } catch (RemoteException e) {
                Log.w("NearbyConnectionsClient", "Failed to notify client disconnect.", e);
            }
        }
        this.zzbys.shutdown();
        super.disconnect();
    }

    public String zzOh() {
        try {
            return ((zzawk) zzxD()).zzaw(this.zzbyr);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public String zzOi() {
        try {
            return ((zzawk) zzxD()).zzOi();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public void zzOj() throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxv());
    }

    public void zzOk() throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxx());
    }

    public void zza(zzaad.zzb<Status> zzbVar, String str, long j, com.google.android.gms.nearby.connection.zze zzeVar, zzabh<Connections.EndpointDiscoveryListener> zzabhVar) throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxt(new zzf(zzbVar).asBinder(), new zzd(zzabhVar).asBinder(), str, j, zzeVar));
    }

    public void zza(zzaad.zzb<Connections.StartAdvertisingResult> zzbVar, String str, String str2, long j, com.google.android.gms.nearby.connection.zza zzaVar, zzabh<Connections.ConnectionRequestListener> zzabhVar) throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxr(new zzh(zzbVar).asBinder(), new zza(zzabhVar).asBinder(), str, str2, j, zzaVar));
    }

    public void zza(zzaad.zzb<Status> zzbVar, String str, String str2, byte[] bArr, zzabh<Connections.ConnectionResponseCallback> zzabhVar, zzabh<Connections.zza> zzabhVar2) throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxn(new zzf(zzbVar).asBinder(), new zzb(zzabhVar2).asBinder(), new zzc(zzabhVar).asBinder(), str, str2, bArr));
    }

    public void zza(zzaad.zzb<Status> zzbVar, String str, byte[] bArr, zzabh<Connections.zza> zzabhVar) throws RemoteException {
        ((zzawk) zzxD()).zza(new zzavx(new zzf(zzbVar).asBinder(), new zzb(zzabhVar).asBinder(), str, bArr));
    }

    public void zza(zzaad.zzb<Status> zzbVar, String[] strArr, com.google.android.gms.nearby.connection.zzg zzgVar, boolean z) throws RemoteException {
        try {
            Pair<zzaxi, Pair<ParcelFileDescriptor, ParcelFileDescriptor>> zza2 = zzaxk.zza(zzgVar);
            ((zzawk) zzxD()).zza(new zzaxp(new zzf(zzbVar).asBinder(), strArr, (zzaxi) zza2.first, z));
            if (zza2.second == null) {
                return;
            }
            Pair pair = (Pair) zza2.second;
            this.zzbys.zza(zzgVar.zzNX().zzOa(), new ParcelFileDescriptor.AutoCloseOutputStream((ParcelFileDescriptor) pair.first), new ParcelFileDescriptor.AutoCloseOutputStream((ParcelFileDescriptor) pair.second), zzgVar.getId());
        } catch (IOException e) {
            zzbVar.setResult(new Status(8013));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzeA */
    public zzawk zzh(IBinder iBinder) {
        return zzawk.zza.zzeG(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.nearby.internal.connection.INearbyConnectionService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.nearby.connection.service.START";
    }

    public void zzgl(String str) throws RemoteException {
        ((zzawk) zzxD()).zza(new zzawd(str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle bundle = new Bundle();
        bundle.putLong("clientId", this.zzbyr);
        return bundle;
    }

    public void zzsL() throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxz());
    }

    public void zzt(zzaad.zzb<Status> zzbVar, String str) throws RemoteException {
        ((zzawk) zzxD()).zza(new zzaxl(new zzf(zzbVar).asBinder(), str));
    }
}
