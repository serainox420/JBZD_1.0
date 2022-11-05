package com.google.android.gms.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzyn;
import com.google.android.gms.internal.zzyq;
import com.google.android.gms.internal.zzyv;
import com.google.android.gms.internal.zzyy;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class Cast {
    public static final int ACTIVE_INPUT_STATE_NO = 0;
    public static final int ACTIVE_INPUT_STATE_UNKNOWN = -1;
    public static final int ACTIVE_INPUT_STATE_YES = 1;
    public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
    public static final int MAX_MESSAGE_LENGTH = 65536;
    public static final int MAX_NAMESPACE_LENGTH = 128;
    public static final int STANDBY_STATE_NO = 0;
    public static final int STANDBY_STATE_UNKNOWN = -1;
    public static final int STANDBY_STATE_YES = 1;
    static final Api.zza<zzyq, CastOptions> zzaie = new Api.zza<zzyq, CastOptions>() { // from class: com.google.android.gms.cast.Cast.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzyq zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, CastOptions castOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb(castOptions, "Setting the API options is required.");
            return new zzyq(context, looper, zzgVar, castOptions.zzanf, castOptions.zzanh, castOptions.zzang, castOptions.extras, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<CastOptions> API = new Api<>("Cast.API", zzaie, zzyy.zzawy);
    public static final CastApi CastApi = new CastApi.zza();

    /* loaded from: classes2.dex */
    public interface ApplicationConnectionResult extends Result {
        ApplicationMetadata getApplicationMetadata();

        String getApplicationStatus();

        String getSessionId();

        boolean getWasLaunched();
    }

    /* loaded from: classes.dex */
    public interface CastApi {

        /* loaded from: classes.dex */
        public static final class zza implements CastApi {
            @Override // com.google.android.gms.cast.Cast.CastApi
            public int getActiveInputState(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyq) googleApiClient.zza(zzyy.zzawy)).getActiveInputState();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyq) googleApiClient.zza(zzyy.zzawy)).getApplicationMetadata();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public String getApplicationStatus(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyq) googleApiClient.zza(zzyy.zzawy)).getApplicationStatus();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public int getStandbyState(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyq) googleApiClient.zza(zzyy.zzawy)).getStandbyState();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public double getVolume(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyq) googleApiClient.zza(zzyy.zzawy)).getVolume();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyq) googleApiClient.zza(zzyy.zzawy)).isMute();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient) {
                return zza(googleApiClient, null, null, null);
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str) {
                return zza(googleApiClient, str, null, null);
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str, String str2) {
                return zza(googleApiClient, str, str2, null);
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, final String str) {
                return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.2
                    @Override // com.google.android.gms.cast.Cast.zza, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        try {
                            zzyqVar.zza(str, false, (zzaad.zzb<ApplicationConnectionResult>) this);
                        } catch (IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, final String str, final LaunchOptions launchOptions) {
                return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.3
                    @Override // com.google.android.gms.cast.Cast.zza, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        try {
                            zzyqVar.zza(str, launchOptions, this);
                        } catch (IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            @Deprecated
            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, boolean z) {
                return launchApplication(googleApiClient, str, new LaunchOptions.Builder().setRelaunchIfRunning(z).build());
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<Status> leaveApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.zzb((GoogleApiClient) new zzyv(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.5
                    @Override // com.google.android.gms.internal.zzyv, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        try {
                            zzyqVar.zzb(this);
                        } catch (IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) throws IOException, IllegalArgumentException {
                try {
                    ((zzyq) googleApiClient.zza(zzyy.zzawy)).removeMessageReceivedCallbacks(str);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public void requestStatus(GoogleApiClient googleApiClient) throws IOException, IllegalStateException {
                try {
                    ((zzyq) googleApiClient.zza(zzyy.zzawy)).requestStatus();
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, final String str, final String str2) {
                return googleApiClient.zzb((GoogleApiClient) new zzyv(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.1
                    @Override // com.google.android.gms.internal.zzyv, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        try {
                            zzyqVar.zza(str, str2, this);
                        } catch (IllegalArgumentException | IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException {
                try {
                    ((zzyq) googleApiClient.zza(zzyy.zzawy)).setMessageReceivedCallbacks(str, messageReceivedCallback);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public void setMute(GoogleApiClient googleApiClient, boolean z) throws IOException, IllegalStateException {
                try {
                    ((zzyq) googleApiClient.zza(zzyy.zzawy)).setMute(z);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public void setVolume(GoogleApiClient googleApiClient, double d) throws IOException, IllegalArgumentException, IllegalStateException {
                try {
                    ((zzyq) googleApiClient.zza(zzyy.zzawy)).setVolume(d);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<Status> stopApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.zzb((GoogleApiClient) new zzyv(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.6
                    @Override // com.google.android.gms.internal.zzyv, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        try {
                            zzyqVar.zza("", this);
                        } catch (IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, final String str) {
                return googleApiClient.zzb((GoogleApiClient) new zzyv(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.7
                    @Override // com.google.android.gms.internal.zzyv, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        if (TextUtils.isEmpty(str)) {
                            zze(2001, "IllegalArgument: sessionId cannot be null or empty");
                            return;
                        }
                        try {
                            zzyqVar.zza(str, this);
                        } catch (IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }

            public PendingResult<ApplicationConnectionResult> zza(GoogleApiClient googleApiClient, final String str, final String str2, final zzf zzfVar) {
                return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.cast.Cast.CastApi.zza.4
                    @Override // com.google.android.gms.cast.Cast.zza, com.google.android.gms.internal.zzaad.zza
                    public void zza(zzyq zzyqVar) throws RemoteException {
                        try {
                            zzyqVar.zza(str, str2, zzfVar, this);
                        } catch (IllegalStateException e) {
                            zzck(2001);
                        }
                    }
                });
            }
        }

        int getActiveInputState(GoogleApiClient googleApiClient) throws IllegalStateException;

        ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient) throws IllegalStateException;

        String getApplicationStatus(GoogleApiClient googleApiClient) throws IllegalStateException;

        int getStandbyState(GoogleApiClient googleApiClient) throws IllegalStateException;

        double getVolume(GoogleApiClient googleApiClient) throws IllegalStateException;

        boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException;

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient);

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str);

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str, String str2);

        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str);

        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, LaunchOptions launchOptions);

        @Deprecated
        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, boolean z);

        PendingResult<Status> leaveApplication(GoogleApiClient googleApiClient);

        void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) throws IOException, IllegalArgumentException;

        void requestStatus(GoogleApiClient googleApiClient) throws IOException, IllegalStateException;

        PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, String str, String str2);

        void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException;

        void setMute(GoogleApiClient googleApiClient, boolean z) throws IOException, IllegalStateException;

        void setVolume(GoogleApiClient googleApiClient, double d) throws IOException, IllegalArgumentException, IllegalStateException;

        PendingResult<Status> stopApplication(GoogleApiClient googleApiClient);

        PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, String str);
    }

    /* loaded from: classes.dex */
    public static final class CastOptions implements Api.ApiOptions.HasOptions {
        final Bundle extras;
        final CastDevice zzanf;
        final Listener zzang;
        private final int zzanh;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Bundle mExtras;
            CastDevice zzani;
            Listener zzanj;
            private int zzank;

            public Builder(CastDevice castDevice, Listener listener) {
                zzac.zzb(castDevice, "CastDevice parameter cannot be null");
                zzac.zzb(listener, "CastListener parameter cannot be null");
                this.zzani = castDevice;
                this.zzanj = listener;
                this.zzank = 0;
            }

            public CastOptions build() {
                return new CastOptions(this);
            }

            public Builder setVerboseLoggingEnabled(boolean z) {
                if (z) {
                    this.zzank |= 1;
                } else {
                    this.zzank &= -2;
                }
                return this;
            }

            public Builder zzk(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }
        }

        private CastOptions(Builder builder) {
            this.zzanf = builder.zzani;
            this.zzang = builder.zzanj;
            this.zzanh = builder.zzank;
            this.extras = builder.mExtras;
        }

        @Deprecated
        public static Builder builder(CastDevice castDevice, Listener listener) {
            return new Builder(castDevice, listener);
        }
    }

    /* loaded from: classes2.dex */
    public static class Listener {
        public void onActiveInputStateChanged(int i) {
        }

        public void onApplicationDisconnected(int i) {
        }

        public void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
        }

        public void onApplicationStatusChanged() {
        }

        public void onStandbyStateChanged(int i) {
        }

        public void onVolumeChanged() {
        }
    }

    /* loaded from: classes2.dex */
    public interface MessageReceivedCallback {
        void onMessageReceived(CastDevice castDevice, String str, String str2);
    }

    /* loaded from: classes2.dex */
    static abstract class zza extends zzyn<ApplicationConnectionResult> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzyq zzyqVar) throws RemoteException {
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzo */
        public ApplicationConnectionResult zzc(final Status status) {
            return new ApplicationConnectionResult(this) { // from class: com.google.android.gms.cast.Cast.zza.1
                @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
                public ApplicationMetadata getApplicationMetadata() {
                    return null;
                }

                @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
                public String getApplicationStatus() {
                    return null;
                }

                @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
                public String getSessionId() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
                public boolean getWasLaunched() {
                    return false;
                }
            };
        }
    }

    private Cast() {
    }
}
