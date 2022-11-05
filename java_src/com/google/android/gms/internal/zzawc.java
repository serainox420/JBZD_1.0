package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.nearby.Nearby;
import com.google.android.gms.nearby.connection.AppMetadata;
import com.google.android.gms.nearby.connection.Connections;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzawc implements Connections {
    public static final Api.zzf<zzawb> zzaid = new Api.zzf<>();
    public static final Api.zza<zzawb, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzawb, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzawc.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzs */
        public zzawb zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzawb(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };

    /* loaded from: classes2.dex */
    private static abstract class zza<R extends Result> extends zzaad.zza<R, zzawb> {
        public zza(GoogleApiClient googleApiClient) {
            super(Nearby.CONNECTIONS_API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class zzb extends zza<Connections.StartAdvertisingResult> {
        private zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzby */
        public Connections.StartAdvertisingResult zzc(final Status status) {
            return new Connections.StartAdvertisingResult(this) { // from class: com.google.android.gms.internal.zzawc.zzb.1
                @Override // com.google.android.gms.nearby.connection.Connections.StartAdvertisingResult
                public String getLocalEndpointName() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class zzc extends zza<Status> {
        private zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    private static Connections.zza zza(final Connections.MessageListener messageListener) {
        return new Connections.zza() { // from class: com.google.android.gms.internal.zzawc.7
            @Override // com.google.android.gms.nearby.connection.Connections.zza
            public void onDisconnected(String str) {
                Connections.MessageListener.this.onDisconnected(str);
            }

            @Override // com.google.android.gms.nearby.connection.Connections.zza
            public void zza(String str, com.google.android.gms.nearby.connection.zzg zzgVar, boolean z) {
                if (zzgVar.getType() != 1) {
                    return;
                }
                Connections.MessageListener.this.onMessageReceived(str, zzgVar.zzNV(), z);
            }
        };
    }

    private static zzawb zzk(GoogleApiClient googleApiClient) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient != null, "GoogleApiClient parameter is required.");
        com.google.android.gms.common.internal.zzac.zza(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        com.google.android.gms.common.internal.zzac.zza(googleApiClient.zza(Nearby.CONNECTIONS_API), "GoogleApiClient is not configured to use the Nearby Connections Api. Pass Nearby.CONNECTIONS_API into GoogleApiClient.Builder#addApi() to use this feature.");
        if (!googleApiClient.hasConnectedApi(Nearby.CONNECTIONS_API)) {
            throw new IllegalStateException("GoogleApiClient has an optional Nearby.CONNECTIONS_API and is not connected to Nearby Connections. Use GoogleApiClient.hasConnectedApi(Nearby.CONNECTIONS_API) to guard this call.");
        }
        return (zzawb) googleApiClient.zza(zzaid);
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public PendingResult<Status> acceptConnectionRequest(GoogleApiClient googleApiClient, String str, byte[] bArr, Connections.MessageListener messageListener) {
        return zza(googleApiClient, str, bArr, zza(messageListener));
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void disconnectFromEndpoint(GoogleApiClient googleApiClient, final String str) {
        googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zzgl(str);
            }
        });
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public String getLocalDeviceId(GoogleApiClient googleApiClient) {
        return zzk(googleApiClient).zzOi();
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public String getLocalEndpointId(GoogleApiClient googleApiClient) {
        return zzk(googleApiClient).zzOh();
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public PendingResult<Status> rejectConnectionRequest(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.14
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zzt(this, str);
            }
        });
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public PendingResult<Status> sendConnectionRequest(GoogleApiClient googleApiClient, String str, String str2, byte[] bArr, Connections.ConnectionResponseCallback connectionResponseCallback, Connections.MessageListener messageListener) {
        return zza(googleApiClient, str, str2, bArr, connectionResponseCallback, zza(messageListener));
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void sendReliableMessage(GoogleApiClient googleApiClient, final String str, final byte[] bArr) {
        googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.15
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza((zzaad.zzb<Status>) this, new String[]{str}, com.google.android.gms.nearby.connection.zzg.zzB(bArr), true);
            }
        });
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void sendReliableMessage(GoogleApiClient googleApiClient, final List<String> list, final byte[] bArr) {
        googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza((zzaad.zzb<Status>) this, (String[]) list.toArray(new String[0]), com.google.android.gms.nearby.connection.zzg.zzB(bArr), true);
            }
        });
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void sendUnreliableMessage(GoogleApiClient googleApiClient, String str, byte[] bArr) {
        zza(googleApiClient, str, com.google.android.gms.nearby.connection.zzg.zzB(bArr));
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void sendUnreliableMessage(GoogleApiClient googleApiClient, List<String> list, byte[] bArr) {
        zza(googleApiClient, list, com.google.android.gms.nearby.connection.zzg.zzB(bArr));
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public PendingResult<Connections.StartAdvertisingResult> startAdvertising(GoogleApiClient googleApiClient, String str, AppMetadata appMetadata, long j, Connections.ConnectionRequestListener connectionRequestListener) {
        return zza(googleApiClient, str, "__LEGACY_SERVICE_ID__", j, connectionRequestListener, new com.google.android.gms.nearby.connection.zza(com.google.android.gms.nearby.connection.zzj.zzbyj));
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public PendingResult<Status> startDiscovery(GoogleApiClient googleApiClient, String str, long j, Connections.EndpointDiscoveryListener endpointDiscoveryListener) {
        return zza(googleApiClient, str, j, endpointDiscoveryListener, new com.google.android.gms.nearby.connection.zze(com.google.android.gms.nearby.connection.zzj.zzbyj));
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void stopAdvertising(GoogleApiClient googleApiClient) {
        googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zzOj();
            }
        });
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void stopAllEndpoints(GoogleApiClient googleApiClient) {
        googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zzOk();
            }
        });
    }

    @Override // com.google.android.gms.nearby.connection.Connections
    public void stopDiscovery(GoogleApiClient googleApiClient, String str) {
        zzl(googleApiClient);
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final String str, final long j, Connections.EndpointDiscoveryListener endpointDiscoveryListener, final com.google.android.gms.nearby.connection.zze zzeVar) {
        final zzabh zzr = googleApiClient.zzr(endpointDiscoveryListener);
        return googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza(this, str, j, zzeVar, zzr);
            }
        });
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final String str, final com.google.android.gms.nearby.connection.zzg zzgVar) {
        return googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza((zzaad.zzb<Status>) this, new String[]{str}, zzgVar, false);
            }
        });
    }

    public PendingResult<Connections.StartAdvertisingResult> zza(GoogleApiClient googleApiClient, final String str, final String str2, final long j, Connections.ConnectionRequestListener connectionRequestListener, final com.google.android.gms.nearby.connection.zza zzaVar) {
        final zzabh zzr = googleApiClient.zzr(connectionRequestListener);
        return googleApiClient.zzb((GoogleApiClient) new zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza(this, str, str2, j, zzaVar, zzr);
            }
        });
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final String str, final String str2, final byte[] bArr, Connections.ConnectionResponseCallback connectionResponseCallback, Connections.zza zzaVar) {
        final zzabh zzr = googleApiClient.zzr(connectionResponseCallback);
        final zzabh zzr2 = googleApiClient.zzr(zzaVar);
        return googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.12
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza(this, str, str2, bArr, zzr, zzr2);
            }
        });
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final String str, final byte[] bArr, Connections.zza zzaVar) {
        final zzabh zzr = googleApiClient.zzr(zzaVar);
        return googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.13
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza(this, str, bArr, zzr);
            }
        });
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final List<String> list, final com.google.android.gms.nearby.connection.zzg zzgVar) {
        return googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zza((zzaad.zzb<Status>) this, (String[]) list.toArray(new String[0]), zzgVar, false);
            }
        });
    }

    public void zzl(GoogleApiClient googleApiClient) {
        googleApiClient.zzb((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzawc.11
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzawb zzawbVar) throws RemoteException {
                zzawbVar.zzsL();
            }
        });
    }
}
